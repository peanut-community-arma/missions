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
		"CUP_U_B_BDUv2_OD",
		"$NONE_usm_bdu_btisrl_odg$",
		"$NONE_usm_bdu_bti_odg$",
		"CUP_U_B_BDUv2_roll2_OD",
		"CUP_U_B_BDUv2_roll_OD_US",
		"CUP_U_B_BDUv2_OD_US"
	};
	vest[] = 
	{
		"CUP_V_B_PASGT_OD"
	};
	headgear[] = 
	{
		LIST_4("CUP_H_LWHv2_OD"),
		LIST_2("CUP_H_LWHv2_OD_comms"),
		LIST_1("CUP_H_LWHv2_OD_ess_comms")
	};
	backpack[] = 
	{
		LIST_7("pca_backpack_invisible"),
		LIST_2("CUP_B_AlicePack_OD")
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2"
	};
	magazines[] = 
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_7("rhs_mag_30Rnd_556x45_M855_Stanag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_M249_E1"
	};
	magazines[] = 
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_5("rhsusf_200rnd_556x45_M855_mixed_box")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"rhs_weap_fnmag"
	};
	magazines[] = 
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_3("rhsusf_100Rnd_762x51_m62_tracer")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_M136"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_maaws"
	};
	backpackItems[] = 
	{
		LIST_3("rhs_mag_maaws_HEAT"),
		LIST_2("rhs_mag_maaws_HEDP")
	};
};

class r_rm : baseMan
{
	displayName = "Royal Rifleman";
	uniform[] = 
	{
		"pca_g3_tsw"
	};
	vest[] = 
	{
		"pca_mbav_light_rgr"
	};
	headgear[] = 
	{
		LIST_4("CUP_H_CZ_Helmet10"),
		LIST_1("CUP_H_CZ_Helmet09")
	};
	backpack[] = 
	{
		"pca_eagle_a3_rgr"
	};
	primaryWeapon[] = 
	{
		"bear_weap_m4a1_blockII_green"
	};
	scope[] = 
	{
		"rhsusf_acc_ACOG"
	};
	magazines[] = 
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag")
	};
};

class r_ar : r_rm 
{
	displayName = "Royal Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_m249_pip2"
	};
	vest[] = 
	{
		"pca_mbav_mg_rgr"
	};
	magazines[] = 
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_5("rhsusf_200rnd_556x45_mixed_box")
	};
};

class r_mg : r_rm 
{
	displayName = "Royal Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_M60E4"
	};
	vest[] = 
	{
		"pca_mbav_mg_rgr"
	};
	magazines[] = 
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_3("rhsusf_100Rnd_762x51_m62_tracer")
	};
};

class r_rm_lat : r_rm 
{
	displayName = "Royal Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_M136"
	};
};

class r_rm_mat : r_rm 
{
	displayName = "Royal Rifleman (MAT)";
	secondaryWeapon[] = 
	{
		"launch_MRAWS_green_rail_F"
	};
	backpackItems[] = 
	{
		LIST_3("rhs_mag_maaws_HEAT"),
		LIST_2("rhs_mag_maaws_HEDP")
	};
};

class crew : r_rm 
{
	displayName = "Crew";
	backpack[] = 
	{
		""
	};
	headgear[] = 
	{
		"CUP_H_CVC"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m4_carryhandle"
	};
};