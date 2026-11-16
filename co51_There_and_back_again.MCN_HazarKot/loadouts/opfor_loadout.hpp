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
	displayName = "(Takistani)Rifleman";
	uniform[] = 
	{
		LIST_3("pca_uniform_afghanka_taki_lizard"),
		LIST_1("pca_uniform_afghanka_taki_lizard_od_1"),
		LIST_1("pca_uniform_afghanka_taki_lizard_od_2")
	};
	vest[] = 
	{
		LIST_3("rhs_suspender_AK4"),
		LIST_1("rhs_suspender_AK"),
		LIST_1("rhs_suspender_AK8_chestrig")
	};
	headgear[] = 
	{
		LIST_3("pca_ssh68_grn"),
		LIST_1("pca_ssh68_grn_net")
	};
	backpack[] = 
	{
		LIST_7("pca_backpack_invisible"),
		LIST_2("pca_rd54_oli")
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74_Early"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_7("rhs_30Rnd_545x39_7N10_AK")
	};
};

class ar : rm 
{
	displayName = "(Takistani)Automatic Rifleman";
	primaryWeapon[] = 
	{
		"$NONE_fwa_weap_rpd$"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_3("fwa_100rnd_762x39mm_rpd_mixed")
	};
};

class mg : rm 
{
	displayName = "(Takistani)Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_3("rhs_100Rnd_762x54mmR")
	};
};

class rm_lat : rm 
{
	displayName = "(Takistani)Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_m72a7"
	};
};

class rm_mat : rm 
{
	displayName = "(Takistani)Rifleman (MAT)";
	backpack[] = 
	{
		"rhs_rk_sht_30_emr"
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

class rmS : baseMan
{
	displayName = "(Smaug)Rifleman";
	uniform[] = 
	{
		"usp_g3c_kp_or_blk"
	};
	vest[] = 
	{
		"pca_mbav_light_blk"
	};
	headgear[] = 
	{
		LIST_3("H_HelmetSpecter_black_F"),
		LIST_1("H_HelmetSpecter_black_headset_F")
	};
	backpack[] = 
	{
		"pca_eagle_a3_blk"
	};
	goggles[] = 
	{
		"G_Balaclava_light_G_blk_F"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G36KA3"
	};
	scope[] = 
	{
		"optic_MRCO"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_15("hlc_30Rnd_556x45_EPR_L5")
	};
};

class arS : rmS
{
	displayName = "(Smaug)Automatic Rifleman";
	primaryWeapon[] = 
	{
		"LMG_Zafir_black_F"
	};
	vest[] = 
	{
		"pca_mbav_mg_blk"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_7("150Rnd_762x54_Box_Tracer")
	};
};

class rmS_lat : rmS
{
	displayName = "(Smaug)Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"launch_RPG32_black_F"
	};
	backpackItems[] += 
	{
		"RPG32_HE_F",
		LIST_3("RPG32_F")
	};

};

class markS : rmS
{
	displayName = "(Smaug)Marksman";
	primaryWeapon[] = 
	{
		"rhs_weap_svds"
	};
	scope[] = 
	{
		"rhs_acc_pso1m21"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_7("rhs_10Rnd_762x54mmR_7N1")
	};
};

class heavyS : rmS
{
	displayName = "(Smaug)Grenadier";
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_g36ka1_ksk_ag36$"
	};
	vest[] = 
	{
		"pca_mbav_grenadier_blk"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_10("hlc_30Rnd_556x45_EPR_L5"),
		LIST_5("rhs_mag_M441_HE")
	};
};