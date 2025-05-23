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
		"usp_g3c_kp_mx_blk",
		"usp_g3c_mx_blk",
		"usp_g3c_kp_or_blk",
		"usp_g3c_or_blk"
	};
	vest[] = 
	{
		"CUP_V_PMC_IOTV_Black_Patrol"
	};
	headgear[] = 
	{
		"ptv_m17_helmet_arc_blk"
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("aegis_assaultpack_blk"),
		"pca_eagle_a3_blk"
	};
	goggles[] = 
	{
		"G_Balaclava_TI_G_blk_F"
	};
	primaryWeapon[] = 
	{
		"aegis_weap_f2000_blk"
	};
	scope[] = 
	{
		"rhs_acc_1p87"
	};
	attachment[] = 
	{
		"pca_flashlight_sf"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("30Rnd_556x45_Stanag")
	};
};

class enforcer : baseMan
{
	displayName = "Enforcer";
	uniform[] = 
	{
		"U_B_GEN_Soldier_F"
	};
	vest[] = 
	{
		"aegis_tacvest_blk",
		"V_TacVest_blk_POLICE",
		"CUP_V_C_Police_Holster"
	};
	headgear[] = 
	{
		LIST_3(""),
		LIST_2("usm_bdu_8point_blu"),
		LIST_2("H_Beret_gen_F"),
		LIST_2("usm_helmet_pasgt_ce_blu")
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("aegis_assaultpack_blk"),
		"pca_eagle_a3_blk"
	};
	primaryWeapon[] = 
	{
		""
	};
	attachment[] = 
	{
		"pca_flashlight_sf"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Mk23"
	};
	sidearmAttachments[] = {
		"pca_flashlight_sf"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_15("CUP_12Rnd_45ACP_mk23")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"CUP_V_PMC_IOTV_Black_AR"
	};
	primaryWeapon[] = 
	{
		"LMG_Mk200_black_F"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("ACE_200Rnd_65x39_cased_Box_green")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] = 
	{
		"CUP_V_PMC_IOTV_Black_AR"
	};
	backpack[] = 
	{
		LIST_2("aegis_assaultpack_blk"),
		"pca_eagle_a3_blk"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Mk48"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("CUP_100Rnd_TE4_LRT4_Yellow_Tracer_762x51_Belt_M")
	};
};

class smg : enforcer 
{
	displayName = "Submachine Gunner";
	primaryWeapon[] = 
	{
		"CUP_smg_MP7"
	};
	sidearmWeapon[] = 
	{
		""
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("CUP_40Rnd_46x30_MP7")
	};
};

class enforcer_l : enforcer 
{
	displayName = "Enforcer Team Leader";
	primaryWeapon[] = 
	{
		"aegis_weap_tar21_blk"
	};
	sidearmWeapon[] = 
	{
		""
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("pca_mag_30Rnd_556x45_M855A1_Stanag_Blk")
	};
}

class enforcer_r : enforcer 
{
	displayName = "Enforcer Rifleman";
	primaryWeapon[] = 
	{
		"rhs_weap_m14_ris"
	};
	sidearmWeapon[] = 
	{
		""
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("20Rnd_762x51_Mag")
	};
}

class enforcer_sl : enforcer 
{
	displayName = "Enforcer Squad Leader";
	primaryWeapon[] = 
	{
		"aegis_weap_tar21_gl_blk"
	};
	sidearmWeapon[] = 
	{
		""
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("pca_mag_30Rnd_556x45_M855A1_Stanag_Blk"),
		LIST_3("CUP_1Rnd_HEDP_M203"),
		LIST_3("rhs_mag_m576"),
		LIST_3("1Rnd_Smoke_Grenade_shell")
	};
}

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_M136"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"pca_eagle_a3_blk"
	};
	secondaryWeapon[] = 
	{
		"aegis_weap_mraws_blk"
	};
	backpackItems[] = 
	{
		LIST_4("MRAWS_HEAT55_F"),
		"MRAWS_HEAT_F",
		"MRAWS_HE_F"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"CUP_V_PMC_IOTV_Black_Gren"
	};
	primaryWeapon[] = 
	{
		"aegis_weap_f2000_gl_blk"
	};
	magazines[] += 
	{
		LIST_3("CUP_1Rnd_HEDP_M203"),
		LIST_3("rhs_mag_m576"),
		LIST_3("1Rnd_Smoke_Grenade_shell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	vest[] = 
	{
		"CUP_V_PMC_IOTV_Black_TL"
	};
	backpack[] = 
	{
		"pca_eagle_a3_blk"
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

class engineer : rm 
{
	displayName = "Engineer";
	backpackItems[] += 
	{
		"ToolKit",
		"ACE_wirecutter"
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	vest[] = 
	{
		"CUP_V_PMC_IOTV_Black_Empty"
	};
	headgear[] = 
	{
		"CUP_H_CZ_Helmet05"
	};
	primaryWeapon[] = 
	{
		"aegis_weap_f2000c_blk"
	};
	scope[] = {};
};

class pilot : crewman 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"H_CrewHelmetHeli_B"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_MP7"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("CUP_40Rnd_46x30_MP7")
	};
};