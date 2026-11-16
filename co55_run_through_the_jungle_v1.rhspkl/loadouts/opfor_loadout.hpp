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
		"U_Simc_vc_black_1",
		"U_Simc_vc_black_1_trop",
		"U_Simc_vc_black_2",
		"U_Simc_vc_black_2_trop",
		"U_Simc_vc_blau_1",
		"U_Simc_vc_blau_1_trop",
		"U_Simc_vc_blau_2",
		"U_Simc_vc_blau_2_trop",
		"U_Simc_vc_grun_1",
		"U_Simc_vc_grun_1_trop",
		"U_Simc_vc_grun_2",
		"U_Simc_vc_grun_2_trop"
	};
	vest[] = 
	{
		LIST_2("pca_vest_invisible"),
		"V_Simc_mk56_alt"
	};
	headgear[] = 
	{
		LIST_5(""),
		LIST_4("JAM_H_VietPithHelmet_cover_prp"),
		LIST_4("JAM_H_VietPithHelmet_cover_net_prp"),
		LIST_4("H_Simc_Boon_zwart_2"),
		"H_Simc_nasi"
	};
	goggles[] = 
	{
		LIST_4(""),
		"CUP_FR_NeckScarf4",
		"CUP_FR_NeckScarf5"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_Early"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_762x39_AK47_M")
	};
};

class rm1 : rm 
{
	displayName = "Rifleman (SKS)";
	vest[] =
	{
		"V_Simc_mk56_sks"
	};
	primaryWeapon[] = 
	{
		"CUP_SKS"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("CUP_10Rnd_762x39_SKS_M")
	};
};

class rm2 : rm 
{
	displayName = "Rifleman (SMG)";
	vest[] =
	{
		"JAM_V_Equip_VietMinh_smg_01"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_smg_mat49"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("sp_fwa_32Rnd_9x19_MAT49_Ball")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] =
	{
		"JAM_V_Equip_VietMinh_mg_01"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"JAM_V_Equip_VietMinh_mg_01"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
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
		"hendrix_rpg_1"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	secondaryAttachments[] = 
	{
		""
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
		"CUP_arifle_AKM_GL_Early"
	};
	magazines[] += 
	{
		LIST_5("CUP_1Rnd_HE_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"JAM_B_Sidor_khk"
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
		"pca_backpack_invisible"
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
		"CUP_H_SLA_TankerHelmet"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_smg_mat49"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("sp_fwa_32Rnd_9x19_MAT49_Ball")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"CUP_H_RUS_ZSH_Shield_Up",
		"CUP_H_RUS_ZSH_Shield_Down"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_smg_mat49"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("sp_fwa_32Rnd_9x19_MAT49_Ball")
	};
};