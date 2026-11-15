enableSaving [false, false];


// Event handler for death.
playerList = [];// civ1, civ2, civ3, civ4, civ5, civ6, civ7, civ8, civ9, civ10, civ11, civ12, civ13];
// now populated from the init.
// Construct playerList
alivePlayerList = [];
Target = objNull;
myTargetList = [];

attackerTargetList = [];



fn_marker = compile preprocessFileLineNumbers "markerSystem.sqf";
fn_moveobj = compile preprocessFileLineNumbers "functions\shk_moveobjects.sqf";
disableRemoteSensors true;
if (isServer) then {
		// Weather
	private _date = date;
	_date set [3,selectRandom [7,8,9,10,11,12,13,14,16,17,18]]; // Random hour between 8 and 6pm
	_date set [4,0];
	_date set [5,0];

	// ====================================================================================

	// SET DATE FOR ALL CLIENTS
	// Using a BIS function we share the new date across the network
	[_date,true,false] call BIS_fnc_setDate;
	
	//Random weather
	[] call compile preprocessFile 'functions\weather.sqf';



};