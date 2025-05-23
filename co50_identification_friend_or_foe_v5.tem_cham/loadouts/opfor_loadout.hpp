/*
	* Example Enemy Loadout
	* Template for creating enemy loadouts.
	* Faction: Example Russian Army Loadout (EMR, 2020)
*/
#define nades "rhs_mag_m67","rhs_mag_an_m14_th3","SmokeShellBlue","SmokeShellRed"
// Weaponless Baseclass
class baseMan 
{
	displayName = "Unarmed";
	// All Randomized. Use LIST_X("className") for multiple items in an array. 
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {"default"};
	hmd[] = {};
	// Leave empty to not change faces and Insignias -> example: faces[] = {};
	faces[] = {};
	insignias[] = {"ParallelEarth"};
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
		//LIST_2("ACE_fieldDressing"),
		//"ACE_packingBandage",
		//"ACE_quikclot",
		//"ACE_tourniquet",
		//"ACE_morphine",
		//"ACE_splint"
	};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ChemicalDetector_01_watch_F",
		"ItemMap",
		"ItemCompass"
	};
	// These are put directly into the backpack.
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit.
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"CUP_U_B_BDUv2_gloves_dirty_Tpattern",
        "CUP_U_B_BDUv2_gloves_Tpattern"
	};
	vest[] = 
	{
		LIST_3("CUP_V_B_Ciras_Black3"),
        "simc_aws_rig_blk"
	};
	headgear[] = 
	{
		"aegis_specter_cover_blk"
	};
    hmd[] =
    {
        "CUP_NVG_1PN138"
    };
	backpack[] = 
	{
		LIST_9("aegis_fieldpack_blk"),
        "B_ViperLightHarness_blk_F"
	};
    goggles[] = 
    {
        "m40_gas_mask_01_nbc_hood"
    };
	primaryWeapon[] = 
	{
		LIST_7("CUP_arifle_FNFAL5060"),
        LIST_2("CUP_arifle_FNFAL"),
        "CUP_arifle_FNFAL_OSW"
	};
	magazines[] = 
	{
		nades,
		LIST_8("rhs_mag_20Rnd_762x51_m80_fnfal")
	};
    items[] =
    {
        LIST_2("ACE_fieldDressing"),
		LIST_4("ACE_packingBandage"),
		LIST_4("ACE_quikclot"),
		"ACE_tourniquet",
		"ACE_epinephrine",
		"ACE_splint"
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
		nades,
		LIST_3("rhsusf_100Rnd_762x51")
	};
};

class mg : ar
{
	displayName = "Machine Gunner";
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_M72A6"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"aegis_carryall_blk"
	};
    primaryWeapon[] = {"CUP_arifle_FNFAL"};
	secondaryWeapon[] = 
	{
		"fwa_weap_m67"
	};
	backpackItems[] = 
	{
		LIST_3("fwa_1rnd_m67_HEAT")
	};
};

class lead : rm
{
    displayName = "Leader";
    sidearmWeapon[] = {"rhsusf_weap_m1911a1"};
    magazines[] += {LIST_2("rhsusf_mag_7x45acp_MHP")};
    linkedItems[] += {"rhsusf_bino_m24_ARD"};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_DSA_SA58_OSW_M203"
	};
	magazines[] += 
	{
		LIST_9("CUP_1Rnd_HE_M203"),
		LIST_2("CUP_FlareWhite_M203")
	};
};

class medic : rm 
{
	displayName = "Medic";
	vest[] = 
	{
		"wsx_mbav_medic_blk"
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
    primaryWeapon[] = {
        "rhs_weap_m3a1"
    };
	scope[] = {};
	magazines[] = 
    {
        LIST_7("rhsgref_30rnd_1143x23_M1911B_SMG"),
        nades
    };
};

class dmr : rm
{
    displayName = "Marksman";
    primaryWeapon[] = {"CUP_arifle_FNFAL5060_railed"};
    scope[] = {"CUP_optic_LeupoldM3LR"};
};

class manpad : rm
{
    displayName = "Rifleman (AA)";
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
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};