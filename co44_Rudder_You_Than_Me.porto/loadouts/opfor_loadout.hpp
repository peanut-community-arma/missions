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
		"rhsgref_uniform_altis_lizard"
	};
	vest[] = 
	{
		"simc_m69_lce_56"
	};
	headgear[] = 
	{
		"bear_mich_lizard"
	};
	backpack[] = 
	{
		"pca_eagle_a3_rgr"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2"
	};
	attachment[] = 
	{
		LIST_4("ACE_Flashlight_Maglite_ML300L"),
		LIST_6("")
	};
	magazines[] = 
	{
		"SmokeShell",
		"CUP_HandGrenade_M67",
		LIST_7("rhs_mag_30Rnd_556x45_M193_Stanag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_M60"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_3("rhsusf_100Rnd_762x51")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	primaryWeapon[] = 
	{
		"rhsusf_weap_MP7A2"
	};
	secondaryWeapon[] = 
	{
		LIST_2("rhs_weap_m72a7"),
		LIST_8("")
	};
	attachment[] = 
	{
		LIST_4("ACE_Flashlight_Maglite_ML300L"),
		LIST_6("")
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_8("rhsusf_mag_40Rnd_46x30_FMJ")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2_GL"
	};
	magazines[] += 
	{
		LIST_7("rhs_mag_30Rnd_556x45_M193_Stanag"),
		LIST_5("1Rnd_HE_Grenade_shell"),
		LIST_4("rhs_mag_m714_white"),
		LIST_8("CUP_1Rnd_StarCluster_Green_M203")
	};
};

class mg : rm 
{
	displayName = "Automatic Rifleman (Modernized)";
	hmd[] =
	{
		"ACE_NVG_Gen1"
	};
	vest[] = 
	{
		"pca_otv_greek_lizard"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_minimi_para_railed"
	};
	scope[] =
	{
		"ptv_acc_aimcs_3x"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("rhsusf_200rnd_556x45_mixed_box")
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (Modernized)";
	hmd[] =
	{
		"ACE_NVG_Gen1"
	};
	vest[] = 
	{
		"pca_otv_greek_lizard"
	};
	backpack[] = 
	{
		"pca_eagle_a3_rgr"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_hk416d10"
	};
	scope[] =
	{
		"ptv_acc_aimcs_3x"
	};
	magazines[] = 
	{
		"SmokeShell",
		"CUP_HandGrenade_M67",
		LIST_7("rhs_mag_30Rnd_556x45_Mk318_Stanag")
	};
};

class engineer : rm 
{
	displayName = "Grenadier (Modernized)";
	hmd[] =
	{
		"ACE_NVG_Gen1"
	};
	vest[] = 
	{
		"pca_otv_greek_lizard"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_hk416d10_m320"
	};
	magazines[] = 
	{
		"SmokeShell",
		"CUP_HandGrenade_M67",
		LIST_7("rhs_mag_30Rnd_556x45_Mk318_Stanag"),
		LIST_5("1Rnd_HE_Grenade_shell"),
		LIST_4("rhs_mag_m714_white"),
		LIST_8("CUP_1Rnd_StarCluster_Green_M203")
	};
};

class medic : rm 
{
	displayName = "Medic";
	vest[] = 
	{
		"rhs_6b23_digi_medic"
	};
	backpack[] = 
	{
		"rhs_rk_sht_30_emr",
		"rhs_tortila_emr"
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

class crewman : rm 
{
	displayName = "Crewman";
	vest[] = 
	{
		"rhs_6b23_digi_6sh92_headset_spetsnaz"
	};
	headgear[] = 
	{
		"rhs_6b48"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_ak105"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	vest[] = 
	{
		"rhs_6b23_digi_6sh92_spetsnaz2"
	};
	headgear[] = 
	{
		"rhs_zsh7a_mike_green",
		"rhs_zsh7a_mike_green_alt"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_ak105"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};