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
		"bear_uniform_cup_paramilitary_clothes_dbdu",
		"CUP_I_B_PARA_Unit_5",
		"CUP_I_B_PARA_Unit_11",
		"CUP_I_B_PARA_Unit_13",
		"CUP_I_B_PARA_Unit_12",
		"CUP_I_B_PARA_Unit_8",
		"CUP_I_B_PARA_Unit_7",
		"CUP_I_B_PARA_Unit_6",
		"CUP_I_B_PARA_Unit_2",
		
	};
	vest[] = 
	{
		"pca_vest_invisible_kevlar"
	};
	headgear[] = 
	{
		"CUP_H_Ger_M92_Tan"
	};
	backpack[] = 
	{
		LIST_2("pca_backpack_taki_jacket1_04"),
		LIST_2("pca_backpack_taki_jacket1_06"),
		LIST_2("pca_backpack_taki_jacket1_01"),
		LIST_2("pca_backpack_taki_jacket1_05"),
		LIST_2("pca_backpack_taki_jacket4_04"),
		LIST_2("pca_backpack_taki_jacket4_06"),
		LIST_2("pca_backpack_taki_jacket4_05"),
		LIST_2("pca_backpack_taki_jacket4_02"),
		LIST_2("pca_backpack_taki_jacket4_03"),
		LIST_2("pca_backpack_taki_jacket5_04"),
		LIST_2("pca_backpack_taki_jacket5_06"),
		LIST_2("pca_backpack_taki_jacket5_05"),
		LIST_2("pca_backpack_taki_jacket5_02"),
		LIST_2("pca_backpack_taki_jacket5_03"),
		LIST_2("pca_backpack_taki_jacket3_04"),
		LIST_2("pca_backpack_taki_jacket3_06"),
		LIST_2("pca_backpack_taki_jacket3_05"),
		LIST_2("pca_backpack_taki_jacket3_02"),
		LIST_2("pca_backpack_taki_jacket3_03"),
		LIST_2("pca_backpack_taki_jacket2_04"),
		LIST_2("pca_backpack_taki_jacket2_06"),
		LIST_2("pca_backpack_taki_jacket2_05"),
		LIST_2("pca_backpack_taki_jacket2_02"),
		LIST_2("pca_backpack_taki_jacket2_03"),
		LIST_2("pca_backpack_taki_jacket6_04"),
		LIST_2("pca_backpack_taki_jacket6_06"),
		LIST_2("pca_backpack_taki_jacket6_05"),
		LIST_2("pca_backpack_taki_jacket6_02"),
		LIST_2("pca_backpack_taki_jacket6_03")
		
	};
	primaryWeapon[] = 
	{
		"rhs_weap_ak74m"
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
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"rhs_weap_rpk74m"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_4("rhs_100Rnd_762x54mmR")
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
		"rhs_mag_rdg2_white",
		LIST_4("rhs_100Rnd_762x54mmR")
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
	backpackItems[] = 
	{
		LIST_2("rhs_rpg7_PG7VL_mag"),
		"rhs_rpg7_PG7VR_mag",
		"rhs_rpg7_OG7V_mag"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
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
		"CUP_srifle_LeeEnfield_rail"
	};
	magazines[] += 
	{
		LIST_12("CUP_10x_303_M")
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

class engineer : rm 
{
	displayName = "Engineer";
	primaryWeapon[] = 
	{
		"CUP_arifle_FNFAL5061_wooden_railed"
	};
	magazines[] = 
	{
		LIST_11("CUP_20rnd_762x51_FNFAL_M")
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
		"rhs_mag_rdg2_white",
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
		"rhs_mag_rdg2_white",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};