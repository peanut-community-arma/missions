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
		"CUP_I_B_PMC_Unit_13",
		"CUP_I_B_PMC_Unit_14",
		"CUP_I_B_PMC_Unit_19",
		"CUP_I_B_PMC_Unit_3",
		"CUP_I_B_PMC_Unit_2",
		"CUP_I_B_PMC_Unit_4",
		"CUP_I_B_PMC_Unit_42",
		"CUP_I_B_PMC_Unit_43",
		"CUP_I_B_PMC_Unit_40"
	};
	vest[] = 
	{
		"usp_eagle_mbav_mcb"
	};
	headgear[] = 
	{
		"$NONE_TC_Helmet_Hat_NavySeer$",
		"$NONE_TC_Helmet_Hat_WitchCop$"
	};
	backpack[] = 
	{
		"pca_eagle_a3_blk"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M4A1_black"
	};
	attachment[] = 
	{
		"pca_flashlight_sf"
	};
	silencer[] = 
	{
		"$NONE_hlc_muzzle_fn_oem556$"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_13("rhs_mag_30Rnd_556x45_M855A1_Stanag")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_mag_30Rnd_556x45_M855A1_Stanag")
	};
};

class shot : rm 
{
	displayName = "Shotgunner";
	vest[] = 
	{
		"usp_eagle_mbav_mcb"
	};
	primaryWeapon[] = 
	{
		"CUP_sgun_M1014"
	};
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	sidearmAttachments[] = 
	{
		"acc_flashlight_pistol"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_4("ptv_12Rnd_45ACP_USP"),
		LIST_8("CUP_8Rnd_12Gauge_Pellets_No0_Buck")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_8Rnd_12Gauge_Slug")
	};
};

class rm_lat : rm 
{
	displayName = "Shield";
	primaryWeapon[] = 
	{
		"CUP_smg_BallisticShield_MP7"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_MP7"
	};
	sidearmAttachments[] = 
	{
		"pca_flashlight_sf"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_8("rhsusf_mag_40Rnd_46x30_FMJ"),
	};
	backpackItems[] = 
	{
		LIST_4("CUP_8Rnd_12Gauge_Slug")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_M4A1_BUIS_GL"
	};
	backpackItems[] = 
	{
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
		LIST_2("SmokeShell")
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
	primaryWeapon[] = 
	{
		"CUP_arifle_M4A1_BUIS_GL"
	};
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	magazines[] += 
	{
		LIST_2("ptv_12Rnd_45ACP_USP")
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_13("CUP_1Rnd_HE_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class co : sgt 
{
	displayName = "Platoon Commander";
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
		sidearmWeapon[] = 
	{
		"bnae_weap_colt357"
	};
	magazines[] += 
	{
		LIST_4("bnae_6Rnd_357M")
	};
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