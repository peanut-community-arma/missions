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
	items[] = {};
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
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"TC_U_CRYE_M81_GREEN_FULL",
		"TC_U_CRYE_M81_GREEN_ROLL"
	};
	vest[] = 
	{
		"V_PlateCarrier1_oli"
	};
	headgear[] = 
	{
		"TC_H_CUP_USArmy_HelmetACH_UCP_M81_GREEN",		
	};
	backpack[] = 
	{
		"pca_assaultpack_mc"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_vhsd2"
	};
	scope[] =
	{
		"optic_aco"
	};
	bipod[] =
	{
		"rhsusf_acc_rvg_blk"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_glock17g4"
	};
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
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_9("rhsgref_30rnd_556x45_vhs2"),
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"pca_carryall_mc"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m249_light_L"
	};
	bipod[] = 
	{
		"rhsusf_acc_grip4_bipod"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ"),
		LIST_3("rhsusf_200Rnd_556x45_mixed_soft_pouch")
	};
	backpackItems[] = 
	{
		LIST_4("rhsusf_200Rnd_556x45_mixed_soft_pouch")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"pca_carryall_mc"
	};
	backpackItems[] += 
	{
		LIST_4("rhsusf_200Rnd_556x45_mixed_soft_pouch")
	};
	linkedItems[] += 
	{
		"ACE_Vector"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (AT)";
	backpack[] = 
	{
		"pca_carryall_mc"
	};	
	primaryWeapon[] =
	{
		"rhs_weap_vhsk2"
	};	
	secondaryWeapon[] = 
	{
		"rhs_weap_smaw_green"
	};
	secondaryAttachments[] =
	{
		"rhs_weap_optic_smaw"
	};
	backpackItems[] += 
	{
		LIST_2("rhs_mag_smaw_SR"),
		LIST_2("rhs_mag_smaw_HEAA")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"rhs_weap_vhsd2_bg_ct15x"
	};	
	backpackItems[] += 
	{
		LIST_16("rhs_mag_M441_HE"),
		LIST_15("rhs_mag_M433_HEDP"),
		LIST_5("1Rnd_Smoke_Grenade_shell"),
		LIST_5("rhsgref_30rnd_556x45_vhs2_t")
	};
	linkedItems[] += 
	{
		"ACE_Vector"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] =
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_4("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_4("1Rnd_SmokeRed_Grenade_shell"),
		LIST_5("rhsgref_30rnd_556x45_vhs2_t")		
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
};

class fac : sl 
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_11("rhs_mag_M441_HE"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_4("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_4("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_4("1Rnd_SmokeRed_Grenade_shell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] += 
	{
		"Laserdesignator_03"
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"pca_tacticalpack_mc"
	};
	primaryWeapon[] =
	{
		"rhs_weap_vhsk2"
	};	
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class hp : rm
{
	displayName = "Helicopter Pilot";
	traits[] = {"engineer"};
	headgear[] = 
	{
		"rhsusf_hgu56p_visor_green"
	};
	primaryWeapon[] =
	{
		"rhs_weap_vhsk2"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};	
	backpackItems[] = 
	{
		"ToolKit"
	};	
};

//********************************************************************************//
//Uncommon Roles - !!! CUSTOM ENTRIES NEEDED FOR CURATED ARSENAL !!!
//********************************************************************************//

class sn : rm 
{
	displayName = "Sniper";
	backpack[] = 
	{
		"pca_tacticalpack_mc"
	};	
	primaryWeapon[] = 
	{
		"rhs_weap_M107"
	};
	scope[] = 
	{
		"rhsusf_acc_nxs_3515x50f1_md_sun"
	};
	attachment[] = {""};
	bipod[] = {""};
	items[] +=
	{
		"ACE_ATragMX",
		"ACE_microDAGR"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_4("rhsusf_mag_10Rnd_STD_50BMG_M33"),
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ")
	};
	backpackItems[] = 
	{
		LIST_2("rhsusf_mag_10Rnd_STD_50BMG_M33"),
		LIST_2("rhsusf_mag_10Rnd_STD_50BMG_mk211")
	};
	linkedItems[] += 
	{
		"ACE_Vector"
	};
};

class spt : sl 
{
	displayName = "Spotter";
	backpack[] = 
	{
		"pca_tacticalpack_mc"
	};	
	primaryWeapon[] = 
	{
		"rhs_weap_vhsd2_bg"
	};
	scope[] = 
	{
		"rhsusf_acc_su230"
	};
	items[] +=
	{
		"ACE_ATragMX",
		"ACE_microDAGR"
	};	
	backpackItems[] = 
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),		
		"ACE_SpottingScope",
		"ACE_Tripod"
	};
};