class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {};
	hmd[] = {};
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
		LIST_2("ACE_fieldDressing"),
		"ACE_packingBandage",
		"ACE_quikclot",
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
	code = "_this call pca_fnc_unlimitedAmmo";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"U_Simc_bdu_erla_blench_desu",
		"U_Simc_bdu_erla_blench_desu_low",
		"U_Simc_bdu_erla_blench_desu_roll",
		"U_Simc_bdu_erla_blench_desu_trop",
		"U_Simc_bdu_laat_desu_blench",
		"U_Simc_bdu_laat_desu_blench_trop",
		"U_Simc_bdu_laat_desu_blench_knee_trop",
		"U_simc_bdu_erla_blench_desu_nomex",
		"U_Simc_bdu_erla_desu_tee"
	};
	vest[] = 
	{
		"V_Simc_Alice_alt",
		"V_Simc_Alice_ligt",
		"V_Simc_Alice",
		"V_Simc_Alice_lc2"
	};
	headgear[] = 
	{
		LIST_3("H_Simc_pasgt_desu"),
		LIST_2("H_Simc_pasgt_desu_b_SWDG"),
		LIST_2("H_Simc_pasgt_desu_SWDG_low_b"),
		"H_Simc_pasgt_desu_SWDG",
		"H_Simc_Hat_Patrol_desu"
	};
	goggles[] = 
	{
		LIST_15(""),
		"G_Nomex_desu_fold",
		"CUP_RUS_Balaclava_blk",
		"G_Bandanna_blk",
		"G_simc_US_Bandoleer_556_fore",
		"G_simc_US_Bandoleer_556_left",
		"G_simc_US_Bandoleer_556_right",
		"murshun_cigs_cig0",
		"M40_Gas_mask_nbc_v2_g",
		"CUP_G_Scarf_Face_Tan",
		"G_Shemag_tan"
	};
	hmd[] = 
	{
		"G_Armband_NVG_racs_alt_F"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A1E1"
	};
	attachment[] = 
	{
		"acc_flashlight"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_7("CUP_30Rnd_556x45_Stanag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"V_Simc_Alice_60"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_m249_pip1"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_200Rnd_TE4_Red_Tracer_556x45_M249")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"V_Simc_Alice_60"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_M240"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_4("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"ptv_m72a7"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"ptv_M3_OD"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_Mk153Mod0"
	};
	backpackItems[] = 
	{
	    "CUP_SMAW_HEAA_M",
		"CUP_SMAW_HEDP_M"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A1E1GL"
	};
	magazines[] += 
	{
		LIST_3("UGL_FlareRed_Illumination_F"),
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_simc_pack_alice_0"
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
		LIST_2("ACE_bloodIV")
		//LIST_2("ACE_adenosine")
	};
};

class engineer : rm 
{
	displayName = "Engineer";
	backpack[] = 
	{
		"B_simc_pack_alice_0"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter",
		LIST_2("CUP_MineE_M")
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	headgear[] = 
	{
		"CUP_H_CVCH_des"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_MP5A5"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_30Rnd_9x19_MP5")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"CUP_H_SPH4_green",
		"CUP_H_SPH4_green_visor"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_MP5A5"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_30Rnd_9x19_MP5")
	};
};