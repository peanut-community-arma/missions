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
		"U_simc_bdu_blench_mout",
		"U_Simc_bdu_blench_mout_trop",
		"U_Simc_bdu_blench_mout_knee",
		"U_Simc_bdu_blench_mout_knee_trop",
		"U_Simc_bdu_blench_mout_nomex"
	};
	vest[] = 
	{
		"JCA_V_CarrierRigKBT_01_combat_black_F",
		"JCA_V_CarrierRigKBT_01_command_black_F",
		"JCA_V_CarrierRigKBT_01_CQB_black_F",
		"JCA_V_CarrierRigKBT_01_light_black_F",
		"JCA_V_CarrierRigKBT_01_recon_black_F",
		"JCA_V_CarrierRigKBT_01_tactical_black_F",
		"JCA_V_CarrierRigKBT_01_black_F",
		"JCA_V_CarrierRigKBT_01_heavy_black_F"
	};
	headgear[] = 
	{
		"H_HelmetSpecter_black_F",
		"H_HelmetSpecter_black_headset_F"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_vityaz_top_rail",
		"CUP_smg_vityaz_vfg_top_rail",
		"CUP_smg_vityaz_vfg_front_rail"
	};
	scope[] = 
	{
		"optic_Yorris"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("CUP_30Rnd_9x19AP_Vityaz")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74M"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("CUP_60Rnd_545x39_AK74M_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"JCA_V_CarrierRigKBT_01_heavy_black_F"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg"
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
		"CUP_launch_HCPF3"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"B_Carryall_blk"
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

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74M_GL"
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
		"CUP_B_RUS_Patrol_bag_Summer"
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
		"B_Carryall_blk"
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
		"CUP_arifle_AK105"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_545x39_AK74M_M")
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
		"CUP_arifle_AK105"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_545x39_AK74M_M")
	};
};