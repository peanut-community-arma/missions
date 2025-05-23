/*2035 CSAT
 TO USE: Copy and paste into [your mission]/loadouts, delete opfor_loadout.hpp, rename this file to opfor_loadout.hpp
 (or you can edit description.ext lines 47-51 to read as below:

class OPFOR_LOADOUT
	{
		displayName = "OPFOR Loadout";
		#include "loadouts\2035_CSAT_loadout.hpp"
	};
	
*/
	
class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {};
	hmd[] = {};
	// Leave empty to not change faces and Insignias
	faces[] = {};
	insignias[] = {};
	// All Randomized. Add Primary Weapon and attachments
	// Leave Empty to remove all. {"Default"} for using original items the character start with
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	// SecondaryAttachments[] arrays are NOT randomized
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	// These are added to the uniform or vest first - overflow goes to backpack if there's any
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
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "_this call pca_fnc_unlimitedAmmo";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"U_O_CombatUniform_ocamo",
		"aegis_csat_acu_dhex"
	};
	vest[] = 
	{
		LIST_4("V_TacVest_khk"),
		"V_HarnessO_brn"
	};
	headgear[] = 
	{
		"H_HelmetO_ocamo"
	};
	goggles[] =
	{
		LIST_7(""),
		"aegis_shemagh_loop_coy",
		"milgp_f_face_shield_shemagh_khk",
		"CUP_G_Scarf_Face_Tan",
		"milgp_f_tactical_khk"		
	};
	primaryWeapon[] = 
	{
		"arifle_Katiba_F"
	};
	scope[] = 
	{
		LIST_3("optic_aco_grn"),
		"optic_holosight_blk_f"
	};
	magazines[] = 
	{
		"Chemlight_red",
		"SmokeShellRed",
		"SmokeShell",
		"HandGrenade",
		LIST_13("30Rnd_65x39_caseless_green")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"LMG_Zafir_F"
	};
	backpack[] =
	{
		"B_FieldPack_ocamo"
	};
	magazines[] = 
	{
		"Chemlight_red",
		"SmokeShellRed",
		"SmokeShell",
		"HandGrenade",
		LIST_5("150Rnd_762x54_Box")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (AT)";
	backpack[] =
	{
		"B_FieldPack_ocamo"
	};
	secondaryWeapon[] = 
	{
		"launch_RPG32_F"
	};
	magazines[] +=
	{
		LIST_2("RPG32_F"),
		"RPG32_HE_F"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"B_FieldPack_ocamo"
	};
	secondaryWeapon[] = 
	{
		"launch_O_Vorona_brown_F"
	};
	backpackItems[] = 
	{
		"Vorona_HEAT"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"arifle_Katiba_GL_F"
	};
	magazines[] += 
	{
		LIST_2("1Rnd_Smoke_Grenade_shell"),
		"1Rnd_HE_Grenade_shell"
	};
};

class medic : rm 
{
	displayName = "Combat Life Saver";
	backpack[] =
	{
		"B_FieldPack_ocamo"
	};
	backpackItems[] += 
	{
		LIST_2("ACE_salineIV_500"),
		LIST_10("ACE_fieldDressing"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_2("ACE_tourniquet"),
		LIST_2("ACE_splint")
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	uniform[] =
	{
		"U_O_SpecopsUniform_ocamo"
	};
	vest[] = 
	{
		"V_BandollierB_khk"
	};
	headgear[] = 
	{
		"H_HelmetCrew_O"
	};
	primaryWeapon[] = 
	{
		"arifle_Katiba_C_F"
	};
	scope[] = {};
	magazines[] = 
	{
		"Chemlight_red",
		"SmokeShellRed",
		"SmokeShell",
		"HandGrenade",
		LIST_5("30Rnd_65x39_caseless_green")
	};
};

class vp : rm 
{
	displayName = "Viper Operative";
	uniform[] =
	{
		"aegis_csat_viper_desert"
	};
	vest[] = {""};
	headgear[] = 
	{
		"aegis_vipersp_desert"
	};
	backpack[] =
	{
		"B_ViperHarness_hex_F"
	};
	primaryWeapon[] = 
	{
		"arifle_ARX_hex_F"
	};
	scope[] = {"optic_arco"};
	attachment[] =
	{
		"acc_pointer_ir"
	};
	magazines[] = 
	{
		"MiniGrenade",
		"SmokeShell",
		"SmokeShellRed",
		LIST_13("30Rnd_65x39_caseless_green"),
		"10Rnd_50BW_Mag_F"
	};
};

class vp_at : vp 
{
	displayName = "Viper (AT)";
	secondaryWeapon[] = 
	{
		"launch_RPG32_F"
	};
	magazines[] +=
	{
		LIST_2("RPG32_F"),
		"RPG32_HE_F"
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	uniform[] =
	{
		"U_O_PilotCoveralls"
	};
	vest[] = 
	{
		"V_TacVest_khk"
	};
	headgear[] = 
	{
		"H_PilotHelmetHeli_O"
	};
	primaryWeapon[] = 
	{
		"arifle_Katiba_C_F"
	};
	scope[] = {};
	magazines[] = 
	{
		"SmokeShell",
		"HandGrenade",
		LIST_5("30Rnd_65x39_caseless_green")
	};
};