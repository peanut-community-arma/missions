//Tembelan National Army, based on Indonesian Armed Forces

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
		"CUP_U_B_BDUv2_DPM"
	};
	vest[] = 
	{
		"V_TacVest_grn"
	};
	headgear[] = 
	{
		LIST_3("$REMOVE_wsx_helmet_combat_ddpm$"),
		LIST_2("$REMOVE_wsx_helmet_combat_ddpm_ess_bare$")
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("B_AssaultPack_tna_F")
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A4_Base",
		LIST_4("sp_fwa_ar18")
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_7("30Rnd_556x45_Stanag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"rhs_weap_minimi_para_railed"
	};
	scope[] =
	{
		"CUP_optic_CompM4"
	};
	bipod[] =
	{
		"rhsusf_acc_kac_grip_saw_bipod"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("rhsusf_100Rnd_556x45_mixed_soft_pouch")
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

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A4_GL"
	};
	magazines[] += 
	{
		LIST_2("1Rnd_HE_Grenade_shell"),
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_Kitbag_tna_F"
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
		LIST_2("ACE_salineIV"),
		LIST_2("ACE_adenosine")
	};
};