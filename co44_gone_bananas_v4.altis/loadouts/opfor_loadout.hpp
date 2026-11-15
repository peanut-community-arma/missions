class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"CUP_U_B_USArmy_ACU_UCP",
		"CUP_U_B_USArmy_ACU_Rolled_UCP",
		"CUP_U_B_USArmy_ACU_Rolled_Gloves_UCP",
		"CUP_U_B_USArmy_ACU_Kneepad_UCP",
		"CUP_U_B_USArmy_ACU_Kneepad_Rolled_UCP",
		"CUP_U_B_USArmy_ACU_Kneepad_Rolled_Gloves_UCP",
		"CUP_U_B_USArmy_ACU_Kneepad_Gloves_UCP",
		"CUP_U_B_USArmy_ACU_Gloves_UCP"
	};
	vest[] = 
	{
		"CUP_V_B_IOTV_UCP_Empty_USArmy"
	};
	backpack[] = 
	{
		"CUP_B_US_Assault_UCP"
	};
	headgear[] = 
	{
		"CUP_H_USArmy_HelmetACH_UCP",
		"CUP_H_USArmy_HelmetACH_GCOVERED_UCP",
		"CUP_H_USArmy_HelmetACH_GCOVERED_Headset_UCP",
		"CUP_H_USArmy_HelmetACH_ESS_UCP",
		"CUP_H_USArmy_HelmetACH_ESS_Headset_UCP",
		"CUP_H_USArmy_HelmetACH_Headset_UCP",
		"CUP_H_USArmy_Boonie_hs_UCP",
		"CUP_H_USArmy_Boonie_UCP",
		"CUP_H_USArmy_MICH_UCP",
		"CUP_H_USArmy_MICH_GCOVERED_UCP",
		"CUP_H_USArmy_MICH_GCOVERED_Headset_UCP",
		"CUP_H_USArmy_MICH_ESS_UCP",
		"CUP_H_USArmy_MICH_ESS_Headset_UCP",
		"CUP_H_USArmy_MICH_Headset_UCP",
		"CUP_H_US_patrol_cap_UCP"
	};
	goggles[] = {};
	hmd[] = {};
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
		LIST_2("ACE_fieldDressing"),
		LIST_2("ACE_packingBandage"),
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
	code =  "_this call pca_fnc_unlimitedAmmo";
};

class rm : baseMan
{
	displayName = "Rifleman";
	vest[] =
	{
		"CUP_V_B_IOTV_UCP_Rifleman_USArmy"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M4A3_black"
	};
	scope[] =
	{
		"CUP_optic_CompM4"
	};
	attachment[] = 
	{
		"CUP_acc_ANPEQ_15_Black_Top"
	};
	magazines[] = 
	{
		"SmokeShell",
		"HandGrenade",
		LIST_8("CUP_30Rnd_556x45_Stanag")
	};
};
class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] =
	{
		"CUP_V_B_IOTV_UCP_SAW_USArmy"
	};	
	primaryWeapon[] = 
	{
		"CUP_lmg_m249_pip4"
	};
	scope[] +=
	{
		"CUP_optic_ElcanM145"
	};
	attachment[] =
	{
		"CUP_acc_ANPEQ_15_Black"
	};
	magazines[] = 
	{
		LIST_8("CUP_100Rnd_TE4_Red_Tracer_556x45_M249"),
		"HandGrenade",
		"SmokeShell"
	};
};

class rm_at : rm 
{
	displayName = "Rifleman (AT)";
	secondaryWeapon[] = 
	{
		"cup_launch_M136"
	};
};

class gren : rm
{
	displayName = "Grenadier";
	vest[] =
	{
		"CUP_V_B_IOTV_UCP_Grenadier_USArmy"
	};	
	primaryWeapon[] =
	{
		"CUP_arifle_M4A1_GL_carryhandle"
	};
	backpackItems[] =
	{
		LIST_2("1Rnd_HE_Grenade_shell")
	};
};
class tl : rm
{
	displayName = "Team Leader";
	vest[] =
	{
		"CUP_V_B_IOTV_UCP_TL_USArmy"
	};	
	scope[] +=
	{
		"CUP_optic_ACOG2"
	};
	magazines[] = 
	{
		"SmokeShell",
		"HandGrenade",
		LIST_8("CUP_30Rnd_556x45_Stanag_Tracer_Red")
	};	
	linkedItems[] += 
	{
		"Binocular"
	};
	
};

class medic : rm 
{
	displayName = "Medic";
	traits[] = {"medic"};	
	vest[] =
	{
		"CUP_V_B_IOTV_UCP_Medic_USArmy"
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

class mg : ar
{
	displayName = "Machinegunner";
	vest[] =
	{
		"CUP_V_B_IOTV_UCP_MG_USArmy"
	};	
	primaryWeapon[] =
	{
		"CUP_lmg_M240_B"
	};
	scope[] +=
	{
		"CUP_optic_ACOG_TA648_308_RDS_Black"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M17_Black"
	};
	magazines[] = 
	{
		LIST_2("CUP_21Rnd_9x19_M17_Black"),
		LIST_6("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"),
		"HandGrenade",
		"SmokeShell"
	};	
};

class sn : mg
{
	displayName = "Sniper";
	primaryWeapon[] = 
	{
		"CUP_srifle_M2010_blk"
	};
	scope[] =
	{
		"CUP_optic_LeupoldMk4"
	};
	bipod[] =
	{
		"bipod_01_F_blk"
	};
	attachment[] = {""};
	magazines[] = 
	{
		LIST_2("CUP_21Rnd_9x19_M17_Black"),
		LIST_15("CUP_5Rnd_762x67_M2010_M"),
		"HandGrenade",
		"SmokeShell"
	};	
};
class crew : rm
{
	displayName = "Crew";
	traits[] = {"engineer"};
	vest[] =
	{
		"CUP_V_B_IOTV_UCP_Empty_USArmy"
	};	
	headgear[] =
	{
		"CUP_H_CVC"
	};
	backpackItems[] =
	{
		"Toolkit"
	};
};

class hp : crew
{
	displayName = "Pilot";
	vest[] =
	{
		"CUP_V_B_IOTV_UCP_Empty_USArmy"
	};	
	headgear[] =
	{
		"CUP_H_SPH4_green_visor"
	};
};