params ["_unit"];

// Prevent dirty JIP.
if (time > 0) exitWith {};

[_unit] spawn {
	params ["_unit"];
	waitUntil{!isNil "playerList"};
	playerList pushBack _unit;
	waitUntil{!isNil "alivePlayerList"};
	alivePlayerList pushBack _unit;
};


if (isServer) then {
	[{!isNil "locationChoosen" && time > 0}, {
		params ["_unit"];
		_unit setPos ([_unit] call qry_fnc_findPlayerSpawnPos);
	}, [_unit]] call CBA_fnc_waitUntilAndExecute;
};

//Add death handler

if (local _unit) then {
	// tweak the gear...
	// Backpacks
	_unit addMPEventHandler ["mpkilled","_this call qry_fnc_civKilled;"];
	
	removeAllWeapons _unit;
	_unit removeItem "ItemRadio";
	
	// Bino
	
	// Satchel
	//Vanilla - Arma 3
	private _uniforms = ["U_Rangemaster","U_C_Poloshirt_tricolour","U_C_Poloshirt_salmon","U_C_Poloshirt_burgundy","U_C_Poloshirt_blue","U_OrestesBody","U_Competitor","U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_2","U_IG_Guerilla3_1","U_IG_Guerilla3_2","U_IG_leader","U_C_HunterBody_grn","U_I_G_resistanceLeader_F","U_C_Driver_3","U_C_Journalist","U_Marshal","U_NikosBody","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F"];
	private _headgears = ["H_Booniehat_khk","H_Cap_red","H_Cap_tan","H_Cap_blk","H_Cap_grn_BI","H_Bandanna_surfer","H_Bandanna_khk","H_Bandanna_camo","H_Shemag_khk","H_Shemag_olive","H_Beret_blk","H_Watchcap_blk","H_StrawHat","H_Hat_brown","H_Hat_checker","H_Cap_blk_ION","H_RacingHelmet_1_black_F","H_StrawHat_dark"];
	private _vests = ["V_Rangemaster_belt","V_BandollierB_khk","V_BandollierB_rgr"];	
	private _backpacks = ["B_AssaultPack_khk","B_AssaultPack_rgr","B_AssaultPack_blk","B_AssaultPack_cbr","B_Kitbag_rgr","B_Kitbag_cbr","B_Kitbag_sgg","B_TacticalPack_blk","B_Carryall_khk","B_FieldPack_cbr","B_FieldPack_khk","B_TacticalPack_oli"];
	// DLc
	_uniforms append ["U_C_ConstructionCoverall_Blue_F","U_C_IDAP_Man_Jeans_F"];
	_backpacks append ["B_Messenger_Black_F","B_Messenger_Coyote_F","B_Messenger_Gray_F","B_Messenger_Olive_F","B_LegStrapBag_black_F","B_LegStrapBag_coyote_F","B_LegStrapBag_olive_F"];
	_headgears append ["H_WirelessEarpiece_F","H_Hat_Safari_sand_F","H_Construction_basic_yellow_F","H_Construction_earprot_red_F","H_Construction_basic_black_F","H_EarProtectors_yellow_F","H_HeadBandage_clean_F","H_HeadBandage_bloody_F"];
	
	
	_uniforms append ["CUP_U_C_Citizen_01","CUP_U_C_Citizen_02","CUP_U_C_Citizen_03","CUP_U_C_Citizen_04","CUP_U_C_Woodlander_01","CUP_U_C_Woodlander_02","CUP_U_C_Woodlander_03","CUP_U_C_Woodlander_04","CUP_U_C_Worker_01","CUP_U_C_Worker_02","CUP_U_C_Worker_03","CUP_U_C_Worker_04","CUP_U_C_Villager_01","CUP_U_C_Villager_02","CUP_U_C_Villager_03","CUP_U_C_Villager_04","CUP_U_C_Profiteer_01","CUP_U_C_Profiteer_02","CUP_U_C_Profiteer_03","CUP_U_C_Profiteer_04","CUP_U_I_GUE_Flecktarn2", "CUP_U_C_Labcoat_02", "CUP_U_C_Labcoat_03", "CUP_U_C_Suit_01", "CUP_U_C_Suit_02", "CUP_U_C_Rocker_01", "CUP_U_C_Rocker_02", "CUP_U_C_Rocker_04", "CUP_U_C_Priest_01","CUP_U_C_Fireman_01","CUP_U_C_Mechanic_03","CUP_U_C_Mechanic_02","CUP_U_O_SLA_Overalls_Tank","CUP_U_I_GUE_Anorak_01","CUP_U_I_GUE_Anorak_02","CUP_U_I_GUE_Anorak_03","CUP_I_B_PMC_Unit_2","CUP_I_B_PMC_Unit_1","CUP_I_B_PMC_Unit_4","CUP_I_B_PMC_Unit_3","CUP_U_O_SLA_Overalls_Pilot","CUP_U_O_SLA_Overalls_Tank"];
	_headgears append ["CUP_H_PMC_Cap_Burberry","CUP_H_PMC_Cap_Back_Tan","rds_Profiteer_cap4","rds_Profiteer_cap1","rds_Profiteer_cap2","rds_Profiteer_cap3","rds_Villager_cap1","rds_Villager_cap2","rds_worker_cap1","rds_worker_cap2","rds_worker_cap3","rds_worker_cap4","CUP_H_C_Ushanka_03","CUP_H_C_Ushanka_04"];
	
	removeUniform _unit;
	removeheadgear _unit;
	_unit forceAddUniform (selectRandom _uniforms);
	
	_unit addHeadgear (selectRandom _headgears);
	
	if (random 1 > 0.2) then { // either backpack or a vest
		_unit addBackpack (selectRandom _backpacks);
		//[[[_unit,_backpacks call BIS_fnc_selectRandom], {(_this select 0) addBackpack (_this select 1);}], "BIS_fnc_spawn", true] call BIS_fnc_MP;  
	} else {
		_unit addvest(selectRandom _vests);
	};
	// give a bonus headgear.
	_unit addItem (selectRandom _headgears);
	// new format
	// Uniform, Vest, backpack, headgear, goggles
	//["U_C_ConstructionCoverall_Black_F","V_Safety_yellow_F","B_Messenger_Gray_F","H_Construction_basic_white_F","G_EyeProtectors_F"] // Construction
	
	
	if (isClass(configFile >> "CfgPatches" >> "ace_hearing")) then {
		_unit setVariable ["ACE_hasEarPlugsIn", true, true];
	};
	_unit linkItem "ItemGPS";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";

	private _gearOptions = [
		["hgun_ACPC2_F","9Rnd_45ACP_Mag"],
		["hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag"],
		["hgun_Rook40_F","16Rnd_9x21_Mag"],
		["hgun_Pistol_heavy_02_F","6Rnd_45ACP_Cylinder"]
	];
	(selectRandom _gearOptions) params ["_pistol","_magazine"];
	_unit addmagazine "Chemlight_yellow";
	_unit addmagazine "SatchelCharge_Remote_Mag";
	_unit addweapon _pistol; 
	_unit addmagazines [_magazine,4];
};