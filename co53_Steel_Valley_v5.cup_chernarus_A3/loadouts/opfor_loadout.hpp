/*
	* Example Enemy Loadout
	* Template for creating enemy loadouts.
	* Faction: Example Russian Army Loadout (EMR, 2020)
*/

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
	faces[] = {"faceset:caucasian"};
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
		"ItemWatch",
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
		"CUP_U_I_RACS_WDL_1",
		"CUP_U_I_RACS_WDL_2"
	};
	vest[] = 
	{
		LIST_4("CUP_V_B_Interceptor_Rifleman_Olive"),
		"CUP_V_B_Interceptor_Grenadier_Olive"
	};
	headgear[] = 
	{
		LIST_3("CUP_H_LWHv2_ERDL_lowland"),
		LIST_2("CUP_H_LWHv2_ERDL_lowland_comms"),
		LIST_2("CUP_H_LWHv2_ERDL_lowland_ess_comms")
	};
	backpack[] = 
	{
		LIST_7(""),
		"B_AssaultPack_rgr"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag")
	};
	items[] = 
	{
		LIST_2("ACE_fieldDressing"),
		"ACE_packingBandage",
		"ACE_quikclot",
		"ACE_tourniquet",
		"ACE_morphine",
		"ACE_splint"
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_M240"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_4("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
	backpack[] = 
	{
		"CUP_B_RACS_Backpack_MG_wdl"
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"rhs_weap_pkp"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("rhs_100Rnd_762x54mmR")
	};
};

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
		"rhs_rk_sht_30_emr",
		"rhs_tortila_emr"
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
		"CUP_srifle_M24_wdl"
	};
	scope[] = 
	{
		"cup_optic_leupoldmk4_10x40_lrt_woodland"
	};
	secondaryWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	magazines[] = 
	{
		LIST_8("CUP_5Rnd_762x51_M24"),
		LIST_3("CUP_15Rnd_9x19_M9")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"CUP_B_HIL_TacticalPack_CCE_MG"
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