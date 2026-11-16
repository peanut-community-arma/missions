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
		"U_I_CombatUniform",
		"U_I_CombatUniform_shortsleeve"
	};
	vest[] = 
	{
		LIST_5("V_PlateCarrierIA2_dgtl");
		"V_PlateCarrierIA2_oli"
	};
	backpack[] = 
	{
		LIST_5("B_AssaultPack_dgtl");
		"B_AssaultPack_rgr"
	};
	headgear[] = 
	{
		LIST_5("H_HelmetIA"),
		"H_I_Helmet_canvas_Green"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_hk33a2$"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_12("hlc_30rnd_556x45_B_HK33")
	};
};


class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		LIST_5("V_PlateCarrierIAGL_dgtl");
		"V_PlateCarrierIAGL_oli"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_mg3"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_8("hlc_100Rnd_762x51_M_MG3")
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
		"$NONE_hlc_rifle_hk33a2_ris_m203$"
	};
	magazines[] += 
	{
		LIST_5("1Rnd_HE_Grenade_shell"),
		LIST_4("CUP_1Rnd_StarFlare_Green_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : gren 
{
	displayName = "Team Leader";

	backpack[] = 
	{
		"rhs_r148"
	};
};

class medic : rm 
{
	displayName = "Medic";
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_hk33ka3$"
	};	
	vest[] = 
	{
		LIST_5("V_PlateCarrierIAGL_dgtl");
		"V_PlateCarrierIAGL_oli"
	};
	backpack[] = 
	{
		"B_FieldPack_oli",
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
	uniform[] = 
	{
		"U_Tank_green_F"
	};
	vest[] = 
	{
		LIST_5("V_PlateCarrierIA1_dgtl");
		"V_PlateCarrierIA1_oli"
	};
	headgear[] = 
	{
		"H_HelmetCrew_I"
	};
	backpack[] = {};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_hk53$"
	};	
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("hlc_30rnd_556x45_B_HK33")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	uniform[] = 
	{
		"U_I_HeliPilotCoveralls"
	};
	vest[] = 
	{
		"V_TacVest_oli"
	};
	headgear[] = 
	{
		LIST_3("H_PilotHelmetHeli_I");
		"aegis_helipilot_dgtl"
	};
	backpack[] = {};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_hk53$"
	};	
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("hlc_30rnd_556x45_B_HK33")
	};
};

class hvt : rm 
{
	displayName = "HVT AAF";
	goggles[] = 
	{
		"G_Aviator"
	};
	uniform[] = 
	{
		"U_I_OfficerUniform"
	};
	vest[] = 
	{
		"simc_m1961_lce_ns"
	};
	headgear[] = 
	{
		"H_Beret_AAF_01_F"
	};
	backpack[] = {};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_hk53$"
	};	
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("hlc_30rnd_556x45_B_HK33")
	};
};

class placeholder : rm
{
	items[] = 
	{
		"AntimalaricumVaccine",
		"Money"
	};
};