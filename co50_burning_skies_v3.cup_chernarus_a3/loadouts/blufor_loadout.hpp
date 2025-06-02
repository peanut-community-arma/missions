/*
	*Example Loadout for players
	*This is an example loadout made to use as a template for creating loadouts.
	*Faction: Example NATO Forces (MTP)
*/

// Weaponless Baseclass
class baseMan 
{
	displayName = "Unarmed";
	// All Randomized.
	uniform[] = 
	{
		"pca_g3_m05w"
	};
	vest[] = 
	{
		"ptv_vest_m16_rifleman_rgr"
	};
	backpack[] = 
	{
		"amf_felin_tecpack_rgr"
	};
	headgear[] = 
	{
		"pca_opscore_cover_ct_cw_tsw"
	};
	goggles[] = {};
	hmd[] = 
	{
		"CUP_NVG_GPNVG_black"
	};
	// Leave empty to not change faces and Insignias -> example: faces[] = {};
	faces[] = 
	{
	};
	insignias[] = {};
	
	//All Randomized. Add Primary Weapon and attachments.
	//Leave Empty to remove all. {"Default"} for using original items the character start with.
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	
	// *WARNING* secondaryAttachments[] arrays are NOT randomized.
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	
	// These are added to the uniform or vest first - overflow goes to backpack if there's any.
	magazines[] = {};
	items[] = 
	{
		//Standard Items used in our sessions.
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_packingBandage"),
		LIST_5("ACE_quikclot"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint"),
		LIST_2("ACE_IR_Strobe_Item")
	};
	
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	
	// These are put directly into the backpack.
	backpackItems[] = {};
	
	// This is executed after the unit init is complete. Argument: _this = _unit.
	code = "[_this, 'oseaPatchGrey'] call BIS_fnc_setUnitInsignia;";
};


class rm : baseMan
{
	displayName = "Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_ACRC_wdl_68"

	};
	scope[] = 
	{
		"cup_optic_eotech553_od",
		"cup_optic_microt1_low_od",
		"cup_optic_vortexrazor_uh1_od",
		"rhsusf_acc_eotech_552_wd"
	};
	silencer[] = 
	{
		"sps_acc_gemtech_one_od"
	};
	attachment[] =
	{
		"cup_acc_anpeq_2_camo"
	};
	bipod[] = 
	{
		"rhsusf_acc_grip2_wd"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_13("pca_mag_30Rnd_556x45_M855A1_PMAG_OD")
	};
};


class ar : rm
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"amf_felin_tecpack_rgr"
	};
	primaryWeapon[] = 
	{
		"ptv_m62mr_sf"
	};
	magazines[] =
	{
		"SmokeShell",
		"rhs_mag_m67",
		LIST_3("ptv_200Rnd_556x45_M855A1_mixed_m62_soft_pouch")
	};
	backpackItems[] = 
	{
		LIST_5("ptv_200Rnd_556x45_M855A1_mixed_m62_soft_pouch")
	};
};

class aar : rm
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"amf_felin_tecpack_rgr"
	};
	backpackItems[] += 
	{
		LIST_5("ptv_200Rnd_556x45_M855A1_mixed_m62_soft_pouch")
	};
	linkedItems[] += 
	{
		"Laserdesignator"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"ptv_vest_m16_teamleader_rgr"
	};
	primaryWeapon[] =
	{
		"CUP_arifle_ACRC_EGLM_wdl_68"
	};
	bipod[] = {};
	backpackItems[] = 
	{
		LIST_15("rhs_mag_M441_HE"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_3("ACE_40mm_Flare_ir")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_smaw_green"
	};
	secondaryAttachments[] =
	{
		"rhs_weap_optic_smaw"
	};
	backpackItems[] = 
	{
		"rhs_mag_smaw_SR",
		LIST_2("rhs_mag_smaw_HEAA")
	};
};

class mat : rm
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"amf_felin_tecpack_rgr"
	};
	secondaryWeapon[] = 
	{
		"launch_MRAWS_green_F"
	};
	backpackItems[] = 
	{
		LIST_2("MRAWS_HEAT55_F")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"amf_felin_tecpack_rgr"
	};
	backpackItems[] = 
	{
		LIST_3("MRAWS_HEAT55_F")
	};
	linkedItems[] = 
	{
		"Laserdesignator"
	};
};

class tl : rm
{
	displayName = "Team Leader";
	vest[] = 
	{
		"ptv_vest_m16_teamleader_rgr"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
	linkedItems[] += 
	{
		"Laserdesignator"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_ACRC_EGLM_wdl_68"
	};
	bipod[] = {};
	magazines[] += 
	{
		LIST_5("rhs_mag_M441_HE")
	};
	backpackItems[] += 
	{
		LIST_10("rhs_mag_M441_HE"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_3("ACE_40mm_Flare_ir"),
		LIST_2("rhsusf_m112_mag"),
		"1Rnd_SmokeBlue_Grenade_shell",
		"1Rnd_SmokeGreen_Grenade_shell"
	};
};

class sl : tl
{
	displayName = "Squad Leader";
};
class co : sl 
{
	displayName = "Platoon Commander";
};
class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"amf_felin_tecpack_rgr"
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
	traits[] = {"medic"};
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

class mmg : rm 
{
	displayName = "Medium Machine Gunner";

	backpack[] = 
	{
		"amf_felin_tecpack_rgr"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m240B"
	};
	bipod[] = {};
	attachment[] = {};
	silencer[] = 
	{
		"rhsusf_acc_ARDEC_M240"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_m9"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP"),
		LIST_3("rhsusf_100Rnd_762x51_m80a1epr")
	};
	backpackItems[] = 
	{
		LIST_6("rhsusf_100Rnd_762x51_m80a1epr")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"amf_felin_tecpack_rgr"
	};
	backpackItems[] = 
	{
		LIST_8("rhsusf_100Rnd_762x51_m80a1epr")
	};
	linkedItems[] = 
	{
		"Laserdesignator"
	};
};