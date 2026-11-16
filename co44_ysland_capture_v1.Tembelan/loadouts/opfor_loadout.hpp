class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"CUP_I_B_PMC_Unit_20",
		"CUP_I_B_PMC_Unit_22",
		"CUP_I_B_PMC_Unit_21",
		"CUP_I_B_PMC_Unit_19",
		"CUP_I_B_PMC_Unit_17",
		"CUP_I_B_PMC_Unit_13",
		"CUP_I_B_PMC_Unit_14",
		"CUP_I_B_PMC_Unit_16",
		"CUP_I_B_PMC_Unit_15"
	};
	vest[] = 
	{
		"V_TacVest_blk",
		"V_TacVest_brn",
		"V_TacVest_camo",
		"V_TacVest_khk",
		"V_TacVest_oli",
		"V_TacVest_blk",
		"V_TacVest_grn",
		"V_TacVest_oli",
		"V_TacVest_grn",
		"V_TacVest_tan"
	};
	backpack[] = {};
	headgear[] = 
	{
		"CUP_H_PMC_Beanie_Black",
		"CUP_H_PMC_Beanie_Headphones_Black",
		"CUP_H_PMC_Beanie_Khaki",
		"CUP_H_PMC_Beanie_Headphones_Khaki",
		"CUP_H_PMC_Beanie_Winter",
		"CUP_H_PMC_Beanie_Headphones_Winter",
		"CUP_H_PMC_Cap_Tan",
		"CUP_H_PMC_Cap_Burberry",
		"CUP_H_PMC_Cap_Back_Burberry",
		"CUP_H_PMC_Cap_Back_PRR_Burberry",
		"CUP_H_PMC_Cap_PRR_Burberry",
		"CUP_H_PMC_Cap_Grey",
		"CUP_H_PMC_Cap_Back_Grey",
		"CUP_H_PMC_Cap_Back_EP_Grey",
		"CUP_H_PMC_Cap_Back_PRR_Grey",
		"CUP_H_PMC_Cap_EP_Grey",
		"CUP_H_PMC_Cap_PRR_Grey",
		"CUP_H_PMC_Cap_Back_Tan",
		"CUP_H_PMC_Cap_Back_EP_Tan",
		"CUP_H_PMC_Cap_Back_PRR_Tan",
		"CUP_H_PMC_Cap_EP_Tan",
		"CUP_H_PMC_Cap_PRR_Tan",
		"CUP_H_PMC_EP_Headset",
		"CUP_H_PMC_PRR_Headset"
	};
	goggles[] = {};
	hmd[] = {};
	// Leave empty to not change faces and Insignias
	faces[] = {"faceset:persian", "faceset:african", "faceset:caucasian", "faceset:asian"};
	insignias[] = {
		"CorpSec1"
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
		"CUP_smg_MP5A5"
	};
	scope[] =
	{
		"",
		"optic_aco_grn_smg",
		"optic_aco_smg",
		"optic_holosight_smg_blk_f"
	};
	attachment[] =
	{
		"$NONE_hlc_acc_surefiregrip$"
	};
	sidearmWeapon[] =
	{
		"$NONE_hlc_pistol_p226$"
	};
	magazines[] =
	{
		LIST_2("hlc_12Rnd_40SW_FMJ_P226"),
		LIST_10("hlc_30Rnd_9x19_JHP_MP5"),

	};
};

class ar : rm 
{
	displayName = "Shotgunner";
	primaryWeapon[] = 
	{
		"rhs_weap_M590_8RD"
	};
	bipod[] =
	{
		"rhsusf_acc_grip1"
	};
	magazines[] = 
	{
		LIST_2("hlc_12Rnd_40SW_FMJ_P226"),
		LIST_10("rhsusf_8Rnd_00Buck"),
		LIST_2("SmokeShell")
	};
};

class rm_at : rm 
{
	displayName = "Rifleman (AT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg18"
	};
};

class tl : rm
{
	displayName = "Team Leader";
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
		"B_Messenger_Gray_F"
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
		LIST_2("SmokeShell")
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
		LIST_2("SmokeShell")
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
		LIST_2("SmokeShell")
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