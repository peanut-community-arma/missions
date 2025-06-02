class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"CUP_O_TKI_Khet_Jeans_01",
		"CUP_O_TKI_Khet_Jeans_02",
		"CUP_O_TKI_Khet_Jeans_03",
		"CUP_O_TKI_Khet_Jeans_04",
		"CUP_O_TKI_Khet_Partug_01",
		"CUP_O_TKI_Khet_Partug_02",
		"CUP_O_TKI_Khet_Partug_03",
		"CUP_O_TKI_Khet_Partug_04",
		"CUP_O_TKI_Khet_Partug_05",
		"CUP_O_TKI_Khet_Partug_06",
		"CUP_O_TKI_Khet_Partug_07",
		"CUP_O_TKI_Khet_Partug_08"
	};
	vest[] = 
	{
		"CUP_V_OI_TKI_Jacket2_01",
		"CUP_V_OI_TKI_Jacket2_02",
		"CUP_V_OI_TKI_Jacket2_03",
		"CUP_V_OI_TKI_Jacket2_04",
		"CUP_V_OI_TKI_Jacket2_05",
		"CUP_V_OI_TKI_Jacket2_06",
		"CUP_V_OI_TKI_Jacket3_01",
		"CUP_V_OI_TKI_Jacket3_02",
		"CUP_V_OI_TKI_Jacket3_03",
		"CUP_V_OI_TKI_Jacket3_04",
		"CUP_V_OI_TKI_Jacket3_05",
		"CUP_V_OI_TKI_Jacket3_06",
		"CUP_V_OI_TKI_Jacket4_01",
		"CUP_V_OI_TKI_Jacket4_02",
		"CUP_V_OI_TKI_Jacket4_03",
		"CUP_V_OI_TKI_Jacket4_04",
		"CUP_V_OI_TKI_Jacket4_05",
		"CUP_V_OI_TKI_Jacket4_06"
	};
	backpack[] = {};
	headgear[] = 
	{
		"CUP_H_TKI_Lungee_01",
		"CUP_H_TKI_Lungee_02",
		"CUP_H_TKI_Lungee_03",
		"CUP_H_TKI_Lungee_04",
		"CUP_H_TKI_Lungee_05",
		"CUP_H_TKI_Lungee_06",
		"CUP_H_TKI_Lungee_Open_01",
		"CUP_H_TKI_Lungee_Open_02",
		"CUP_H_TKI_Lungee_Open_03",
		"CUP_H_TKI_Lungee_Open_04",
		"CUP_H_TKI_Lungee_Open_05",
		"CUP_H_TKI_Lungee_Open_06",
		"CUP_H_TKI_Pakol_1_02"
	};
	goggles[] = {
		LIST_5(""),
		LIST_2("G_Aviator"),
		"G_Shades_Black",
		"G_Shades_Blue",
		"G_Shades_Green",
		"G_Shades_Red",
		LIST_2("G_Spectacles"),
		LIST_2("G_Squares"),
		LIST_2("G_Squares_Tinted"),
		"G_Sport_Red",
		"G_Sport_Blackyellow",
		"G_Sport_BlackWhite",
		"G_Sport_Checkered",
		"G_Sport_Blackred",
		"G_Sport_Greenblack",
		"G_Blindfold_01_black_F",
		"G_Blindfold_01_white_F",
		LIST_2("CUP_G_TK_RoundGlasses"),
		LIST_2("CUP_G_TK_RoundGlasses_blk"),
		"CUP_G_TK_RoundGlasses_gold",
		LIST_2("CUP_TK_NeckScarf"),
		"CUP_FR_NeckScarf",
		"CUP_FR_NeckScarf2",
		"CUP_FR_NeckScarf3",
		"CUP_FR_NeckScarf4",
		"CUP_FR_NeckScarf5",
		LIST_2("CUP_G_WristWatch"),
		LIST_3("CUP_Beard_Black"),
		LIST_3("CUP_Beard_Blonde"),
		LIST_3("CUP_Beard_Brown")
	};
	hmd[] = {};
	// Leave empty to not change faces and Insignias
	faces[] = {"faceset:persian", "faceset:african", "faceset:caucasian", "faceset:asian"};
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
		LIST_2("ACE_fieldDressing"),
		LIST_2("ACE_packingBandage"),
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
	code =  "_this call pca_fnc_unlimitedAmmo";
};

class rm : baseMan
{
	displayName = "Rifleman";
	primaryWeapon[] =
	{
		"arifle_AK12_545_F"
	};
	scope[] =
	{
		"",
		"rhs_acc_rakurspm",
		"rhs_acc_1p87",
		"rhs_acc_ekp8_18",
		"rhs_acc_okp7_picatinny"
	};
	attachment[] =
	{
		"",
		"rhs_acc_2dpzenit_ris"
	};
	bipod[] =
	{
		"",
		"rhs_acc_grip_ffg2",
		"rhs_acc_grip_rk2",
		"rhs_acc_grip_rk6"
	};
	magazines[] =
	{
		LIST_20("pca_mag_30Rnd_545x39_AK12_Blk_7N10"),
		"rhs_mag_rgn",
		"rhs_mag_rdg2_white"
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"Aegis_arifle_RPK12_545_F"
	};
	attachment[] =
	{
		"",
		"rhs_acc_2dpzenit_ris",
		"rhs_acc_perst1ik_ris"
	};
	backpack[] = 
	{
		"B_CivilianBackpack_01_Everyday_Astra_F",
		"B_CivilianBackpack_01_Everyday_Black_F",
		"B_CivilianBackpack_01_Everyday_Vrana_F",
		"B_CivilianBackpack_01_Everyday_IDAP_F",
		"B_CivilianBackpack_01_Sport_Blue_F",
		"B_CivilianBackpack_01_Sport_Green_F",
		"B_CivilianBackpack_01_Sport_Red_F"
	};	
	magazines[] = 
	{
		LIST_10("aegis_95Rnd_545x39_mixed_7N10_ak12"),
		"rhs_mag_rgn",
		"rhs_mag_rdg2_white"
	};
};

class rm_at : rm 
{
	displayName = "Rifleman (AT)";
	primaryWeapon[] =
	{
		"arifle_AK12U_545_F"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg18",
		"rhs_weap_rpg26",
		"rhs_weap_rshg2",
		"rhs_weap_panzerfaust60",
		"rhs_weap_rpg75"
	};
};

class tl : rm
{
	displayName = "Team Leader";
	primaryWeapon[] =
	{
		"arifle_AK12_GL_545_F"
	};
	bipod[] = 
	{
		""
	};
	magazines[] =
	{
		LIST_17("pca_mag_30Rnd_545x39_AK12_Blk_7T3M"),
		LIST_4("rhs_VOG25"),
		LIST_2("rhs_GRD40_White")
	};
	linkedItems[] = 
	{
		"Binocular"
	};
};

class medic : rm 
{
	displayName = "Medic";
	traits[] = {"medic"};	
	backpack[] = 
	{
		"B_Messenger_Black_F",
		"B_Messenger_Coyote_F",
		"B_Messenger_Gray_F",
		"B_Messenger_Olive_F",
		"B_Messenger_IDAP_F"
	};
	primaryWeapon[] =
	{
		"arifle_AK12U_545_F"
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
		LIST_2("ACE_adenosine")
	};
};

class sf_baseMan
{
	displayName = "SF Unarmed";
	// All Randomized
	uniform[] =
	{
		"U_B_UBACS_blk_f"
	};
	vest[] = 
	{
		"V_CarrierRigKBT_01_light_Black_F"
	};
	backpack[] =
	{
		"B_AssaultPack_blk"
	};
	headgear[] =
	{
		"H_HelmetSpecter_black_F"
	};
	goggles[] =
	{
		"G_Balaclava_light_G_blk_F"
	};
	hmd[] =
	{
		"ACE_NVG_Gen4_Black"
	};
	// Leave empty to not change faces and Insignias
	faces[] = {"faceset:persian", "faceset:african", "faceset:caucasian", "faceset:asian"};
	insignias[] = {
		"corpsec1"
	};
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
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
		"ItemGPS"
	};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code =  "_this call pca_fnc_unlimitedAmmo";	
};

class sf_rm : sf_baseMan
{
	displayName = "SF Rifleman";
	primaryWeapon[] = 
	{
		"arifle_NCAR15_F"
	};
	scope[] = 
	{
		"optic_arco_blk_f"
	};
	attachment[] = 
	{
		"acc_pointer_ir"
	};
	silencer[] = 
	{
		"muzzle_snds_b"
	};	
	sidearmWeapon[] = 
	{
		"hgun_Rook40_F"
	};
	sidearmAttachments[] = 
	{
		"muzzle_snds_l"
	};	
	magazines[] =
	{
		LIST_20("ACE_30Rnd_580x42_Mag_red"),
		LIST_4("16Rnd_9x21_Mag"),
		LIST_2("rhs_mag_rgn"),
		LIST_2("rhs_mag_rdg2_white")
	};
};

class sf_ar : sf_rm
{
	displayName = "SF Autorifleman";
	primaryWeapon[] =
	{
		"arifle_NCAR15_MG_F"
	};
	magazines[] =
	{
		LIST_10("ACE_100Rnd_580x42_Drum_tracer_red"),
		LIST_4("16Rnd_9x21_Mag"),
		LIST_2("rhs_mag_rgn"),
		LIST_2("rhs_mag_rdg2_white")
	};	
};

class sf_rm_at : sf_rm
{
	displayName = "SF Rifleman (AT)";
	primaryWeapon[] =
	{
		"arifle_NCAR15B_F"
	};
	secondaryWeapon[] =
	{
		"launch_RPG32_black_F"
	};
	backpackItems[] =
	{
		LIST_2("RPG32_F"),
		"RPG32_HE_F"
	};
};

class sf_dm : sf_rm
{
	displayName = "SR Marksman";
	primaryWeapon[] =
	{
		"srifle_DMR_03_F"
	};
	scope[] =
	{
		"optic_sos"
	};
	bipod[] =
	{
		"bipod_02_f_blk"
	};
	silencer[] =
	{
		"muzzle_snds_b"
	};
	magazines[] =
	{
		LIST_20("20Rnd_762x51_Mag"),
		LIST_4("16Rnd_9x21_Mag"),
		LIST_2("rhs_mag_rgn"),
		LIST_2("rhs_mag_rdg2_white")
	};	
};

class sf_tl : sf_rm
{
	displayName = "SF Team Leader";
	primaryWeapon[] =
	{
		"arifle_NCAR15_GL_F"
	};
	magazines[] +=
	{
		LIST_5("1Rnd_HE_Grenade_shell"),
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class sf_medic : sf_rm
{
	displayName = "SF Medic";
	traits[] = {"medic"};
	primaryWeapon[] =
	{
		"arifle_NCAR15B_F"
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
		LIST_2("ACE_adenosine")
	};	
};