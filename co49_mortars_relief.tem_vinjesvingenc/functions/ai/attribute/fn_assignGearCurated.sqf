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

_unit setVariable ["ace_medical_damageThreshold", (random [1, 1.2, 1.8]), true];
_unit setVariable ["BIS_enableRandomization", false];
removeGoggles _unit;

[_unit, 4] call pca_fnc_setUnitSkills;
_unit call pca_fnc_unlimitedAmmo;

private _uniform = selectRandomWeighted 
[
	"rhs_uniform_gorka_r_y", 2,
	"pca_uniform_gorka_flecktarn", 1,
	"pca_uniform_gorka_leto", 1,
	"pca_uniform_gorka_tigr_wdl", 1,
	"pca_uniform_gorka_wdl", 1,
	"bear_uniform_gorka_r_les", 1,
	"wsx_uniform_gorka_skol", 1
];

private _vest = selectRandomWeighted
[
	"V_SmershVest_01_F", 4,
	"V_SmershVest_01_radio_F", 1
];

private _headgear = selectRandomWeighted
[
	"rhs_altyn_novisor", 4,
	"rhs_altyn_novisor_ess", 1
];

private _backpack = selectRandomWeighted
[
	"B_FieldPack_green_F", 3,
	"CUP_O_RUS_Patrol_bag_Green", 1
];

private _facewear = selectRandomWeighted 
[
	"G_Bandanna_oli", 1,
	"G_Bandanna_khk", 1,
	"rhs_balaclava", 2,
	"rhs_balaclava1_olive", 2,
	"rhs_scarf", 2
];

//ADD UNIFORM
_unit forceAddUniform _uniform;
//ADD VEST
_unit addVest _vest;
//ADD HEADGEAR
_unit addHeadgear _headgear;
//ADD FACEWEAR
if (_facewearChance > random 100) then 
{
	_unit addGoggles _facewear;
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
		_unit addBackpack _backpack;
	};
}
else
{
	if (_backpackChance > random 100) then 
	{
		_unit addBackpack _backpack;
	};
};

if (_setIdentity) then 
{
	private _face = selectRandomWeighted 
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
	
	[_unit, _face] remoteExec ["setFace", 0, _unit];
};

for "_i" from 1 to (ceil (random [0,1,4])) do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to (ceil (random [0,1,4])) do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to (ceil (random [0,1,1])) do {_unit addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to (ceil (random [0,1,1])) do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to (ceil (random [0,1,2])) do {_unit addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to (ceil (random [0,1,2])) do {_unit addItemToUniform "ACE_splint";};
for "_i" from 1 to (ceil (random [0,1,2])) do {_unit addMagazine "CUP_HandGrenade_RGD5";};
for "_i" from 1 to (ceil (random [0,0,2])) do {_unit addMagazine "rhs_mag_rdg2_white";};

switch (_setWeapon) do 
{
	case (_unitRole in _unitRoleCommon) : 
	{
		private _weapon = "rhs_weap_ak103";
		private _weaponMag = "rhs_30Rnd_762x39mm_polymer";
		
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
		private _weapon = "CUP_arifle_RPK74M";
		private _weaponMag = "rhs_60Rnd_545X39_AK_Green";
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 4 do {_unit addItemToVest _weaponMag};
	};
	case (_unitRole == "mg") : 
	{
		private _weapon = "rhs_weap_pkp";
		private _weaponMag = selectRandomWeighted 
		[
			"rhs_100Rnd_762x54mmR", 4,
			"rhs_100Rnd_762x54mmR_green", 1
		];
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		
		for "_i" from 1 to 2 do {_unit addItemToVest _weaponMag};
	};
	default 
	{
		private _weapon = "CUP_arifle_SR3M_Vikhr";
		private _weaponMag = "CUP_30Rnd_9x39_SP5_VIKHR_M";
		
		_unit addWeapon _weapon;
		_unit addWeaponItem [_weapon, _weaponMag, true];
		for "_i" from 1 to 6 do {_unit addItemToVest _weaponMag};
	};
};