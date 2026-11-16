#define nades "CUP_HandGrenade_M67","ACE_Chemlight_HiWhite","ACE_Chemlight_HiWhite","rhs_grenade_mki_mag","SmokeShell","SmokeShell"

class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = {
		LIST_2("Rev_U_B_FRR_Uniform_03_F"),
		LIST_4("Atlas_U_UniformBDU_02_m81_F"),
		"Rev_U_B_FRR_Uniform_02_F",
		"Rev_U_B_FRR_Uniform_01_F",
		LIST_8("Atlas_U_UniformBDU_01_m81_F"),
		LIST_4("Atlas_U_UniformBDU_02_m81_F")
	};
	vest[] = {
		LIST_3("simc_alice_lbv_m81"),
		LIST_3("simc_alice_lbv_alt_m81"),
		"simc_vest_pasgt_m81",
		"simc_vest_pasgt_lbv_m81",
		"simc_vest_pasgt_lc2_m81"
	};
	backpack[] = {
		"pca_backpack_invisible",
		"pca_kitbag_m81",
		LIST_2("pca_assaultpack_m81")
	};
	headgear[] = {
		"H_Booniehat_m81_F",
		"simc_m1_m81",
		LIST_2("simc_m1_m81_alt"),
		"simc_m1_m81_swdg",
		"simc_m1_m81_2",
		LIST_2("simc_m1_m81_2_alt"),
		"simc_m1_m81_2_swdg"
	};
	goggles[] = {
		LIST_12(""),
		LIST_2("bear_bandana_m81"),
		"pca_balaclava_oli_2"
	};
	hmd[] = {
		LIST_10(""),
		"CUP_NVG_PVS14_Hide"
	};
	// Leave empty to not change faces and Insignias
	faces[] = {};
	insignias[] = {};
	// All Randomized. Add Primary Weapon and attachments
	// Leave Empty to remove all. {"Default"} for using original items the character start with
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	// SecondaryAttachments[] arrays are NOT randomized
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	// These are added to the uniform or vest first - overflow goes to backpack if there's any
	magazines[] = {};
	items[] = 
	{
		LIST_4("ACE_fieldDressing"),
		"ACE_tourniquet",
		"ACE_morphine",
		"ACE_splint"
	};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "\
		_stdMag = (getArray (configfile >> ""CfgWeapons"" >> (primaryWeapon _this) >> ""magazines"") # 0);\
		_mags = 0;\
		while {[_this, _stdMag, 1] call CBA_fnc_canAddItem && {_mags < 8}} do {\
			_this addMagazine _stdMag;\
			_mags = _mags + 1;\
		};\
		reload _this;\
		_this call pca_fnc_unlimitedAmmo;";
};

class rm : baseMan
{
	displayName = "Rifleman";
	primaryWeapon[] = 
	{
		"camel_weap_k1a_rgr",
		LIST_2("camel_weap_k1a_blk"),
		LIST_4("$NONE_hlc_rifle_scarl_std$"),
		LIST_2("$NONE_hlc_rifle_scarl_std_camo$")
	};
	scope[] = 
	{
		LIST_12(""),
		LIST_2("$NONE_sma_acc_vortex_lc_blk$"),
		"CUP_optic_Eotech553_OD"
	};
	magazines[] = 
	{
		nades,
		LIST_8("rhs_mag_30Rnd_556x45_M855_Stanag_Ranger")
	};
	code = "_this call pca_fnc_unlimitedAmmo;";
};

class rm_lt : baseMan
{
	displayName = "Rifleman (Light)";
	primaryWeapon[] = 
	{
		LIST_2("$NONE_hlc_rifle_magpul556_grn$"),
		"$NONE_hlc_rifle_magpul556_blk$",
		"CUP_arifle_mk18_black"
	};
	scope[] = 
	{
		LIST_12(""),
		LIST_2("$NONE_sma_acc_vortex_lc_blk$"),
		"CUP_optic_Eotech553_OD"
	};
};

class ar : baseMan
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		LIST_2("CUP_lmg_M240"),
		"CUP_lmg_M240_B",
		LIST_6("rhs_weap_m249")
	};
	sidearmWeapon[] = {
		"CUP_hgun_Colt1911"
	};	
	scope[] = 
	{
		LIST_12(""),
		LIST_2("$NONE_sma_acc_vortex_lc_blk$"),
		"CUP_optic_Eotech553_OD"
	};
	magazines[] = 
	{
		nades,
		LIST_2("CUP_7Rnd_45ACP_1911")
	};
};

class ammo : rm
{
	displayName = "Ammo Bearer";
	backpack[] = {
		"pca_carryall_m81"
	};
	backpackItems[] += {
		LIST_2("rhsusf_200Rnd_556x45_box"),
		LIST_2("rhsusf_100Rnd_762x51")
	};
	linkedItems[] += {
		"rhsusf_bino_m24"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_M136_hedp",
		"rhs_weap_m72a7"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"pca_carryall_m81"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_MAAWS"
	};
	secondaryAttachments[] = 
	{
		"CUP_optic_MAAWS_Scope"
	};
	backpackItems[] = 
	{
		LIST_4("sp_fwa_carlg_1rnd_heat")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_scarl_std_eglm_camo$",
		LIST_2("$NONE_hlc_rifle_scarl_std_eglm$")
	};
	magazines[] += 
	{
		LIST_5("CUP_1Rnd_HEDP_M203"),
		LIST_5("CUP_1Rnd_StarFlare_White_M203")
	};
};

class marksman : baseMan
{
	displayName = "Marksman";
	primaryWeapon[] = {
		LIST_3("$NONE_hlc_rifle_scarh_ssr$"),
		"$NONE_hlc_rifle_scarh_ssr_camo$"
	};
	scope[] = {
		"CUP_optic_SB_11_4x20_PM"
	};
	bipod[] = {
		"HLC_bipod_UTGShooters"
	};
	items[] = {
		"ACE_RangeCard",
		"ACE_ATragMX"
	};
	linkedItems[] = {
		"ACE_Vector"
	};
};

class medic : baseMan
{
	displayName = "Medic";
	primaryWeapon[] = {
		LIST_2("CUP_arifle_AKS74U"),
		"CUP_smg_MP7",
		LIST_4("SMG_01_black_F"),
		LIST_6("SMG_05_F")
	};
	backpackItems[] = 
	{
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_elasticBandage"),
		LIST_5("ACE_packingBandage"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_bloodIV"),
		"ACE_personalAidKit"
	};
	goggles[] += {
		LIST_2("TC_G_NitrileGloves_1")
	};
};

class officer : rm {
	displayName = "Officer";
	linkedItems[] += {
		"Binocular",
		"ItemGPS"
	};
	headgear[] += {
		LIST_5("rhssaf_beret_red")
	};
};

class engineer : rm 
{
	displayName = "Engineer";
	primaryWeapon[] += {
		"rhs_weap_M590_8RD"
	};
	backpack[] = 
	{
		"pca_carryall_m81"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter",
		"ACE_EntrenchingTool"
	};
};

class exp : rm
{
	displayName = "Explosives Specialist";
	items[] += {
		LIST_2("rhs_mag_an_m14_th3")
	};
	backpackItems[] =
	{
		LIST_2("CUP_PipeBomb_M"),
		"ACE_Clacker"
	};
};