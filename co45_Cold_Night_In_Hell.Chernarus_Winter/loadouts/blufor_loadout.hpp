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
	items[] = {};
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
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		LIST_1("usp_pcu_g3c_kp_mx_mcalp"),
		LIST_1("usp_pcu_g3c_kp_or_mcalp"),
		LIST_1("usp_pcu_g3c_mx_mcalp"),
		LIST_1("milgp_u_pcu_g3_field_pants_mcalpine")
	};
	vest[] = 
	{
		"pca_mbav_rifleman_wht"
	};
	headgear[] = 
	{
		"usp_opscore_mt_cover_ct_mcalp",
		"usp_opscore_mt_cover_mcalp"
	};
	backpack[] = 
	{
		"pca_eagle_a3_wht"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK12_AFG_black",
		"CUP_arifle_AK12_VG_black"
	};
	scope[] = 
	{
		"cup_optic_vortexrazor_uh1_black"
	};
	attachment[] = 
	{
		"pca_flashlight_sf"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint"),
		LIST_4("ACE_Chemlight_HiRed")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_15("pca_mag_30Rnd_545x39_AK12_Blk_7N22")
	};
	backpackItems[] = 
	{
		LIST_4("pca_mag_30Rnd_545x39_AK12_Blk_7N22")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"pca_mbav_mg_wht"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg_top_rail_B50_vfg"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Phantom"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_18Rnd_9x19_Phantom"),
		LIST_3("rhs_100Rnd_762x54mmR_7N26")
	};
	backpackItems[] = 
	{
		LIST_5("rhs_100Rnd_762x54mmR_green")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_4("rhs_100Rnd_762x54mmR_green")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] = 
	{
		"rhs_acc_pgo7v3"
	};
	backpackItems[] += 
	{
		LIST_4("rhs_rpg7_PG7VM_mag"),
		"ACE_Fortify"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK12_GP34_black"
	};
	backpackItems[] = 
	{
		LIST_31("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK12_GP34_black"
	};
	backpackItems[] =
	{
		LIST_2("pca_mag_30Rnd_545x39_AK12_Blk_7T3M"),
		LIST_31("CUP_1Rnd_HE_GP25_M"),
		LIST_12("CUP_IlumFlareRed_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeRed_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeGreen_GP25_M")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Phantom"
	};
	magazines[] += 
	{
		LIST_2("CUP_18Rnd_9x19_Phantom")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_13("CUP_1Rnd_HE_GP25_M"),
		LIST_12("CUP_IlumFlareRed_GP25_M"),
		LIST_6("CUP_IlumFlareWhite_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeRed_GP25_M"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	backpackItems[] += 
	{
		"ACE_Fortify"
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	sidearmWeapon[] = 
	{
		"CUP_hgun_Phantom"
	};
	magazines[] += 
	{
		LIST_2("CUP_18Rnd_9x19_Phantom")
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};