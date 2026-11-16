/**
	Alternative gear assignment method — for finer tuning on equipment randomizations.
	
	Parameters:
	0: unit <OBJECT>
	1: chance to add backpack <NUMBER> <DEFAULT: 50>
	2: chance to add face wear <NUMBER> <DEFAULT: 50>
	3: force changes unit's identity <BOOL> <DEFAULT: TRUE>
	4: force changes unit's primary weapons <BOOL> <DEFAULT: TRUE>
	
	Example:
	[bob, 50, 50, true, true] call pca_fnc_assignGearCurated;
	
	Returns: 
	NONE
*/

params [["_unit", objNull, [objNull]], ["_backpackChance", 50], ["_facewearChance", 50], ["_setIdentity", true], ["_setWeapon", true]];

//Exit if unit is null or not local
if (isNull _unit || {!local _unit}) exitWith {};

private _unitRole = _unit getVariable ["tmf_assignGear_role", nil];
private _unitRoleCommon = ["rm","rm_lat","rm_mat", "medic", "engineer"];
private _unitRoleForceBackpack = ["rm_mat", "medic", "engineer"];

_unit setVariable ["ace_medical_damageThreshold", (random [0.6, 0.8, 1.2]), true];
_unit setVariable ["BIS_enableRandomization", false];
removeGoggles _unit;

[_unit, 6] call pca_fnc_setUnitSkills;
_unit call pca_fnc_unlimitedAmmo;

private _uniformPoolWeighted = "$NONE_wsx_uniform_combat_irndpm$";
private _vestPoolWeighted = "CUP_V_RUS_Smersh_1";
private _headgearPoolWeighted = "$REVIEW_wsx_helmet_combat_irndpm$";
private _headgearESSPoolWeighted = selectRandomWeighted
[
	"wsx_helmet_combat_irndpm_ess_bare", 3,
	"wsx_helmet_combat_irndpm_ess", 2
];

private _backpackPoolWeighted = "CUP_B_RPGPack_Khaki";

private _facewearPoolWeighted = selectRandomWeighted 
[
	"CUP_TK_NeckScarf", 3,
	"CUP_FR_NeckScarf2", 1,
	"CUP_G_Scarf_Face_Tan", 1
];

//ADD UNIFORM
_unit forceAddUniform _uniformPoolWeighted;
//ADD VEST
_unit addVest _vestPoolWeighted;
//ADD HEADGEAR

if (random 100 > 10) then 
{
	_unit addHeadgear _headgearPoolWeighted;
}
else
{
	_unit addHeadgear _headgearESSPoolWeighted;
};

if (_facewearChance > random 100) then 
{
	_unit addGoggles _facewearPoolWeighted;
};

if (_unitRole == "crewman") then 
{
	removeHeadgear _unit;
	_unit addHeadgear "rhs_tsh4";
};

//ADD BACKPACK
if (_unitRole in _unitRoleForceBackpack) then 
{
	if (_unitRole == "rm_mat") then 
	{
		private _bp = "rhs_rpg_empty";
		private _mat = "rhs_weap_rpg7";
		private _matAT = "rhs_rpg7_PG7VL_mag";
		
		_unit addBackpack _bp;
		_unit addWeapon _mat;
		_unit addWeaponItem [_mat, _matAT, true];
		for "_i" from 1 to (ceil (random [2,3,5])) do {_unit addItemToBackpack _matAT;};
	}
	else
	{
		_unit addBackpack _backpackPoolWeighted;
	};
}
else
{
	if (_backpackChance > random 100) then 
	{
		_unit addBackpack _backpackPoolWeighted;
	};
};

if (_setIdentity) then 
{
	private _facePoolWeighted = selectRandomWeighted 
	[
		"O_Colonel", 1,
		"GreekHead_A3_01", 1,
		"GreekHead_A3_02", 1,
		"LatinoHead_A3_01", 1,
		"PersianHead_A3_01", 1,
		"PersianHead_A3_02", 1,
		"PersianHead_A3_03", 1,
		"PersianHead_A3_04", 1,
		"PersianHead_A3_05", 1,
		"PersianHead_A3_06", 1,
		"PersianHead_A3_07", 1
	];
	
	[_unit, _facePoolWeighted] remoteExec ["setFace", 0, _unit];
};

switch (_setWeapon) do 
{
	case (_unitRole in _unitRoleCommon) : 
	{
		private _weapon = "CUP_arifle_G3A3_modern_ris";
		private _weaponMag = "CUP_20Rnd_762x51_G3";
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 6 do {_unit addItemToVest _weaponMag};
	};
	case (_unitRole == "ar") : 
	{
		private _weapon = "CUP_lmg_PKM";
		private _weaponMag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 2 do {_unit addItemToVest _weaponMag};
	};
	case (_unitRole == "mg") : 
	{
		private _weapon = "CUP_lmg_PKM";
		private _weaponMag = selectRandomWeighted
		[
			"CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 3,
			"rhs_100Rnd_762x54mmR_green", 2
		];
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 2 do {_unit addItemToVest _weaponMag};
	};
	default 
	{
		private _weapon = "rhs_weap_aks74u";
		private _weaponMag = selectRandomWeighted 
		[
			"rhs_30Rnd_545x39_7N6M_AK", 3,
			"rhs_30Rnd_545x39_7N6M_plum_AK", 2
		];
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 4 do {_unit addItemToVest _weaponMag};
	};
};