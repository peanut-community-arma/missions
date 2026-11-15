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
		"Atlas_U_O_Afghanka_01_semiarid_F",
		"Atlas_U_O_Afghanka_02_semiarid_F"
	};
	vest[] = 
	{
		LIST_2("Atlas_V_ORigLBV_khk_F"),
		LIST_2("Atlas_V_OCarrierRig_Lite_khk_F"),
		"Atlas_V_OCarrierRig_khk_F",
		"V_BandollierB_khk",
		"V_ChestrigF_khk",
		"V_HarnessO_brn",
		"V_TacVest_khk"
	};
	headgear[] = 
	{
		LIST_4("H_PASGT_basic_sand_F"),
		LIST_4("H_PASGT_goggles_sand_F"),
		LIST_2("Atlas_H_PASGT_Cover_O_SAHex_F"),
		"H_Booniehat_semiarid",
		"Atlas_H_MilCap_nohs_semiarid"
	};
	goggles[] = 
	{
		LIST_15(""),
		"G_Aviator",
		"G_Bandanna_aviator",
		"G_Bandanna_blk",
		"G_Bandanna_shades",
		"G_Shades_Blue",
		"G_Cigarette",
		"G_Shemag_red",
		"G_Shemag_oli",
		"Aegis_G_Condor_EyePro_F",
		"G_Balaclava_snd_lxWS",
		"CUP_Beard_Brown",
		"CUP_G_PMC_RadioHeadset"
	};
	primaryWeapon[] = 
	{
		LIST_3("arifle_Velko_lxWS"),
		"arifle_VelkoR5_lxWS"
	};
	scope[] = 
	{
		LIST_10(""),
		"optic_ACO_grn",
		"Aegis_optic_1p87"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_8("35Rnd_556x45_Velko_reload_tracer_green_lxWS")
	};
};

class rm2 : rm
{
	displayName = "Rifleman (QBZ)";
	primaryWeapon[] = 
	{
		"arifle_CTAR_blk_F"
	};
	scope[] = 
	{
		LIST_10(""),
		"optic_ACO_grn"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_8("30Rnd_580x42_Mag_F")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"LMG_S77_lxWS",
		LIST_3("LMG_S77_Compact_lxWS")
	};
	backpack[] = 
	{
		"B_FieldPack_khk"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_6("100Rnd_762x51_S77_Green_lxWS")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"Atlas_V_OCarrierRig_CQB_khk_F"
	};
	backpack[] = 
	{
		"B_FieldPack_khk"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_FNMAG_RIS_modern"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M")
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
		"hendrix_rpg_2"
	};
	secondaryWeapon[] = 
	{
		"Aegis_launch_RPG7M_F"
	};
	backpackItems[] = 
	{
		LIST_3("CUP_PG7VL_M"),
		"CUP_OG7_M"
	};
};

class rm_aa : rm 
{
	displayName = "Rifleman (AA)";
	secondaryWeapon[] = 
	{
		"CUP_launch_Igla"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] =
	{
		"Atlas_V_OCarrierRig_GL_khk_F"
	};
	primaryWeapon[] = 
	{
		"arifle_VelkoR5_GL_lxWS"
	};
	magazines[] += 
	{
		LIST_1("1Rnd_HE_Grenade_shell"),
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_FieldPack_khk"
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
		"B_FieldPack_khk"
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
		"H_Tank_black_F"
	};
	primaryWeapon[] = 
	{
		"SMG_05_F"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("30Rnd_9x21_Mag_SMG_02")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"H_PilotHelmetHeli_B",
		"H_PilotHelmetHeli_B_visor_up"
	};
	primaryWeapon[] = 
	{
		"SMG_05_F"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("30Rnd_9x21_Mag_SMG_02")
	};
};