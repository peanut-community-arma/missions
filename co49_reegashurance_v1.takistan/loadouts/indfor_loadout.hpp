class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"U_B_CTRG_Soldier_Arid_F"
	};
	vest[] = 
	{
		"V_PlateCarrierL_CTRG"		
	};
	backpack[] = 
	{
		"B_AssaultPack_rgr"
	};
	headgear[] = 
	{
		"H_HelmetB_TI_arid_F"
	};
	goggles[] = 
	{
		"G_Balaclava_TI_G_blk_F"
	};
	hmd[] = 
	{
		"NVGogglesB_gry_F"	
	};
	// Leave empty to not change faces and Insignias
	faces[] = {"faceset:persian", "faceset:african", "faceset:caucasian", "faceset:asian"};
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
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
		"ItemGPS"
	};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code =  "_this call pca_fnc_unlimitedAmmo";
};

class rm : baseMan
{
	displayName = "Rifleman";
	primaryWeapon[] = 
	{
		"aegis_weap_sa80_blk"
	};
	scope[] =
	{
		"optic_hamr"	
	};
	attachment[] =
	{
		"acc_pointer_ir"
	};
	silencer[] =
	{
		"muzzle_snds_h"
	};
	sidearmWeapon[] =
	{
		"aegis_weap_fnx45_blk"
	};
	sidearmAttachments[] = 
	{
		"optic_mrd_black",
		"acc_flashlight_pistol",
		"muzzle_snds_acp"
	};	
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_13("30Rnd_65x39_caseless_black_mag"),
		LIST_2("11Rnd_45ACP_Mag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"LMG_Mk200_black_F"
	};
	bipod[] =
	{
		"bipod_01_f_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_2("11Rnd_45ACP_Mag"),
		LIST_7("200Rnd_65x39_cased_Box_Tracer")
	};	
};
class dm : rm
{
	displayName = "Marksman";
	primaryWeapon[] = 
	{
		"srifle_DMR_03_F"
	};
	scope[] = 
	{
		"optic_sos"
	};
	bipod[] =
	{
		"bipod_01_f_blk"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_13("ACE_20Rnd_762x51_M118LR_Mag"),
		LIST_2("11Rnd_45ACP_Mag")
	};	
};

class rm_at : rm 
{
	displayName = "Rifleman (AT)";
	primaryWeapon[] =
	{
		"aegis_weap_sa80c_blk"
	};
	secondaryWeapon[] = 
	{
		"launch_NLAW_F"
	};
};

class tl : rm
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"aegis_weap_sa80_eglm_blk"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_13("30Rnd_65x39_caseless_black_mag_Tracer"),
		LIST_2("11Rnd_45ACP_Mag"),
		LIST_6("1Rnd_HE_Grenade_shell")
	};
	linkedItems[] += 
	{
		"Rangefinder"
	};	
};

class medic : rm 
{
	displayName = "Medic";
	traits[] = {"medic"};
	primaryWeapon[] =
	{
		"aegis_weap_sa80c_blk"
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