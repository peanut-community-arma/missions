class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		LIST_3("bear_uniform_g3_multicam"),
		LIST_3("bear_uniform_g3_multicam_alt"),
		LIST_3("bear_uniform_g3_multicam_alt2"),
		"pca_g3_m84w"
	};
	vest[] = 
	{
		"CUP_V_JPC_Fastbelt_mc"
	};
	backpack[] = 
	{
		"pca_assaultpack_mc"
	};
	headgear[] = 
	{
		"pca_opscore_mc",
		"pca_opscore_mc2",
		"pca_opscore_cover_mc",
		"pca_opscore_cover_mc2",
		"wsx_helmet_combat_m84w"
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
	primaryWeapon[] =
	{
		"bear_diemaco_c8"
	};
	scope[] =
	{
		LIST_4(""),
		LIST_2("CUP_optic_CompM4"),
		LIST_2("CUP_optic_MicroT1_OD"),
		"ptv_acc_c79",
		"sma_acc_elcan_specter_od"
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_M17_Black"
	};
	magazines[] =
	{
		LIST_2("CUP_21Rnd_9x19_M17_Black"),
		LIST_11("rhs_mag_30Rnd_556x45_M855_PMAG"),
		"HandGrenade",
		"SmokeShell"
	};
};
class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"CUP_V_JPC_weaponsbelt_mc"
	};	
	primaryWeapon[] = 
	{
		"CUP_lmg_M60E4"
	};
	magazines[] = 
	{
		LIST_2("CUP_21Rnd_9x19_M17_Black"),
		LIST_6("rhsusf_100Rnd_762x51"),
		"HandGrenade",
		"SmokeShell"
	};
};
class rm_at : rm 
{
	displayName = "Rifleman (AT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_m72a7"
	};
	backpackItems[] =
	{
		"rhs_weap_m72a7"
	};
};
class tl : rm
{
	displayName = "Team Leader";
	vest[] = 
	{
		"CUP_V_JPC_tlbelt_mc"
	};	
	primaryWeapon[] =
	{
		"bear_diemaco_c8_m203"
	};
	magazines[] =
	{
		LIST_2("CUP_21Rnd_9x19_M17_Black"),
		LIST_11("rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red"),
		"HandGrenade",
		"SmokeShell",		
		LIST_2("rhs_mag_M441_HE")
	};
	linkedItems[] += 
	{
		"Binocular",
		"I_UavTerminal"
	};
	
};
class medic : rm 
{
	displayName = "Medic";
	traits[] = {"medic"};	
	vest[] = 
	{
		"CUP_V_JPC_medicalbelt_mc"
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
class crew : rm
{
	displayName = "Crew";
	traits[] = {"engineer"};
	vest[] = 
	{
		"CUP_V_JPC_lightbelt_mc"
	};
	backpackItems[] =
	{
		"Toolkit"
	};
};
class hp : crew
{
	displayName = "Pilot";
	headgear[] =
	{
		"rhsusf_hgu56p_visor_green"
	};
};