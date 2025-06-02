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
	faces[] = {};
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
	// These are put directly into the backpack.
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit.
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	goggles[] = 
	{
		LIST_15(""),
		LIST_2("G_Cigarette"),
		LIST_1("G_Bandanna_kawaii"),
		LIST_1("G_Aviator")
	};
	uniform[] = 
	{
		"U_I_C_Soldier_Para_4_F",
		"U_I_C_Soldier_Para_1_F",
		"U_I_C_Soldier_Para_3_F",
		"U_I_C_Soldier_Para_2_F"
	};
	vest[] = 
	{
		LIST_5("V_Chestrig_khk"),
		LIST_5("V_Chestrig_rgr"),
		LIST_1("V_TacVest_brn")
	};
	headgear[] = 
	{
		LIST_6(""),
		LIST_1("H_Bandanna_cbr"),
		LIST_1("H_Bandanna_khk"),
		LIST_1("H_Bandanna_sgg"),
		LIST_1("H_Bandanna_camo")
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("rhs_sidor")
	};
	primaryWeapon[] = 
	{
		LIST_6("rhs_weap_ak74"),
		LIST_1("rhs_weap_aks74")
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("rhs_30Rnd_545x39_7N6_AK")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_45"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("rhs_45Rnd_545X39_AK_Green")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	backpack[] = 
	{
		"rhs_sidor"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("rhs_100Rnd_762x54mmR_green")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg26"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"rhsgref_tla_backpack_rpg"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_rpg7_PG7VL_mag"),
	};
};
