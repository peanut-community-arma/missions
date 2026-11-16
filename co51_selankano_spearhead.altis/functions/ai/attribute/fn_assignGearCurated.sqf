/**
	Alternative gear assignment method — for finer tuning on equipment randomizations.
	
	Parameters:
	0: unit <OBJECT>
	1: chance to add backpack <NUMBER> <DEFAULT: 50>
	2: chance to add face wear <NUMBER> <DEFAULT: 50>
	3: force changes unit's identity <BOOL> <DEFAULT: TRUE>
	4: force changes unit's primary weapons <BOOL> <DEFAULT: TRUE>
	
	Example:
	[bob, 50, 50, true, true] spawn pca_fnc_assignGearCurated;
	
	Returns: 
	NONE
*/

params [["_unit", objNull, [objNull]], ["_backpackChance", 50], ["_facewearChance", 50], ["_setIdentity", true], ["_setWeapon", true]];

//Exit if unit is null or not local
if (isNull _unit || {!local _unit}) exitWith {};

private _unitRole = _unit getVariable ["tmf_assignGear_role", nil];
private _unitRoleCommon = ["rm","rm_lat","rm_mat", "medic", "engineer"];
private _unitRoleForceBackpack = ["rm_mat", "medic", "engineer"];

_unit setVariable ["ace_medical_damageThreshold", (random [0.8, 1, 1.2]), true];
_unit setVariable ["BIS_enableRandomization", false];
removeGoggles _unit;

[_unit, 5] call pca_fnc_setUnitSkills;
_unit call pca_fnc_unlimitedAmmo;

private _uniformPoolWeighted = "pca_g3_gliz";

private _vestPoolWeighted = "V_TacVest_grn";

private _headgearPoolWeighted = selectRandomWeighted
[
	"pca_opscore_cover_geo", 2,
	"pca_opscore_cover_ct_geo", 2,
	"pca_opscore_cover_ct_cw_geo", 1
];

private _backpackPoolWeighted = selectRandomWeighted
[
	"B_Carryall_green_F", 1,
	"B_FieldPack_green_F", 2,
	"rhsusf_falconii", 2
];

private _facewearPoolWeighted = selectRandomWeighted 
[
	"rhsusf_shemagh_grn", 1,
	"rhsusf_shemagh2_grn", 1,
	"rhsusf_shemagh_od", 1,
	"rhsusf_shemagh2_od", 1,
	"CUP_FR_NeckScarf", 1,
	"$REMOVE_usm_scarf2$", 1,
	"$REMOVE_usm_scarf2$", 1,
	"CUP_TK_NeckScarf", 3
];

private _eyewearPoolWeighted = selectRandomWeighted 
[
	"$NONE_pca_nvg_glasses_blk$", 1,
	"$NONE_pca_nvg_glasses_clr$", 1,
	"$NONE_pca_nvg_ess_blk$", 3
];

//ADD UNIFORM
_unit forceAddUniform _uniformPoolWeighted;
//ADD VEST
_unit addVest _vestPoolWeighted;
//ADD HEADGEAR
_unit addHeadgear _headgearPoolWeighted;
//ADD BACKPACK
if (_unitRole in _unitRoleForceBackpack) then 
{
	_unit addBackpack _backpackPoolWeighted;
	
	if (_unitRole == "rm_mat") then 
	{
		_unit addWeapon "launch_RPG32_black_F";
		_unit addWeaponItem ["launch_RPG32_black_F", "RPG32_F", true];
		for "_i" from 1 to (ceil (random [2,3,4])) do {_unit addItemToBackpack "RPG32_F";};
	};
}
else
{
	if (random 100 > _backpackChance) then 
	{
		_unit addBackpack _backpackPoolWeighted;
	};
};

//ADD GOGGLES
if (random 100 > _facewearChance) then 
{
	_unit addGoggles _facewearPoolWeighted;
};

//ADD EYEWEAR
if (random 100 > _facewearChance) then 
{
	_unit linkItem _eyewearPoolWeighted;
};

if (_setIdentity) then 
{
	private _facePoolWeighted = selectRandomWeighted
	[
		"GreekHead_A3_01", 1,
		"GreekHead_A3_02", 1,
		"GreekHead_A3_05", 1,
		"GreekHead_A3_06", 1,
		"GreekHead_A3_07", 1,
		"GreekHead_A3_08", 1,
		"GreekHead_A3_09", 1,
		"GreekHead_A3_11", 1,
		"GreekHead_A3_12", 1,
		"GreekHead_A3_13", 1,
		"GreekHead_A3_14", 1,
		"WhiteHead_01", 1,
		"WhiteHead_02", 1,
		"WhiteHead_03", 1,
		"WhiteHead_04", 1,
		"WhiteHead_05", 1,
		"WhiteHead_06", 1,
		"WhiteHead_07", 1,
		"WhiteHead_08", 1,
		"WhiteHead_09", 1,
		"WhiteHead_10", 1,
		"WhiteHead_11", 1,
		"WhiteHead_12", 1,
		"WhiteHead_13", 1,
		"WhiteHead_14", 1,
		"WhiteHead_15", 1,
		"WhiteHead_16", 1,
		"WhiteHead_17", 1,
		"WhiteHead_18", 1,
		"WhiteHead_19", 1,
		"WhiteHead_20", 1,
		"WhiteHead_21", 1,
		"WhiteHead_23", 1,
		"WhiteHead_24", 1,
		"WhiteHead_25", 1,
		"WhiteHead_26", 1,
		"WhiteHead_27", 1,
		"WhiteHead_28", 1,
		"WhiteHead_29", 1,
		"WhiteHead_30", 1,
		"WhiteHead_31", 1,
		"WhiteHead_32", 1
	];
	
	[_unit, _facePoolWeighted] remoteExec ["setFace", 0, _unit];
};

switch (_setWeapon) do 
{
	case (_unitRole in _unitRoleCommon) : 
	{
		private _weapon = "arifle_TRG21_F";
		private _weaponMag = "30Rnd_556x45_Stanag_red";
		private _optic = "CUP_optic_TrijiconRx01_od";
		
		_unit addWeapon _weapon;
		_unit addPrimaryWeaponItem _optic;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 8 do {_unit addItemToVest _weaponMag};
	};
	case (_unitRole == "ar") : 
	{
		private _weapon = "LMG_Mk200_black_F";
		private _weaponMag = "ACE_200Rnd_65x39_cased_Box_red";
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 2 do {_unit addItemToVest _weaponMag};
	};
	case (_unitRole == "mg") : 
	{
		private _weapon = "CUP_lmg_MG3_rail";
		private _weaponMag =  selectRandomWeighted 
		[
			"hlc_100Rnd_762x51_M_MG3", 4,
			"hlc_100Rnd_762x51_T_MG3", 1
		];
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 2 do {_unit addItemToVest _weaponMag};
	};
	default 
	{
		private _weapon = "arifle_TRG21_F";
		private _weaponMag = "30Rnd_556x45_Stanag_red";
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 8 do {_unit addItemToVest _weaponMag};
	};
};