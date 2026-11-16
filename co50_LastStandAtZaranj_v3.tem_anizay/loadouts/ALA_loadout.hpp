/*
	* Anizay Liberation Army, made by veerserif (2020 third-string power with ION advisors)
	* Based on CUP Takistani Liberation Army composition
	* Using FAL with PKM, wearing PASGT vests, SSh-68 helmets. Yeah IDK either.
*/

// Weaponless Baseclass
class baseMan 
{
	displayName = "Unarmed";
	// All Randomized. Use LIST_X("className") for multiple items in an array. 
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {"default"};
	hmd[] = {};
	// Leave empty to not change faces and Insignias -> example: faces[] = {};
	faces[] = {};
	insignias[] = {};
	//All Randomized. Add Primary Weapon and attachments.
	//Leave Empty to remove all. {"Default"} for using original items the character start with.
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	// *WARNING* secondaryAttachments[] arrays are NOT randomized.
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	// These are added to the uniform or vest first - overflow goes to backpack if there's any.
	magazines[] = {};
	items[] = 
	{
		//LIST_2("ACE_fieldDressing"),
		//"ACE_packingBandage",
		//"ACE_quikclot",
		//"ACE_tourniquet",
		//"ACE_morphine",
		//"ACE_splint"
	};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	// These are put directly into the backpack.
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit.
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		LIST_4("$NONE_usm_bdu_tan$"),
		"$NONE_usm_bdu_taki$"
	};
	vest[] = 
	{
		LIST_3("CUP_V_O_TK_Vest_1"),
		"bear_chicom_takistani"
	};
	headgear[] = 
	{
		"pca_ssh68_grn_net",
		LIST_2("pca_ssh68_grn")
	};
	items[] = 
	{
		LIST_2("FirstAidKit")
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_FNFAL"
	};
	scope[] = 
	{
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_11("CUP_20Rnd_762x51_FNFAL_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	vest[] =
	{
		"CUP_V_B_PASGT_no_bags_OD"
	};
	backpack[] =
	{
		"B_TacticalPack_rgr"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG26"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"CUP_B_TK_RPG_Backpack_Single"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	secondaryAttachments[] = 
	{
	};
	backpackItems[] = 
	{
		"CUP_PG7VL_M"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2_GL"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_11("CUP_30Rnd_556x45_Stanag"),
		LIST_9("CUP_1Rnd_HEDP_M203"),
		LIST_2("CUP_1Rnd_Smoke_M203")
	};
};

class medic : rm 
{
	displayName = "Medic";
	vest[] = 
	{
		"rhs_6b23_digi_medic"
	};
	backpack[] = 
	{
		"rhs_rk_sht_30_emr",
		"rhs_tortila_emr"
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

class mltsks : rm
{
	displayName = "Militia (SKS)";
	uniform[] = 
	{
		"CUP_O_TKI_Khet_Partug_05",
		"CUP_O_TKI_Khet_Partug_06",
		"CUP_O_TKI_Khet_Jeans_02",
		"CUP_O_TKI_Khet_Partug_01"
	};
	vest[] = 
	{
		"CUP_V_OI_TKI_Jacket6_06",
		"CUP_V_OI_TKI_Jacket6_05",
		"CUP_V_O_TK_Vest_1",
		"bear_chicom_takistani"
	};
	headgear[] = 
	{
		LIST_3(""),
		"H_ShemagOpen_tan",
		"CUP_H_TKI_Lungee_Open_02",
		"CUP_H_TKI_Pakol_1_01",
		LIST_2("pca_ssh68_grn_net"),
		LIST_2("pca_ssh68_grn")
	};
	items[] = 
	{
		LIST_2("FirstAidKit")
	};
	primaryWeapon[] = 
	{
		"Opf_arifle_SKS_F"
	};
	scope[] = 
	{
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_20("fwa_10Rnd_762x39_sks")
	};
};

class mltakm : mltsks
{
	displayName = "Militia (AKM)";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_Early"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_11("CUP_30Rnd_762x39_AK47_bakelite_M")
	};
};

class sp_rm : rm 
{
	displayName = "Spec Ops Rifle";
	uniform[] =
	{
		"$NONE_usm_bdu_taki$"
	};
	vest[] = 
	{
		LIST_3("pca_md99_od_rifleman"),
		"pca_md99_od_rifleman_radio"
	};
	headgear[] = 
	{
		"CUP_H_RUS_K6_3_Goggles_black",
		LIST_2("CUP_H_RUS_K6_3_black")
	};
	goggles[] = 
	{
		"CUP_FR_NeckScarf3",
		"CUP_FR_NeckScarf"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_HK416_Black"
	};
	scope[] = 
	{
		"cup_optic_holoblack"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_13("CUP_30Rnd_556x45_Emag")
	};
};

class sp_gren : sp_rm 
{
	displayName = "Spec Ops Grenade";
	primaryWeapon[] = 
	{
		"CUP_arifle_HK416_M203_Black"
	};
	scope[] = 
	{
		"cup_optic_holoblack"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_13("CUP_30Rnd_556x45_Emag"),
		LIST_9("CUP_1Rnd_HEDP_M203"),
		LIST_2("CUP_1Rnd_Smoke_M203")
	};
};

class sp_mg : sp_rm
{
	displayName = "Spec Ops MG";
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg"
	};
	backpack[] =
	{
		"B_Kitbag_rgr"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_7("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};