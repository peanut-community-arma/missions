private _unitRole = _this getVariable ["tmf_assignGear_role", nil];
private _rRole = ["rm","rm_lat","rm_mat"];

_this addEventHandler 
["Reloaded", {
	params ["_unit", "", "", "", "_oldMagazine"];
	_oldMagazine params ["_oldMagazine"];
	_unit addMagazine _oldMagazine;
}];

_this setVariable ["ace_medical_damageThreshold", (random [0.8, 0.8, 1]), true];
_this setVariable ["BIS_enableRandomization", false];
removeGoggles _this;

if (random 1 > 0.25) then 
{
	private _bdu = selectRandomWeighted 
	[
		"usp_g3c_khk", 2,
		"usp_g3c_mx_khk", 1,
		"usp_g3c_kp_khk", 1,
		"usp_g3c_kp_mx_khk", 1
	];

	_this forceAddUniform _bdu;
}
else
{
	private _bdu = selectRandomWeighted 
	[
		"usp_g3c_rs_khk", 2,
		"usp_g3c_rs_mx_khk", 1,
		"usp_g3c_rs_kp_khk", 1,
		"usp_g3c_rs_kp_mx_khk", 1,
		"usp_g3c_rs2_khk", 2,
		"usp_g3c_rs2_mx_khk", 1,
		"usp_g3c_rs2_kp_khk", 1,
		"usp_g3c_rs2_kp_mx_khk", 1
	];

	_this forceAddUniform _bdu;
};

private _vest = selectRandomWeighted 
[
	"CUP_V_B_RRV_DA1", 1.5,
	"CUP_V_B_RRV_DA2", 1.5,
	"CUP_V_B_RRV_DA1_CB", 1,
	"CUP_V_B_RRV_DA2_CB", 1
];

_this addVest _vest;

if (random 1 > 0.5) then 
{
	if (random 1 > 0.25) then 
	{
		private _helmet = selectRandomWeighted 
		[
			"milgp_h_opscore_01_khk", 3,
			"milgp_h_opscore_02_khk", 1,
			"milgp_h_opscore_03_khk", 1,
			"milgp_h_opscore_04_khk", 1,
			"milgp_h_opscore_05_khk", 1,
			"milgp_h_opscore_06_khk", 1
		];
		
		_this addHeadgear _helmet;
	}
	else
	{
		private _helmet = selectRandomWeighted 
		[
			"milgp_h_opscore_01_goggles_khk", 3,
			"milgp_h_opscore_02_goggles_khk", 1,
			"milgp_h_opscore_03_goggles_khk", 1,
			"milgp_h_opscore_04_goggles_khk", 1,
			"milgp_h_opscore_05_goggles_khk", 1,
			"milgp_h_opscore_06_goggles_khk", 1
		];
		
		_this addHeadgear _helmet;
	};
}
else
{
	if (random 1 > 0.25) then 
	{
		if (random 1 > 0.25) then 
		{
			private _headwear = selectRandomWeighted 
			[
				"milgp_h_cap_01_khk", 1.5,
				"milgp_h_cap_02_khk", 3,
				"milgp_h_cap_03_khk", 3,
				"milgp_h_cap_backwards_01_khk", 0.5,
				"milgp_h_cap_backwards_02_khk", 1,
				"milgp_h_cap_backwards_03_khk", 1
			];
			
			_this addHeadgear _headwear;
		}
		else
		{
			private _headwear = selectRandomWeighted 
			[
				"H_Watchcap_cbr", 2,
				"H_Watchcap_camo", 1,
				"H_Watchcap_khk", 2
			];
			
			_this addHeadgear _headwear;
		};
	}
	else
	{
		private _headwear = selectRandomWeighted 
		[
			"milgp_h_cap_01_goggles_khk", 1.5,
			"milgp_h_cap_02_goggles_khk", 3,
			"milgp_h_cap_03_goggles_khk", 3,
			"milgp_h_cap_backwards_01_goggles_khk", 0.5,
			"milgp_h_cap_backwards_02_goggles_khk", 1,
			"milgp_h_cap_backwards_03_goggles_khk", 1
		];
		
		_this addHeadgear _headwear;
	};
};

if (random 1 > 0.1) then 
{
	private _facewear = selectRandomWeighted 
	[
		"G_Aviator", 1,
		"G_Shades_Black", 1,
		"G_Shades_Blue", 1,
		"G_Sport_Blackred", 1,
		"rhsusf_shemagh_tan", 1,
		"rhsusf_shemagh2_tan", 1,
		"milgp_f_face_shield_tactical_shemagh_cb", 1,
		"milgp_f_face_shield_tactical_shemagh_khk", 1,
		"milgp_f_tactical_khk", 1,
		"$NONE_aegis_shemag_shades_khk$", 1.5,
		"$NONE_aegis_shemag_tactical_khk$", 1.5,
		"$NONE_aegis_shemag_shades_tan$", 1.5,
		"G_Shemag_tan", 1.5,
		"CUP_G_Scarf_Face_Tan", 1
	];

	_this addGoggles _facewear;
};

//Add Backpack
//================================================================================//
if !(_unitRole == "rm_mat") then 
{
	if (random 1 > 0.75) then 
	{
		private _bp = selectRandomWeighted 
		[
			"B_Carryall_cbr", 0.5,
			"B_Carryall_khk", 0.5,
			"B_FieldPack_cbr", 1,
			"B_FieldPack_khk", 1,
			"B_Kitbag_tan", 1.5,
			"pca_eagle_a3_tan", 2,
			"B_Kitbag_khk", 1.5,
			"aegis_loadbearing_cbr", 0.5,
			"B_TacticalPack_khk", 1.5,
			"tacpac_tan", 1.5,
			"CUP_B_Bergen_BAF", 1.5
		];
		
		_this addBackpack _bp;
	};
}
else
{
	private _bp = selectRandomWeighted 
	[
		"B_Carryall_cbr", 0.5,
		"B_Carryall_khk", 0.5,
		"B_FieldPack_cbr", 1,
		"B_FieldPack_khk", 1,
		"B_Kitbag_tan", 1.5,
		"pca_eagle_a3_tan", 2,
		"B_Kitbag_khk", 1.5,
		"aegis_loadbearing_cbr", 0.5,
		"B_TacticalPack_khk", 1.5,
		"tacpac_tan", 1.5,
		"CUP_B_Bergen_BAF", 1.5
	];
	
	_this addBackpack _bp;
	
	private _mat = "rhs_weap_rpg7";
	private _matAT = "rhs_rpg7_PG7VL_mag";
	private _matHAT = "rhs_rpg7_PG7VR_mag";
	_this addBackpack _bp;
	_this addWeapon _mat;
	_this addWeaponItem [_mat, _matAT, true];
	for "_i" from 1 to (ceil (random [2,3,4])) do {_this addItemToBackpack _matAT;};
	for "_i" from 1 to (ceil (random [0,1,1])) do {_this addItemToBackpack _matHAT;};
};


//Set Faces
//====================================================================================================//
private _face = selectRandom
[	
	"AsianHead_A3_01",
	"AsianHead_A3_02",
	"AsianHead_A3_03",
	"AsianHead_A3_04",
	"AsianHead_A3_05",
	"AsianHead_A3_06",
	"AsianHead_A3_07"
];

[_this, _face] remoteExec ["setFace", 0, _this];


//Add Items
//================================================================================//
for "_i" from 1 to (ceil (random [0,1,4])) do {_this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to (ceil (random [0,1,4])) do {_this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to (ceil (random [0,1,1])) do {_this addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to (ceil (random [0,1,1])) do {_this addItemToUniform "ACE_morphine";};
for "_i" from 1 to (ceil (random [0,1,2])) do {_this addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to (ceil (random [0,1,2])) do {_this addItemToUniform "ACE_splint";};
for "_i" from 1 to (ceil (random [0,1,2])) do {_this addMagazine "CUP_HandGrenade_RGD5";};
for "_i" from 1 to (ceil (random [0,0,2])) do {_this addMagazine "rhs_mag_rdg2_white";};


//SetSkills
//================================================================================//
_this setSkill ["general", 1];
_this setSkill ["commanding", (random [0.95,1,1])];
_this setSkill ["courage", (random [0.95,1,1])];
_this setSkill ["spotDistance", (random [0.5,0.6,1])];
_this setSkill ["spotTime", (random [0.4,0.5,1])];
_this setSkill ["reloadSpeed", (random [0.5,0.6,1])];
_this setSkill ["aimingAccuracy", (random [0.55,0.6,0.8])];
_this setSkill ["aimingShake", (random [0.55,0.6,0.8])];
_this setSkill ["aimingSpeed", (random [0.65,0.75,0.85])];


//Add Weapon
//================================================================================//
if (_unitRole in _rRole) exitWith 
{
	private _rifle = "rhs_weap_ak74m_zenitco01_b33";
	private _optic = "rhs_acc_1p87";
	private _muzzle = "rhs_acc_dtk3";
	private _rMag = "rhs_30Rnd_545x39_7N10_AK";
	
	_this addWeapon _rifle;
	_this addPrimaryWeaponItem _optic;
	_this addPrimaryWeaponItem _muzzle;
	_this addWeaponItem [_rifle, _rMag, true];
	for "_i" from 1 to (ceil (random [1,4,8])) do {_this addItemToVest _rMag};
};

if (_unitRole == "ar") exitWith 
{
	private _ar = "CUP_arifle_RPK74M";
	private _arMag = selectRandomWeighted 
	[
		"pca_mag_45Rnd_545x39_Polymer_Mixed_7N6M", 3,
		"pca_mag_45Rnd_545x39_Polymer_7T3M", 2
	];
	
	_this addWeapon _ar;
	_this addWeaponItem [_ar, _arMag, true];
	for "_i" from 1 to (ceil (random [1,4,6])) do {_this addItemToVest _arMag};
};

if (_unitRole == "mg") then 
{
	private _mg = "rhs_weap_pkp";
	private _mgMag = selectRandomWeighted 
	[
		"rhs_100Rnd_762x54mmR", 3,
		"rhs_100Rnd_762x54mmR_green", 2
	];
	
	_this addWeapon _mg;
	_this addWeaponItem [_mg, _mgMag, true];
	for "_i" from 1 to (ceil (random [1,2,2])) do {_this addItemToVest _mgMag};
};