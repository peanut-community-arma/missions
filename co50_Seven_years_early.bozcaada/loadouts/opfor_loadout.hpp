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
		"pca_combat_fatigue_type07_hex_des",
		"pca_combat_fatigue_rs_type07_hex_des"
	};
	vest[] = 
	{
		LIST_4("pca_spc_light_tan"),
		"pca_spc_rifleman_tan"
	};
	headgear[] = 
	{
		LIST_3("pca_6b27m_type07_hex_des"),
		LIST_2("pca_6b27m_type07_hex_des_ess")
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("pca_eagle_a3_tan")
	};
	primaryWeapon[] = 
	{
		"arifle_Katiba_F"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_7("ACE_30Rnd_65x39_katiba_yellow")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"LMG_Zafir_F"
	};
	vest[] = 
	{
		"pca_spc_mg_tan"
	};
	backpack[] = 
	{
		"pca_eagle_a3_tan"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("150Rnd_762x54_Box_Tracer")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"MMG_01_tan_F"
	};
	backpack[] = 
	{
		"pca_eagle_a3_tan"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("150Rnd_762x54_Box_Tracer")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG26"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"pca_eagle_a3_tan"
	};
	secondaryWeapon[] = 
	{
		"launch_RPG32_F"
	};
	backpackItems[] = 
	{
		LIST_3("RPG32_F")
	};
};