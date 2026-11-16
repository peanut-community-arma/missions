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

_unit setVariable ["ace_medical_damageThreshold", (random [0.5, 0.6, 1]), true];
_unit setVariable ["BIS_enableRandomization", false];
removeGoggles _unit;

[_unit, 6] call pca_fnc_setUnitSkills;
_unit call pca_fnc_unlimitedAmmo;

private _uniformPoolWeighted = selectRandomWeighted 
[
	"rhs_uniform_vkpo_gloves", 3,
	"rhs_uniform_vkpo_gloves_alt", 2
];

private _vest = selectRandomWeighted
[
	"pca_6b45_grn", 2,
	"pca_6b45_rifleman", 2,
	"pca_6b45_rifleman_2", 1
];

private _vestMG = "pca_6b45_mg";

private _headgearPoolWeighted = selectRandomWeighted
[
	"rhs_6b7_1m_emr", 3,
	"pca_6b47_emr_1", 2,
	"pca_6b47_emr_2", 1,
	"pca_6b47_emr_3", 1
];

private _headgearESSPoolWeighted = selectRandomWeighted
[
	"pca_6b47_emr_ess", 2,
	"rhs_6b7_1m_emr_ess", 3
];

private _backpackPoolWeighted = selectRandomWeighted
[
	"rhs_rk_sht_30_emr", 3,
	"rhs_tortila_emr", 2,
	"rhs_rk_sht_30_olive", 1
];

private _facewearPoolWeighted = selectRandomWeighted 
[
	"CUP_G_RUS_Balaclava_Ratnik", 3,
	"CUP_G_RUS_Balaclava_Ratnik_v2", 2
];

//ADD UNIFORM
_unit forceAddUniform _uniformPoolWeighted;
//ADD VEST
if (_unitRole in _unitRoleCommon) then 
{
	_unit addVest _vest;
}
else 
{
	if (_unitRole == "ar") then 
	{
		_unit addVest _vest;
	}
	else 
	{
		_unit addVest _vestMG;
	};
};
//ADD HEADGEAR
if (80 > random 100) then 
{
	_unit addHeadgear _headgearPoolWeighted;
}
else 
{
	_unit addHeadgear _headgearESSPoolWeighted;
};
//ADD FACEWEAR
_unit addGoggles _facewearPoolWeighted;

if (_unitRole == "crewman") then 
{
	removeHeadgear _unit;
	_unit addHeadgear "rhs_6b48";
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

for "_i" from 1 to (ceil (random [0,1,4])) do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to (ceil (random [0,1,4])) do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to (ceil (random [0,1,1])) do {_unit addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to (ceil (random [0,1,1])) do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to (ceil (random [0,1,2])) do {_unit addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to (ceil (random [0,1,2])) do {_unit addItemToUniform "ACE_splint";};
for "_i" from 1 to (ceil (random [0,1,2])) do {_unit addMagazine "CUP_HandGrenade_RGD5";};
for "_i" from 1 to (ceil (random [0,0,2])) do {_unit addMagazine "SmokeShell";};

switch (_setWeapon) do 
{
	case (_unitRole in _unitRoleCommon) : 
	{
		private _weapon = "rhs_weap_ak74m";
		private _weaponMag = "rhs_30Rnd_545x39_7N10_AK";
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		for "_i" from 1 to 6 do {_unit addItemToVest _weaponMag};
		
		if (_unitRole == "rm_lat") then 
		{
			_unit addSecondaryWeaponItem "rhs_rpg26_mag";
		};
	};
	case (_unitRole == "ar") : 
	{
		private _weapon = "rhs_weap_rpk74m";
		private _weaponMag = selectRandomWeighted 
		[
			"pca_mag_45Rnd_545x39_Polymer_Mixed_7N10", 3,
			"pca_mag_45Rnd_545x39_Polymer_7N10", 1,
			"pca_mag_45Rnd_545x39_Polymer_7T3M", 1
		];
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 2 do {_unit addItemToVest _weaponMag};
	};
	case (_unitRole == "mg") : 
	{
		private _weapon = "rhs_weap_pkp";
		private _weaponMag = selectRandomWeighted 
		[
			"CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 4,
			"rhs_100Rnd_762x54mmR_green", 1
		];
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 2 do {_unit addItemToVest _weaponMag};
	};
	default 
	{
		private _weapon = "rhs_weap_ak74m_folded";
		private _weaponMag = "rhs_30Rnd_545x39_7N10_AK";
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		for "_i" from 1 to 4 do {_unit addItemToVest _weaponMag};
	};
};