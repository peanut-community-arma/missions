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
		"aegis_otv_rig_oli"
	};
	backpack[] = 
	{
		LIST_5("B_AssaultPack_dgtl");
		"B_AssaultPack_rgr"
	};
	headgear[] = 
	{
		LIST_5("H_HelmetIA"),
		"aegis_mch_oli"
	};
	primaryWeapon[] = 
	{
		"arifle_Mk20_F"
	};
	scope[] = 
	{
		"cup_optic_eotech553_od"
	};
	attachment[] = 
	{
		"cup_acc_flashlight_wdl"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_12("30Rnd_556x45_Stanag")
	};
};


class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		LIST_5("V_PlateCarrierIAGL_dgtl");
		"aegis_otv_gl_oli"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_minimi_para_railed"
	};
	bipod[] = 
	{
		"rhsusf_acc_saw_lw_bipod"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_10("CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249")
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
		"arifle_Mk20_GL_F"
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
		"arifle_Mk20C_F"
	};	
	vest[] = 
	{
		LIST_5("V_PlateCarrierIAGL_dgtl");
		"aegis_otv_gl_oli"
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
	vest[] = 
	{
		LIST_5("V_PlateCarrierIA1_dgtl");
		"aegis_otv_lite_oli"
	};
	headgear[] = 
	{
		"H_HelmetCrew_I"
	};
	backpack[] = {};
	primaryWeapon[] = 
	{
		"arifle_Mk20C_F"
	};	
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("30Rnd_556x45_Stanag")
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
		"arifle_Mk20C_F"
	};	
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("30Rnd_556x45_Stanag")
	};
};