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
	uniform[] = 
	{
		"rhs_uniform_afghanka_winter_boots"
	};
	vest[] = 
	{
		"rhs_6b2_AK"
	};
	headgear[] = 
	{
		LIST_3("pca_ssh68_grn_net"),
		LIST_5("pca_ssh68_ogrn"),
		LIST_2("pca_ssh68_camo_mix"),
		LIST_2("rhs_fieldcap_m88")
	};
	goggles[] = 
	{
		"rhs_scarf"
	};
	hmd[] = 
	{
		"pca_nvg_gloves_wool_brn"
	};
	backpack[] = {};
	primaryWeapon[] = 
	{
		"fwa_weap_mosin_m91"
	};
	magazines[] = 
	{
		"rhs_grenade_mkii_mag",
		"rhs_mag_rdg2_white",
		LIST_7("rhsgref_5Rnd_762x54_m38")
	};
};

class of : baseMan
{
	displayName = "Officer";
	uniform[] = 
	{
		"rhs_uniform_cossack"
	};
	vest[] = 
	{
		"rhs_6b2_chicom"
	};
	headgear[] = 
	{
		"rhs_cossack_visor_cap"
	};
	backpack[] = {};
	primaryWeapon[] = 
	{
		"rhs_weap_m92"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_tt33"
	};
	magazines[] = 
	{
		"rhs_grenade_mkii_mag",
		"rhs_mag_rdg2_white",
		LIST_7("CUP_30Rnd_762x39_AK47_M"),
		LIST_2("rhs_mag_762x25_8")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_m72a7"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"rhs_rpg_6b2"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] = 
	{
		"rhs_acc_pgo7v"
	};
	backpackItems[] = 
	{
		LIST_4("rhs_rpg7_PG7V_mag")
	};
};
