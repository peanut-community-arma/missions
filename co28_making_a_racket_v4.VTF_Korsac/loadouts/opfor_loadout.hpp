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
		"Aegis_U_lxWS_ION_Casual_Hawaiian_F",
		"Aegis_U_lxWS_ION_Casual_Hawaiian_2_F"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	vest[] = 
	{
		"V_Simc_Alice"
	};
	headgear[] = 
	{
		LIST_3("H_Simc_Hat_Patrol_od7_swdg"),
		LIST_2("H_Simc_Hat_Patrol_od7_swdg_rear"),
		LIST_2("H_Simc_MC_hat_3")
	};
	primaryWeapon[] = 
	{
		"sp_fwa_smg_thompson_m1a1"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_11("sp_fwa_30Rnd_45acp_thompson_m1a1")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"sp_fwa_m1918a2_bar"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_9("sp_fwa_20Rnd_3006_BAR")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"V_Simc_61_60_2"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_m1919a6_browning"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_6("sp_fwa_50Rnd_3006_mag_turret")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	primaryWeapon[] = 
	{
		"sp_fwa_m1carbine"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_9("sp_fwa_15Rnd_30Carbine_m1_ball")
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"CUP_B_RUS_Patrol_bag_Summer"
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
		"pca_backpack_invisible"
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
		"CUP_B_RUS_Patrol_bag_6E5_Summer"
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
		"CUP_HandGrenade_M67",
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
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_30Rnd_545x39_AK74M_M")
	};
};