private _unitRole = _this getVariable ["tmf_assignGear_role", nil];
private _rRole = ["rm","rm_lat","rm_mat"];

_this addEventHandler 
["Reloaded", {
	params ["_unit", "", "", "", "_oldMagazine"];
	_oldMagazine params ["_oldMagazine"];
	_unit addMagazine _oldMagazine;
}];

_this setVariable ["ace_medical_damageThreshold", (random [0.8, 1, 1.2]), true];
_this setVariable ["BIS_enableRandomization", false];
removeGoggles _this;

private _bdu = "rhs_uniform_afghanka_para_ttsko";
_this forceAddUniform _bdu;

if (_unitRole in _rRole) then 
{
	private _vest = selectRandomWeighted 
	[
		"CUP_V_B_Interceptor_Grenadier_Grey", 4,
		"CUP_V_B_Interceptor_Rifleman_Grey", 1
	];

	_this addVest _vest;
}
else
{
	private _vest = "CUP_V_B_Interceptor_Grenadier_Grey";
	_this addVest _vest;
};

if (random 1 > 0.2) then 
{
	private _helmet = "CUP_H_RUS_6B47_SF_headset_black";
	_this addHeadgear _helmet;
	
	if (random 1 > 0.2) then 
	{
		if (random 1 > 0.5) then 
		{
			private _facewear = selectRandomWeighted 
			[
				"G_Balaclava_blk", 2,
				"G_Bandanna_blk", 1,
				"G_Balaclava_light_blk_F", 1,
				"bear_balaclava1_black", 1.5,
				"CUP_RUS_Balaclava_blk", 1.5,
				"CUP_PMC_Facewrap_Black", 1
			];
			
			_this addGoggles _facewear;
		}
		else
		{
			private _eyewear = selectRandomWeighted 
			[
				"rhs_ess_black", 2,
				"rhsusf_oakley_goggles_blk", 1,
				"rhsusf_oakley_goggles_clr", 2,
				"CUP_G_ESS_BLK", 2,
				"CUP_G_ESS_BLK_Dark", 1
			];
			
			_this addGoggles _eyewear;
		};
	}
	else
	{
		private _mask = "G_RegulatorMask_F";
		_this addGoggles _mask;
	};
}
else
{
	private _helmet = "CUP_H_RUS_6B47_SF_headset_goggles_black";
	_this addHeadgear _helmet;
	
	if (random 1 > 0.2) then 
	{
		private _facewear = selectRandomWeighted 
		[
			"G_Balaclava_blk", 2,
			"G_Bandanna_blk", 1,
			"G_Balaclava_light_blk_F", 1,
			"bear_balaclava1_black", 1.5,
			"CUP_RUS_Balaclava_blk", 1.5,
			"CUP_PMC_Facewrap_Black", 1
		];
		
		_this addGoggles _facewear;
	}
	else
	{
		private _mask = "G_RegulatorMask_F";
		_this addGoggles _mask;
	};
};

if (random 1 > 0.2) then 
{
	private _misc = selectRandomWeighted 
	[
		"rhsusf_Rhino", 1,
		"$NONE_usm_nvg_kneepads_blk$", 3,
		"$NONE_usm_nvg_rhinoarm$", 1
	];
	
	_this linkItem _misc;
};

//Add Backpack
//================================================================================//
if !(_unitRole == "rm_mat") then 
{
	if (random 1 > 0.6) then 
	{
		private _bp = selectRandomWeighted 
		[
			"B_AssaultPack_blk", 1,
			"B_FieldPack_blk", 2,
			"tacpac_bk", 2
		];
		
		_this addBackpack _bp;
	};
}
else
{
	private _bp = selectRandomWeighted 
	[
		"B_AssaultPack_blk", 1,
		"B_FieldPack_blk", 2,
		"tacpac_bk", 2
	];
	
	private _mat = "rhs_weap_rpg7";
	private _matAT = "rhs_rpg7_PG7VL_mag";
	
	_this addBackpack _bp;
	_this addWeapon _mat;
	_this addWeaponItem [_mat, _matAT, true];
	for "_i" from 1 to (ceil (random [2,3,4])) do {_this addItemToBackpack _matAT;};
};


//Set Faces
//====================================================================================================//
private _face = selectRandom
[	
	"GreekHead_A3_01",
	"GreekHead_A3_02",
	"GreekHead_A3_05",
	"GreekHead_A3_06",
	"GreekHead_A3_07",
	"GreekHead_A3_08",
	"GreekHead_A3_09",
	"GreekHead_A3_11",
	"GreekHead_A3_12",
	"GreekHead_A3_13",
	"GreekHead_A3_14",
	"WhiteHead_01",
	"WhiteHead_02",
	"WhiteHead_03",
	"WhiteHead_04",
	"WhiteHead_05",
	"WhiteHead_06",
	"WhiteHead_07",
	"WhiteHead_08",
	"WhiteHead_09",
	"WhiteHead_10",
	"WhiteHead_11",
	"WhiteHead_12",
	"WhiteHead_13",
	"WhiteHead_14",
	"WhiteHead_15",
	"WhiteHead_16",
	"WhiteHead_17",
	"WhiteHead_18",
	"WhiteHead_19",
	"WhiteHead_20",
	"WhiteHead_21",
	"WhiteHead_23",
	"WhiteHead_24",
	"WhiteHead_25",
	"WhiteHead_26",
	"WhiteHead_27",
	"WhiteHead_28",
	"WhiteHead_29",
	"WhiteHead_30",
	"WhiteHead_31",
	"WhiteHead_32",
	"RussianHead_1",
	"RussianHead_2",
	"RussianHead_3",
	"RussianHead_4",
	"RussianHead_5",
	"LivonianHead_1",
	"LivonianHead_2",
	"LivonianHead_3",
	"LivonianHead_4",
	"LivonianHead_5",
	"LivonianHead_6",
	"LivonianHead_7",
	"LivonianHead_8",
	"LivonianHead_9",
	"LivonianHead_10",
	"Kerry",
	"kerry_B2_F",
	"Ioannou",
	"Mavros",
	"Sturrock"
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
for "_i" from 1 to (ceil (random [0,1,2])) do {_this addMagazine "rhs_mag_rgd5";};
for "_i" from 1 to (ceil (random [0,0,2])) do {_this addMagazine "rhs_mag_rdg2_white";};


//SetSkills
//================================================================================//
_this setSkill ["general", 1];
_this setSkill ["commanding", (random [0.9,0.95,1])];
_this setSkill ["courage", (random [0.9,0.95,1])];
_this setSkill ["spotDistance", (random [0.8,0.9,1])];
_this setSkill ["spotTime", (random [0.8,0.9,1])];
_this setSkill ["reloadSpeed", (random [0.5,0.6,1])];
_this setSkill ["aimingAccuracy", (random [0.4,0.5,0.75])];
_this setSkill ["aimingShake", (random [0.4,0.5,0.75])];
_this setSkill ["aimingSpeed", (random [0.5,0.6,0.8])];


//Add Weapon
//================================================================================//
if (_unitRole in _rRole) exitWith 
{
	private _rifle = "rhs_weap_ak103";
	private _muzzle = "rhs_acc_dtk1";
	private _rMag = selectRandomWeighted 
	[
		"rhs_30Rnd_762x39mm", 4.8,
		"rhs_30Rnd_762x39mm_tracer", 0.2
	];
	
	_this addWeapon _rifle;
	_this addPrimaryWeaponItem _muzzle;
	_this addWeaponItem [_rifle, _rMag, true];
	for "_i" from 1 to (ceil (random [1,4,8])) do {_this addItemToVest _rMag};
};

if (_unitRole == "ar") exitWith 
{
	private _ar = "CUP_arifle_RPK74M";
	private _arMag = selectRandomWeighted 
	[
		"pca_mag_45Rnd_545x39_Polymer_7N6M", 2.8,
		"pca_mag_45Rnd_545x39_Polymer_7T3M", 1.2
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
		"rhs_100Rnd_762x54mmR", 2.8,
		"rhs_100Rnd_762x54mmR_green", 1.2
	];
	
	_this addWeapon _mg;
	_this addWeaponItem [_mg, _mgMag, true];
	for "_i" from 1 to (ceil (random [1,2,2])) do {_this addItemToVest _mgMag};
};