["ModuleCurator_F", "initPost",
	{
		params ["_module"];

		_module addEventHandler
		["CuratorPinged",
			{
				params ["_curator", "_unit"];

				private _zeus = getAssignedCuratorUnit _curator;

				if (isNull _zeus) then
				{
					unassignCurator _curator;
					deleteVehicle _curator;
				}
				else
				{
					if (_zeus == player) then
					{
						systemChat format ["%1 just pinged", name _unit];
						format ["Ping received by %1", name player] remoteExec ["systemChat", _unit];
					};
				};
			}
		];
	}, false, [], true
] call CBA_fnc_addClassEventHandler;


if !(hasInterface) exitWith {};
waitUntil {!isNull player};

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

if (enableCuratedArsenal) then
{
	player call pca_fnc_curatedArsenal;
};

if (enableMedicalHelpNotification) then
{
	[] execVM "functions\player\medicalHelpNotification.sqf";
};

if (enablePlayerEventHandler) then
{
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

if (enableJIPTeleport && {didJIP}) then
{
	[] execVM "functions\player\jipTeleport.sqf";
};


if (ab_enableBanana && {
    ace_advanced_fatigue_enabled && {
    !isClass (configFile >> "ace_medical_treatment_actions" >> "AdministerBanana")}}
) then {
	private _action =
	[
		"ab_banamina","Administer Banana","\z\ace\addons\common\data\icon_banana_ca.paa",
		ab_fnc_banamina,
		{ params["_target", "_player"];
			//isPlayer _target && {
              !(_target getVariable ["ab_boostActive", false]) && {
              [_player, "ACE_Banana"] call ace_common_fnc_hasItem}
            //}
		},
		{},
		[],
		[0,0,0],
		ace_medical_gui_maxDistance,
		[false, true, false, false, true],
        {}
	] call ace_interact_menu_fnc_createAction;
    if (ace_medical_gui_enableSelfActions isEqualTo false) then {
	    ["CAManBase", 1, ["ACE_SelfActions","ACE_Equipment"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    };
    if (ace_medical_gui_enableSelfActions isEqualTo true) then {
	    ["CAManBase", 1, ["ACE_SelfActions","ACE_Medical","ACE_Head"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    };

    if (ace_medical_gui_enableActions isEqualTo 2) then {
	    ["CAManBase", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    };
	    ["CAManBase", 0, ["ACE_MainActions","ACE_Medical_Radial","ACE_Head"], _action, true] call ace_interact_menu_fnc_addActionToClass;
	    ["CAManBase", 0, ["ACE_Head"], _action, true] call ace_interact_menu_fnc_addActionToClass;
};

tmf_acre2_radioCoreSettings = [[["ACRE_PRC343"],2400,2420,0.01,0.1,"default2"],[["ACRE_BF888S"],420,450,0.025,1,"default"],[["ACRE_PRC148","ACRE_PRC152","ACRE_PRC117F"],60,360,0.00625,1,"default"],[["ACRE_SEM52SL"],46,64,0.025,1,"default"],[["ACRE_PRC77"],30,75,0.05,10,"default"]];

acre_sys_radio_defaultRadio = "ACRE_BF888S";