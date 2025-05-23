//(c) HazJ https://forums.bohemia.net/forums/topic/215550-release-download-data-from-end-game/
//(c) Modified from Toiton's MP Compat verison of the Data Terminal script.

/* USAGE GUIDE (by veer)

Mission Setup:
Place the data terminal (Land_DataTerminal_01_F for maximum authenticity) in the mission. In its init field, call the following:
	this execVM "dataTerminalDownload.sqf";

Customization:
- Change the speed of the bar by changing the number on line 73, bigger number = faster progress
- Change the name of the action added on line 136
- Change the addAction display parameters on line 141
- Change the in-progress display text in rsc_downloadingData.hpp line 42

*/

disableSerialization;

params ["_terminal"];

download_begin = 
{
	params ["_terminal"];

	private _downloader = _terminal getVariable ["download_unit",objNull];
	if (!isNull _downloader) exitWith 
	{
		hint "Someone is already using the terminal!";
	};

	_downloader = player;
	_terminal setVariable ["download_unit",_downloader,true];

	private _keptProgress = missionNamespace getVariable ["download_progress_keep",[]];
	if ((side _downloader) in _keptProgress) then 
	{
		_terminal setVariable ["download_progress",_keptProgress select 0,true];
	} else 
	{
		_terminal setVariable ["download_progress",0,true];
	};

	
	_terminal remoteExec ["download_timer_on",2];
	_terminal remoteExec ["download_display_on"];
	[_terminal,3] call BIS_fnc_dataTerminalAnimate;
};

download_timer_on = 
{
	params ["_terminal"];

	[download_timer, 1, _terminal] call CBA_fnc_addPerFrameHandler;
};

download_timer = 
{
	(_this select 0) params ["_terminal"];

	private _downloader = _terminal getVariable "download_unit";
	private _progress = _terminal getVariable "download_progress";
  	private _tick = _terminal getVariable ["download_tick", false];
	if (!alive _downloader || _downloader getVariable ["ACE_isUnconscious",false] || {(_downloader distance2d _terminal) > 200}) exitWith 
	{
		missionNamespace setVariable ["download_progress_keep", [_progress,side _downloader], true];
		[_this select 1] call CBA_fnc_removePerFrameHandler;
		[] remoteExec ["download_display_off"];
		_terminal setVariable ["download_unit", objNull, true];
		[_terminal,0] call BIS_fnc_dataTerminalAnimate;
	};
	
	private _enemyNear = ((_terminal nearEntities ["CAManBase",40]) findIf {side _x == east}) != -1;
	if (!_enemyNear && !_tick) then 
	{
		_progress = _progress + 1;
		_terminal setVariable ["download_tick",true];
		_terminal setVariable ["download_progress",_progress,true];
	};
	if(_tick) then 
	{
		_terminal setVariable ["download_tick",false];
	};
	if (_progress >99) then 
	{
		[] remoteExec ["download_display_off"];
	};
};

download_display_handler = 
{
	(_this select 0) params ["_terminal"];

	private _progress = _terminal getVariable ["download_progress",0];

	private _display = uiNamespace getVariable "disp_downloadingData";
	(_display displayCtrl 400) progressSetPosition (_progress/100);
	(_display displayCtrl 500) ctrlSetText format ["%1%2",_progress,"%"];

	if (_progress >= 100) then 
	{
		[_this select 1] call CBA_fnc_removePerFrameHandler;
		//set task to be complete
		["t_diag", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	};
};

download_display_on = 
{
	if !(hasInterface) exitWith {};

	params ["_terminal"];

	("layer_rsc_downloadingData" call BIS_fnc_rscLayer) cutRsc ["rsc_downloadingData","PLAIN",0.01,false];

	if ((missionNamespace getVariable ["download_pfhid",-1]) != -1) exitWith {};

	download_pfhid = [download_display_handler,1,_terminal] call CBA_fnc_addPerFrameHandler;

	private _display = uiNamespace getVariable "disp_downloadingData";
	(_display displayCtrl 700) ctrlSetTextColor ([side (_terminal getVariable ["download_unit",objNull])] call BIS_fnc_sideColor);
};

download_display_off = 
{
	if !(hasInterface) exitWith {};

	[download_pfhid] call CBA_fnc_removePerFrameHandler;
	download_pfhid = -1;

	("layer_rsc_downloadingData" call BIS_fnc_rscLayer) cutText ["","PLAIN"];
};

waitUntil {time > 2};
if (hasInterface) then 
{
	waitUntil {!isNull player && player == player};
};

_terminal addAction ["START DIAGNOSTICS", 
{
	params ["_target"];
	_target call download_begin;
}, nil, 99, false, true, "", "isNull (_target getVariable ['download_unit',objNull]) && [_this] call ace_common_fnc_isEngineer && !alive obj_jammer"]; //only Engineers can use terminal