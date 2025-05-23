/*2035 CSAT - Pacific
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
		"aegis_csat_acu_ghex"
	};
	vest[] = 
	{
		LIST_4("aegis_elbv_harness_ghex"),
		"V_HarnessO_ghex_F"
	};
	headgear[] = 
	{
		LIST_3("H_HelmetO_ghex_F"),
		"H_MilCap_ghex_F"
	};
	goggles[] =
	{
		LIST_7(""),
		"G_AirPurifyingRespirator_02_olive_F",
		"aegis_shemagh_loop_grn",
		"rhsusf_shemagh2_gogg_grn",
		"CUP_G_Scarf_Face_Grn",
		"CUP_G_ESS_RGR_Facewrap_Tropical"		
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("B_FieldPack_ghex_F")
	};
	primaryWeapon[] = 
	{
		"arifle_CTAR_blk_F",
		"arifle_CTAR_ghex_F"
	};
	attachment[] =
	{
		"acc_flashlight"
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
		LIST_2("HandGrenade"),
		LIST_13("30Rnd_580x42_Mag_F")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"arifle_CTARS_blk_F",
		"arifle_CTARS_ghex_F"
	};
	sidearmWeapon[] =
	{
		"hgun_Rook40_F"
	};
	backpack[] =
	{
		"B_FieldPack_ocamo"
	};
	magazines[] = 
	{
		LIST_2("Chemlight_red"),
		"HandGrenade",
		"SmokeShell",
		LIST_2("16Rnd_9x21_Mag"),
		LIST_11("100Rnd_580x42_Mag_F")
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
		"launch_RPG32_ghex_F"
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
		LIST_9("1Rnd_Smoke_Grenade_shell"),
		"1Rnd_HE_Grenade_shell"
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
	goggles[] =
	{
	};
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
	scope[] = {};
};