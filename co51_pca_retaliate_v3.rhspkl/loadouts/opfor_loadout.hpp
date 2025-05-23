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
		"CUP_U_I_RACS_mech_1",
		"CUP_U_I_RACS_mech_2"
	};
	vest[] = 
	{
		"simc_vest_pasgt_lc1_od3",
		"simc_vest_pasgt_lc1_combat_od3",
		"simc_vest_pasgt_lc1_etool_od3",
		"simc_vest_pasgt_lc2_od3"
		//"simc_vest_pasgt_lc2_alt_od3"
	};
	headgear[] = 
	{
		"CUP_H_LWHv2_tigerstripe",
		"CUP_H_LWHv2_tigerstripe_ess_comms",
		"CUP_H_LWHv2_tigerstripe_comms",
		"CUP_H_PASGTv2_NVG_tigerstripe",
		"CUP_H_PASGTv2_tigerstripe"
	};
	backpack[] = 
	{};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2"
	};
	attachment[] = 
	{
		"pca_flashlight_led_wide"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_7("CUP_30Rnd_556x45_Stanag"),
		LIST_2("ACE_HandFlare_White")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_M249_E2"
	};
	vest[] = 
	{
		"simc_vest_pasgt_lc2_saw_od3"
	};
	backpack[] = 
	{
		"CUP_B_USMC_AssaultPack"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_3("CUP_200Rnd_TE4_Red_Tracer_556x45_M249"),
		LIST_2("ACE_HandFlare_White")
	};
};

class mg : ar 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_M240_norail"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_3("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"),
		LIST_2("ACE_HandFlare_White")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_m72a7"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"CUP_B_USMC_AssaultPack"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] = 
	{
		"rhs_acc_pgo7v3"
	};
	backpackItems[] = 
	{
		LIST_4("rhs_rpg7_PG7VL_mag"),
		"rhs_rpg7_PG7VR_mag",
		"rhs_rpg7_OG7V_mag"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2_GL"
	};
	vest[] = 
	{
		"simc_vest_pasgt_lc1_gren_od3"
	};
	magazines[] += 
	{
		LIST_9("rhs_mag_M441_HE"),
		LIST_5("rhs_mag_M664_red_cluster"),
		LIST_2("rhs_mag_m714_White"),
		LIST_2("rhs_mag_m576")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"CUP_B_USMC_AssaultPack"
	};
	backpackItems[] = 
	{
		LIST_14("ACE_fieldDressing"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_bloodIV"),
	};
};

class engineer : rm 
{
	displayName = "Engineer";
	backpack[] = 
	{
		"rhs_rk_sht_30_emr_engineer_empty"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter",
		LIST_2("rhs_ec400_sand_mag")
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	uniform[] = 
	{
		"CUP_U_B_USArmy_PilotOverall"
	};
	vest[] = 
	{
		"simc_vest_pasgt_od3"
	};
	headgear[] = 
	{
		"CUP_H_CVC"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_MP5A5"
	};
	scope[] = {};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("CUP_30Rnd_9x19_MP5"),
		LIST_2("ACE_HandFlare_White")
	};
};

class pilot : crewman 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"CUP_H_SPH4_green",
		"CUP_H_SPH4_green_visor"
	};

};