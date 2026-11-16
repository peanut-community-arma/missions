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
	faces[] = {"faceset:greek"};
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
		LIST_4("ACE_fieldDressing"),
		//"ACE_packingBandage",
		//"ACE_quikclot",
		//"ACE_tourniquet",
		//"ACE_morphine",
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
		"CUP_U_O_Partisan_TTsKO",
		"CUP_U_O_Partisan_TTsKO_Mixed",
		"CUP_U_O_Partisan_VSR_Mixed1",
		"CUP_U_O_Partisan_VSR_Mixed2"
	};
	vest[] = 
	{
		"CUP_V_O_SLA_M23_1_OD"
	};
	headgear[] = 
	{
		"pca_ssh68_camo",
		"pca_ssh68_camo_des",
		"pca_ssh68_camo_grn",
		"pca_ssh68_camo_mix",
		"pca_ssh68_camo_net"
		
	};
	primaryWeapon[] = 
	{
		"rhs_weap_akm",
		"rhs_weap_akms",
		"rhs_weap_pm63",
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_9("rhs_30Rnd_762x39mm")
	};
};

class mg : rm
{
	displayName = "Machine Gunner";
	backpack[] = 
	{
		"CUP_B_CivPack_WDL",
		"bear_rd54_green",
		"bear_rd54_sand",
		"bear_rd54_vsr"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
	backpackItems[] = 
	{
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"rhs_weap_akm_gp25",
		"rhs_weap_akms_gp25"
	};
	magazines[] += 
	{
		LIST_4("rhs_VOG25"),
		LIST_2("rhs_GRD40_White")
	};
};
