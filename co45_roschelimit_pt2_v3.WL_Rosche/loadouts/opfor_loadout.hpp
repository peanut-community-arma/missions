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
		LIST_5("pca_uniform_m88_field_oli"),
		"pca_uniform_m88_field_flora"
	};
	vest[] =
	{
		"rhs_suspender_AK",
		"rhs_suspender_AK4",
		"rhs_belt_AK",
		"rhs_belt_AK_back"
	};
	headgear[] =
	{
		LIST_5("pca_ssh68_helmet_emblem_redstar"),
		"pca_ssh68_helmet_ogrn",
		"pca_ssh68_helmet_mgrn",
		"pca_ssh68_helmet",
	};
	backpack[] =
	{
		LIST_7(""),
		LIST_2("pca_rd54_oli"),
		"pca_rd54_flora"
	};
	primaryWeapon[] =
	{
		"rhs_weap_akm"
	};
	scope[] = {};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_7("rhs_30Rnd_762x39mm")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] =
	{
		"arifle_RPK_F"
	};
	vest[] =
	{
		"rhs_belt_RPK"
	};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("rhs_75Rnd_762x39mm_tracer")
	};
};

class mg : rm
{
	displayName = "Machine Gunner";
	primaryWeapon[] =
	{
		"CUP_lmg_PKM"
	};
	vest[] =
	{
		"rhs_suspender_AK8_chestrig"
	};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("rhs_100Rnd_762x54mmR_green")
	};
};

class rm_lat : rm
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] =
	{
		"rhs_weap_rpg18"
	};
};

class rm_mat : rm
{
	displayName = "Rifleman (MAT)";
	backpack[] =
	{
		"rhs_rpg_2"
	};
	secondaryWeapon[] =
	{
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] = {};
	backpackItems[] =
	{
		LIST_4("rhs_rpg7_PG7V_mag"),
		"rhs_rpg7_OG7V_mag"
	};
};

class gren : rm
{
	displayName = "Grenadier";
	primaryWeapon[] =
	{
		"rhs_weap_akm_gp25"
	};
	vest[] =
	{
		"rhs_belt_AK_GL"
	};
	magazines[] +=
	{
		LIST_2("rhs_VOG25"),
		LIST_2("rhs_GRD40_White")
	};
};

class medic : rm
{
	displayName = "Medic";
	backpack[] =
	{
		"rhs_medic_bag"
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
	// backpack[] =
	// {
	// 	"rhs_rk_sht_30_emr_engineer_empty"
	// };
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
	// vest[] =
	// {
	// 	"rhs_6b23_digi_6sh92_headset_spetsnaz"
	// };
	// headgear[] =
	// {
	// 	"rhs_6b48"
	// };
	// primaryWeapon[] =
	// {
	// 	"rhs_weap_ak105"
	// };
	// scope[] = {};
	// magazines[] =
	// {
	// 	"rhs_mag_rgd5",
	// 	"rhs_mag_rdg2_white",
	// 	LIST_5("rhs_30Rnd_545x39_7N10_AK")
	// };
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
