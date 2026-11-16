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
		"pca_g3_mcaus"
	};
	vest[] =
	{
		"usp_crye_cpc_comms_mc",
		"usp_crye_cpc_comms_belt_mc",
		"usp_crye_cpc_fast_mc",
		"usp_crye_cpc_fast_belt_mc",
		"usp_crye_cpc_medical_mc",
		"usp_crye_cpc_medical_belt_mc",
		"usp_crye_cpc_teamlead_mc",
		"usp_crye_cpc_teamlead_belt_mc"
	};
	headgear[] =
	{
		LIST_2("pca_opscore_cover_ct_mcaus"),
		"pca_opscore_cover_ct_cb_mcaus",
		"pca_opscore_cover_ct_cm_mcaus",
		"pca_opscore_cover_ct_cw_mcaus"
	};
	backpack[] =
	{
		"pca_assaultpack_ocp",
		"pca_assaultpack_ocp2",
		"pca_assaultpack_ocp3",
		LIST_2("pca_eagle_a3_ocp"),
		"pca_kitbag_ocp",
		"pca_kitbag_ocp2",
		"pca_kitbag_ocp3",
		LIST_2("pca_tacticalpack_ocp")
	};
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_auga3_blk$"
	};
	scope[] = 
	{
		"rhsusf_acc_eotech_xps3"
	};
	bipod[] = 
	{
		"rhsusf_acc_rvg_blk"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_packingBandage"),
		LIST_5("ACE_quikclot"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};	
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_13("hlc_30Rnd_556x45_EPR_AUG")
	};
	backpackItems[] =
	{
		LIST_4("hlc_30Rnd_556x45_EPR_AUG")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] =
	{
		"rhs_weap_m249_pip_S_para"
	};
	bipod[] = 
	{
		"rhsusf_acc_grip4_bipod"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote")
	};
	backpackItems[] =
	{
		LIST_4("rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote")
	};
};

class aar : rm
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] +=
	{
		LIST_4("rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote")
	};
	linkedItems[] +=
	{
		"rhsusf_bino_lrf_Vector21"
	};
};

class rm_lat : rm
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_M136"
	};
	backpackItems[] += 
	{
		"CUP_launch_M136"
	};
};

class tl : rm
{
	displayName = "Team Leader";
	items[] +=
	{
		"ACRE_PRC148"
	};
	backpackItems[] +=
	{
		LIST_2("SmokeShell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen")
	};
	linkedItems[] +=
	{
		"rhsusf_bino_lrf_Vector21"
	};
};

class sl : tl
{
	displayName = "Squad Leader";
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_auga3_m203_blk$"
	};
	backpackItems[] +=
	{
		LIST_2("pca_mag_30Rnd_556x45_M856A1_EMAG"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell")
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] =
	{
		LIST_2("pca_eagle_a3_ocp"),
		"pca_kitbag_ocp",
		"pca_kitbag_ocp2",
		"pca_kitbag_ocp3"
	};
	backpackItems[] +=
	{
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_personalAidKit"),
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
		LIST_20("ACE_elasticBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_packingBandage"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_personalAidKit"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};