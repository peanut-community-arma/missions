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
		"Atlas_U_I_Afghanka_01_ardi_half_F",
		"Atlas_U_I_Afghanka_02_ardi_half_F",
		LIST_3("Atlas_U_I_Afghanka_01_ardi_full_F"),
		LIST_3("Atlas_U_I_Afghanka_02_ardi_full_F")
	};
	vest[] = 
	{
		LIST_4("Atlas_V_OCarrierRig_Lite_alt_khk_F"),
		LIST_2("Atlas_V_OCarrierRig_CQB_alt_khk_F"),
		"Atlas_V_OCarrierRig_GL_alt_khk_F"
	};
	headgear[] = 
	{
		LIST_3("Atlas_H_HelmetCCH_HiCut_khk_F"),
		LIST_3("Atlas_H_HelmetCCH_HiCut_Headset_khk_F"),
		"H_Booniehat_tan",
		"H_Beret_grn"
	};
	primaryWeapon[] = 
	{
		"arifle_TRG21_black_F"
	};
	scope[] = 
	{
		"CUP_optic_1P87_RIS"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_11("CUP_30Rnd_556x45_Emag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"B_FieldPack_cbr"
	};
	primaryWeapon[] = 
	{
		"SPS_KAC_LAMG_black_F"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("SPS_KAC_LAMG_150rnd_Box")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	backpack[] = 
	{
		"B_FieldPack_cbr"
	};
	primaryWeapon[] = 
	{
		"LMG_S77_lxWS"
	};
	scope[] = 
	{
		"Aegis_optic_1p87"
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
	backpack[] = 
	{
		"B_FieldPack_cbr"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG26"
	};
};

class rm_aa : rm 
{
	displayName = "Rifleman (AA)";
	backpack[] = 
	{
		"B_FieldPack_cbr"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_9K32Strela"
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
		"CUP_launch_RPG7V"
	};
	secondaryAttachments[] = 
	{
		"CUP_optic_PGO7V3"
	};
	backpackItems[] = 
	{
		LIST_3("CUP_PG7VL_M"),
		"CUP_OG7_M"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"arifle_TRG21_GL_black_F"
	};
	magazines[] += 
	{
		LIST_3("CUP_1Rnd_HE_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_Kitbag_khk"
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
		"B_TacticalPack_khk"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter",
		"CUP_MineE_M"
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	headgear[] = 
	{
		"H_HelmetCrew_B"
	};
	vest[] = 
	{
		"Atlas_V_OCarrierRig_khk_F"
	};
	primaryWeapon[] = 
	{
		"hgun_PDW2000_F"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("30Rnd_9x21_Mag_v2")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"H_PilotHelmetHeli_O",
		"H_PilotHelmetHeli_O_visor_up"
	};
	primaryWeapon[] = 
	{
		"hgun_PDW2000_F"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("30Rnd_9x21_Mag_v2")
	};
};