/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

_radioStateMachine = [missionConfigFile >> "DNV_RadioSM"] call CBA_statemachine_fnc_createFromConfig;

{
	if (triggerText _x == "USCF_Patrol") then {
		_x spawn {
        
			_basePos = position _this;
			_wpPath = group ((synchronizedObjects _this) select 0);	// synchronized civilian unit is used as waypoint storage
			deleteVehicle ((synchronizedObjects _this) select 0);
			deleteVehicle _this;

			waitUntil {sleep 2.5; ({(_x distance _basePos) < 600} count allPlayers > 0)};
            
            private _pG = [ 
                _basePos, 
                resistance, 
                [ 
                    "CUP_I_PMC_Soldier_TL",  
                    (selectRandomWeighted ["CUP_I_PMC_Bodyguard_AA12",3,"CUP_I_PMC_Soldier_AT",1]),
                    "CUP_I_PMC_Soldier_MG_PKM",  
                    "CUP_I_PMC_Contractor1", 
                    "CUP_I_PMC_Contractor1", 
                    "CUP_I_PMC_Contractor1" 
                ]
            ] call BIS_fnc_spawnGroup; 

			_pG copyWaypoints _wpPath;
			deleteGroup _wpPath;

			_pG enableDynamicSimulation true;
            _pG deleteGroupWhenEmpty true;
            _pG setCombatBehaviour "SAFE";
            
            _pG setVariable ["lambs_danger_enableGroupReinforce", true, true];
		};
	};
} forEach (allMissionObjects "EmptyDetector");

supplyCrateContents = [
	["ACE_fieldDressing", 72],
    ["ACE_packingBandage", 72],
    ["ACE_elasticBandage", 24],
    ["ACE_tourniquet", 5],
    ["ACE_splint", 10],
    ["ACE_epinephrine", 20],
    ["ACE_morphine", 20],
    ["ACE_bloodIV", 18],
    ["ACE_plasmaIV_500", 18],
    ["ACE_salineIV_250", 6],
    ["ACE_personalAidKit", 2],
	["rhs_mag_m67", 40],
	["SmokeShell", 40],
	["rhs_mag_M441_HE", 40],
	["rhs_mag_m714_White", 40],
    ["rhs_mag_30Rnd_556x45_M855_Stanag", 150],
    ["pca_mag_100Rnd_556x45_M855_mixed_soft_pouch_od", 50],
	["rhs_weap_m72a7", 4],
    ["ace_dragon_super", 1]
];