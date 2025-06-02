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
		"ItemCompass"
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
		"CUP_I_B_PMC_Unit_40",
		"CUP_I_B_PMC_Unit_37"
	};
	vest[] = 
	{
		"milgp_v_marciras_assaulter_blk",
		"milgp_v_marciras_light_blk"
	};
	headgear[] = 
	{
		"CUP_H_Navy_CrewHelmet_Red"
	};
	backpack[] = 
	{
		"B_TacticalPack_blk"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_ACRC_blk_68"
	};
	scope[] = 
	{
		"rhsusf_acc_compm4"
	};
	items[] =
	{
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] = 
	{
		"ACRE_PRC343",
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_13("pca_mag_30Rnd_556x45_M955_PMAG_Base_Blk")
	};
	backpackItems[] = 
	{
		LIST_4("pca_mag_30Rnd_556x45_M955_PMAG_Base_Blk")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"milgp_v_marciras_hgunner_belt_blk"
	};
	primaryWeapon[] = 
	{
		"sps_weap_kac_lamg_blk",
		"sps_weap_kac_lamg_hg_blk"
	};
	scope[] =
	{
		"ptv_acc_acog_ta11"
	};
	bipod[] = 
	{
		"rhsusf_acc_harris_bipod"
	};
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("ptv_12Rnd_45ACP_USP"),
		LIST_3("sps_200Rnd_556x45_M995_Mixed_KAC_Box")
	};
	backpackItems[] = 
	{
		LIST_4("sps_200Rnd_556x45_M995_Mixed_KAC_Box")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_4("sps_200Rnd_556x45_M995_Mixed_KAC_Box")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"launch_MRAWS_black_F"
	};
	backpackItems[] = 
	{
		LIST_3("MRAWS_HEAT55_F")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_ACRC_EGLM_blk_68"
	};
	vest[] =
	{
		"milgp_v_marciras_grenadier_blk"
	};
	backpackItems[] = 
	{
		LIST_12("rhs_mag_M441_HE"),
		LIST_12("rhs_mag_M433_HEDP"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : gren 
{
	displayName = "Team Leader";
	backpackItems[] = 
	{
		LIST_2("pca_mag_30Rnd_556x45_M955_PMAG_Base_Blk"),
		LIST_2("pca_mag_30Rnd_556x45_M856A1_EMAG"),
		LIST_2("SmokeShell")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	uniform[] =
	{
		"U_C_Uniform_Formal_01_striped_F"
	};
	headgear[] =
	{
		"H_Cap_red"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_ACRC_EGLM_blk_68"
	};
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	magazines[] += 
	{
		LIST_3("ptv_12Rnd_45ACP_USP")
	};
	backpackItems[] =
	{
		LIST_2("pca_mag_30Rnd_556x45_M856A1_EMAG"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_13("rhs_mag_M441_HE"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	primaryWeapon[] = 
	{
		"CUP_arifle_ACRC_blk_68"
	};
	backpackItems[] =
	{
		LIST_2("pca_mag_30Rnd_556x45_M856A1_EMAG"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
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
		"Laserdesignator"
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"pca_eagle_a3_blk"
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
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	magazines[] += 
	{
		LIST_3("ptv_12Rnd_45ACP_USP")
	};
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

class mmg : rm 
{
	displayName = "Medium Machine Gunner";
	vest[] = 
	{
		"milgp_v_marciras_hgunner_belt_blk"
	};
	backpack[] = 
	{
		"CUP_B_USPack_Black"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Mk48"
	};
	scope[] =
	{
		"ptv_acc_acog_ta11"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("ptv_12Rnd_45ACP_USP"),
		LIST_3("rhsusf_100Rnd_762x51_m80a1epr")
	};
	backpackItems[] = 
	{
		LIST_6("rhsusf_100Rnd_762x51_m80a1epr")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"pca_eagle_a3_blk"
	};
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	magazines[] += 
	{
		LIST_3("ptv_12Rnd_45ACP_USP")
	};
	backpackItems[] = 
	{
		LIST_8("rhsusf_100Rnd_762x51_m80a1epr")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"pca_eagle_a3_blk"
	};
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_maaws"
	};
	secondaryAttachments[] = 
	{
		"rhs_optic_maaws"
	};
	magazines[] += 
	{
		LIST_2("ptv_12Rnd_45ACP_USP")
	};
	backpackItems[] = 
	{
		LIST_2("rhs_mag_maaws_HEAT")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"pca_eagle_a3_blk"
	};
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	magazines[] += 
	{
		LIST_2("ptv_12Rnd_45ACP_USP")
	};
	backpackItems[] = 
	{
		LIST_2("rhs_mag_maaws_HEAT"),
		"rhs_mag_maaws_HEDP",
		"rhs_mag_maaws_HE"
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	vest[] = 
	{
		"milgp_v_marciras_assaulter_blk"
	};
	headgear[] = 
	{
		"rhsusf_cvc_helmet",
		"rhsusf_cvc_alt_helmet",
		"rhsusf_cvc_ess"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_9("pca_mag_30Rnd_556x45_M955_PMAG_Base_Blk")
	};
	backpackItems[] = 
	{
		"ToolKit"
	};
};

class crew_co : crew 
{
	displayName = "Crewman Commander";
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("ptv_12Rnd_45ACP_USP"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"rhssaf_zrak_rd7j"
	};
};

class hp : rm 
{
	displayName = "Helicopter Pilot";
	vest[] = 
	{
		"rhsusf_spcs_ocp_crewman"
	};
	headgear[] = 
	{
		"rhsusf_ihadss"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("pca_mag_30Rnd_556x45_M955_PMAG_Base_Blk"),
		LIST_3("ptv_12Rnd_45ACP_USP"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class eng : rm 
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	backpack[] = 
	{
		"pca_eagle_a3_blk"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_4("rhsusf_m112_mag"),
		LIST_2("rhsusf_m112x4_mag")
	};
};

//********************************************************************************//
//Uncommon Roles - !!! CUSTOM ENTRIES NEEDED FOR CURATED ARSENAL !!!
//********************************************************************************//
class jp : rm 
{
	displayName = "Jet Pilot";
	uniform[] = 
	{
		"CUP_U_B_USArmy_PilotOverall"
	};
	vest[] = 
	{
		"CUP_V_B_PilotVest"
	};
	headgear[] = 
	{
		"rhsusf_hgu56p_visor_mask"
	};
	backpack[] = 
	{
		"B_Parachute"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = {};
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("ptv_12Rnd_45ACP_USP"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	backpackItems[] = {};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	vest[] = 
	{
		"rhsusf_spcs_ocp_sniper"
	};
	headgear[] = 
	{
		"rhsusf_ach_helmet_camo_ocp"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m14ebrri"
	};
	scope[] = 
	{
		"rhsusf_acc_ACOG"
	};
	attachment[] = {};
	bipod[] = 
	{
		"rhsusf_acc_harris_bipod"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_9("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	backpackItems[] = 
	{
		LIST_12("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class spt : rm 
{
	displayName = "Spotter";
	headgear[] = 
	{
		"rhsusf_ach_helmet_camo_ocp"
	};
	scope[] = 
	{
		"rhsusf_acc_ACOG"
	};
	backpackItems[] += 
	{
		LIST_2("SmokeShell"),
		"ACE_SpottingScope",
		"ACE_Tripod"
	};
	linkedItems[] += 
	{
		"Rangefinder"
	};
};

class hmg : rm 
{
	displayName = "Heavy Machine Gunner";
	backpack[] = 
	{
		"ace_compat_rhs_usf3_m2_carry"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_9("pca_mag_30Rnd_556x45_M955_PMAG_Base_Blk"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
};

class ahmg : rm 
{
	displayName = "Assistant Heavy Machine Gunner";
	backpack[] = 
	{
		"ace_csw_m3CarryTripodLow"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_9("pca_mag_30Rnd_556x45_M955_PMAG_Base_Blk"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};