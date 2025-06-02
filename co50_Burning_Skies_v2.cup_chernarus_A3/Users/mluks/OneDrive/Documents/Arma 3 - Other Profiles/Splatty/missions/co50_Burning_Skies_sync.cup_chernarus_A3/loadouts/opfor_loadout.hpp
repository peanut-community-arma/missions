/*
	*Example Loadout for players
	*This is an example loadout made to use as a template for creating loadouts.
	*Faction: Example Russian Forces (EMR Flora)
*/

// Weaponless Baseclass
class baseMan 
{
	displayName = "Unarmed";
	// All Randomized. Use LIST_X("className") for multiple items in an array. 
	uniform[] = 
	{
		"bear_uniform_indep2_norwegian_m98"
	};
	vest[] = 
	{
		"CUP_V_B_Armatus_Coyote"
	};
	backpack[] = 
	{
		"rhs_tortila_khaki"
	};
	headgear[] = 
	{
		"rhsusf_ach_bare_headset"
	};
	goggles[] = {"default"};
	hmd[] = {"CUP_NVG_PVS15_black"};
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
		LIST_2("ACE_packingBandage"),
		LIST_2("ACE_quikclot"),
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
	code = "[_this, 'eruseaPatch'] call BIS_fnc_setUnitInsignia;";
};

//Since this a loadout used by enemies only - we don't need to define a bunch of different classes, roles such as AAR, Team Leader, and etc are redundant.
class r : baseMan
{
	displayName = "Rifleman";
	primaryWeapon[] = 
	{
		"$NONE_sma_weap_tavor_blk$"
	};
	scope[] = 
	{
		"cup_optic_1p87_ris",
		"cup_optic_aimpoint_5000",
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_PMAG")
	};
};

class g : r 
{
	displayName = "Grenadier";
	secondaryWeapon[] =
	{
		"CUP_launch_BF3"
	};
};

class mg : r
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"pca_weap_negev_ng5"
	};
	magazines[] = 
	{
		LIST_4("ACE_150Rnd_762x54_Box_tracer_yellow")
	};
};

class rat : r 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_HCPF3"
	};
};

class rrpg : r
{
	displayName = "Rifleman (RPG)";
	secondaryWeapon[] = 
	{
		"launch_RPG32_black_F"
	};
	backpackItems[] = 
	{
		LIST_3("RPG32_F"),
		LIST_2("RPG32_HE_F")
	};
};