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

[_unit, 5] call pca_fnc_setUnitSkills;
_unit call pca_fnc_unlimitedAmmo;

private _uniformPoolWeighted = "rhs_uniform_flora_patchless";

private _vestPoolWeighted = selectRandomWeighted
[
	"rhs_6b23_6sh92", 5,
	"rhs_6b23_6sh92_headset", 1,
	"rhs_6b23_6sh92_radio", 1,
	"rhs_6b23_6sh92_vog", 2,
	"rhs_6b23_6sh92_vog_headset", 1
];

private _headgearPoolWeighted = selectRandomWeighted
[
	"rhs_6b26", 3,
	"rhs_6b27m", 1,
	"rhs_6b27m_green", 1
];

private _headgearESSPoolWeighted = selectRandomWeighted
[
	"rhs_6b26_ess", 3,
	"rhs_6b27m_ess", 1,
	"rhs_6b27m_green_ess", 1
];

private _backpackPoolWeighted = selectRandomWeighted
[
	"B_Carryall_oli", 1,
	"B_FieldPack_oli", 1,
	"rhs_rd54_flora2", 3
];

private _facewearPoolWeighted = selectRandomWeighted 
[
	"G_Balaclava_oli", 1,
	"CUP_G_RUS_Balaclava_Ratnik", 2,
	"CUP_G_RUS_Balaclava_Ratnik_v2", 2
];

private _eyewearPoolWeighted = "$NONE_pca_nvg_ess_blk$";

//ADD UNIFORM
_unit forceAddUniform _uniformPoolWeighted;
//ADD VEST
_unit addVest _vestPoolWeighted;
//ADD HEADGEAR

if (random 100 > 15) then 
{
	_unit addHeadgear _headgearPoolWeighted;
	
	if (15 > random 100) then 
	{
		_unit linkItem _eyewearPoolWeighted;
	};
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
		private _weapon = selectRandomWeighted 
		[
			"rhs_weap_ak74m", 5,
			"rhs_weap_ak74m_fullplum", 2
		];
		private _weaponMag = "rhs_30Rnd_545x39_7N10_AK";
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 8 do {_unit addItemToVest _weaponMag};
	};
	case (_unitRole == "ar") : 
	{
		private _weapon = "CUP_arifle_RPK74M";
		private _weaponMag = "pca_mag_45Rnd_545x39_Polymer_Mixed_7N10";
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 6 do {_unit addItemToVest _weaponMag};
	};
	case (_unitRole == "mg") : 
	{
		private _weapon = "rhs_weap_pkm";
		private _weaponMag = selectRandomWeighted
		[
			"rhs_100Rnd_762x54mmR", 7,
			"rhs_100Rnd_762x54mmR_green", 1
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
			"rhs_30Rnd_545x39_7N6M_plum_AK", 1,
			"bear_30Rnd_545x39_orange_7N6M", 1
		];
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 8 do {_unit addItemToVest _weaponMag};
	};
};