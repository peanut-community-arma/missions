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
		"JAM_U_BDU_oli",
		"JAM_U_BDU_Rolled_oli"
	};
	vest[] = 
	{
		"V_sns_m58_p37_bare"
	};
	backpack[] = 
	{
		LIST_4(""),
		"B_simc_USMC65_M41_Roll",
		"B_simc_USMC65_M41_flat"
	};
	headgear[] = 
	{
		LIST_3("H_Simc_SVN_M1C_Cl"),
		LIST_2("H_Simc_SVN_M1C_ben_ns"),
		LIST_2("H_Simc_SVN_M1C_net_ben")
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G3A3_ris"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_4("CUP_20Rnd_762x51_G3")
	};
};

class rm1 : rm 
{
	displayName = "Pioneer (UZI)";
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_UZI"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_32Rnd_9x19_UZI_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"B_simc_USMC65_M41_flat"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G3A3_ris"
	};
	bipod[] = 
	{
		"CUP_bipod_G3"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_8("CUP_20Rnd_TE1_Red_Tracer_762x51_G3")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"V_Simc_56_60_doppel_ligt"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_MG3"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_4("CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
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
		"B_simc_packboard_flak_roket_2"
	};
	secondaryWeapon[] = 
	{
		"sp_fwa_m2_carlGustav"
	};
	secondaryAttachments[] = 
	{
		""
	};
	backpackItems[] = 
	{
		LIST_2("CUP_MAAWS_HEAT_M"),
		"CUP_MAAWS_HEDP_M"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	backpack[] = 
	{
		"B_simc_USMC65_M41_flat"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G3A3_ris"
	};
	secondaryWeapon[] = 
	{
		"ptv_hk69"
	};
	magazines[] += 
	{
		LIST_5("1Rnd_HE_Grenade_shell"),
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	vest[] =
	{
		"V_sns_m58_p37_m43"
	};
	backpack[] = 
	{
		"B_simc_pack_med_m5"
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
		"CUP_MineE_M"
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	headgear[] = 
	{
		"CUP_H_Ger_Beret_TankCommander_Blk"
	};
	backpack[] = 
	{
		""
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
		LIST_3("CUP_30Rnd_9x19_MP5")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	vest[] =
	{
		"Aircrew_vest_2_NH"
	};
	headgear[] = 
	{
		"CUP_H_RUS_ZSH_Shield_Up",
		"CUP_H_RUS_ZSH_Shield_Down"
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
		LIST_3("CUP_30Rnd_9x19_MP5")
	};
};