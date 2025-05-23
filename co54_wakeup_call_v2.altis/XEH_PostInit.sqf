["ModuleCurator_F", "initPost",
	{
		params ["_module"];

		_module addEventHandler
		["CuratorPinged",
			{
				params ["_curator", "_unit"];

				private _zeus = getAssignedCuratorUnit _curator;

				if (isNull _zeus) then {
					unassignCurator _curator;
					deleteVehicle _curator;
				} else {
					if (_zeus == player) then {
						systemChat format ["%1 just pinged", name _unit];
						format ["Ping received by %1", name player] remoteExec ["systemChat", _unit];
					};
				};
			}
		];
	}, false, [], true
] call CBA_fnc_addClassEventHandler;

if !(hasInterface) exitWith {};
waitUntil {
	!isNull player
};

/*
	"ColorCorrections" ppEffectEnable true;
	"ColorCorrections" ppEffectAdjust
	[
		1.04, 
		1.02, 
		-0.02, 
		[0.1, 0.4, 0.4, 0.04], 
		[1, 1, 1, 1.04], 
		[0.299, 0.587, 0.114, 0]
	];
	
	"ColorCorrections" ppEffectCommit 0;
*/

if (enableCuratedArsenal) then {
	player call pca_fnc_curatedArsenal;
};

if (enableMedicalHelpNotification) then {
	[] execVM "functions\player\medicalHelpNotification.sqf";
};

if (enablePlayerEventHandler) then {
	player addEventHandler
	["Explosion",
		{
			_this spawn pca_fnc_explosionEH;
		}
	];

	player addEventHandler
	["Hit",
		{
			_this spawn pca_fnc_hitEH;
		}
	];
};

if (enableJIPTeleport && {
	didJIP
}) then
{
	[] execVM "functions\player\jipTeleport.sqf";
};

is_swimming = {
	animationState _this select [1, 3] in ["bdv", "bsw", "dve", "sdv", "ssw", "swm"]
};

_actionId = player addAction [
	"Teleport to deck",
	{
		params ["_target", "", "_actionId"];
		_target setPosASL (_target getVariable ["startPos", (getPosASL swim_teleport_setup)]);
	},
	nil, // arguments
	1.5, // priority
	true, // showWindow
	true, // hideOnUse
	"", // shortcut
	"_target call is_swimming"
];

player setVariable ["teleport_action_id", _actionId];
