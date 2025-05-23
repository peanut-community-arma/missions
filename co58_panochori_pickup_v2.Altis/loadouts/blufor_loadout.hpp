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
		"aegis_rcu_rs_shex",
		"aegis_rcu_shex"
	};
	vest[] = 
	{
		"CUP_V_CPC_Fastbelt_coy",
		"CUP_V_CPC_Fastbelt_rngr"
	};
	headgear[] = 
	{
		"aegis_mch_semi"
	};
	backpack[] = 
	{
		"aegis_assaultpack_tan",
		"aegis_fieldpack_semi"
	};
	primaryWeapon[] = 
	{
		"aegis_weap_g36k_65_blk"
	};
	attachment[] =
	{
		"cup_acc_anpeq_15_black"
	};
	silencer[] =
	{
		"muzzle_snds_m"
	};
	scope[] = 
	{
		"hlc_optic_hensoldtzo_rds"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint"),
		LIST_2("ACE_CableTie")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_13("30Rnd_65x39_caseless_msbs_mag")
	};
	backpackItems[] = 
	{
		LIST_4("30Rnd_65x39_caseless_msbs_mag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"CUP_V_CPC_weaponsbelt_coy"
	};
	backpack[] = 
	{
		"aegis_tacticalpack_tan"
	};
	primaryWeapon[] = 
	{
		"pca_weap_negev_ng5"
	};
	silencer[] =
	{
		"cup_muzzle_snds_kzrzp_pk"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ"),
		LIST_3("150Rnd_762x54_Box")
	};
	backpackItems[] = 
	{
		LIST_4("150Rnd_762x54_Box")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"aegis_tacticalpack_tan"
	};
	backpackItems[] += 
	{
		LIST_4("150Rnd_762x54_Box")
	};
	linkedItems[] += 
	{
		"Rangefinder"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_M136"
	};
	backpackItems[] += 
	{
		"rhs_weap_M136"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"aegis_weap_g36k_gl_65_blk"
	};
	backpackItems[] = 
	{
		LIST_16("rhs_mag_M441_HE"),
		LIST_16("rhs_mag_M433_HEDP"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : gren 
{
	displayName = "Team Leader";
	vest[] = 
	{
		"CUP_V_CPC_tlbelt_coy"
	};
	backpackItems[] += 
	{
		LIST_2("30Rnd_65x39_caseless_msbs_mag"),
		LIST_2("30Rnd_65x39_caseless_msbs_mag_Tracer"),
		LIST_2("SmokeShell")
	};
	linkedItems[] += 
	{
		"Rangefinder"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17"
	};
	magazines[] += 
	{
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ")
	};
	backpackItems[] =
	{
		LIST_2("30Rnd_65x39_caseless_msbs_mag_Tracer"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("ACE_40mm_Flare_ir"),
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
		LIST_2("ACE_40mm_Flare_ir"),
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
		"aegis_weap_g36k_65_blk"
	};
	backpackItems[] =
	{
		LIST_2("30Rnd_65x39_caseless_msbs_mag_Tracer"),
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
		LIST_4("ACE_40mm_Flare_ir"),
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
		"aegis_tacticalpack_tan"
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
		"CUP_hgun_Glock17"
	};
	magazines[] += 
	{
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ")
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
		"rhsusf_spcs_ocp_saw"
	};
	backpack[] = 
	{
		"aegis_tacticalpack_tan"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m240B"
	};
	bipod[] = {};
	attachment[] = {};
	silencer[] = 
	{
		"rhsusf_acc_ARDEC_M240"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ"),
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
		"aegis_tacticalpack_tan"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17"
	};
	magazines[] += 
	{
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ")
	};
	backpackItems[] = 
	{
		LIST_8("rhsusf_100Rnd_762x51_m80a1epr")
	};
	linkedItems[] += 
	{
		"Rangefinder"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"aegis_tacticalpack_tan"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17"
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
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ")
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
		"aegis_tacticalpack_tan"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17"
	};
	magazines[] += 
	{
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ")
	};
	backpackItems[] = 
	{
		LIST_2("rhs_mag_maaws_HEAT"),
		"rhs_mag_maaws_HEDP",
		"rhs_mag_maaws_HE"
	};
	linkedItems[] += 
	{
		"Rangefinder"
	};
};

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	vest[] = 
	{
		"rhsusf_spcs_ocp_crewman"
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
		LIST_9("30Rnd_65x39_caseless_msbs_mag")
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
		"CUP_hgun_Glock17"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("rhsusf_mag_17Rnd_9x19_FMJ"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"Rangefinder"
	};
};

class hp : rm 
{
	displayName = "Helicopter Pilot";
	traits[] = {"engineer"};
	vest[] = 
	{
		"V_Chestrig_khk"
	};
	primaryWeapon[] = 
	{
		"aegis_weap_g36c_65_blk"
	};
	silencer[] = {};
	headgear[] = 
	{
		"H_PilotHelmetHeli_O",
		"aegis_helipilot_oli"
	};
	hmd[] =
	{
		"CUP_NVG_GPNVG_Hide"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("30Rnd_65x39_caseless_msbs_mag"),
		LIST_3("rhsusf_mag_17Rnd_9x19_FMJ"),
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
		"aegis_tacticalpack_tan"
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
		"CUP_hgun_Glock17"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("rhsusf_mag_17Rnd_9x19_FMJ"),
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
		"Rangefinder"
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
		LIST_9("30Rnd_65x39_caseless_msbs_mag"),
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
		LIST_9("30Rnd_65x39_caseless_msbs_mag"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
	linkedItems[] += 
	{
		"Rangefinder"
	};
};

class vip : baseMan 
{
	displayName = "Hostage";
	uniform[] = 
	{
		"U_BG_Guerilla2_3",
		"U_BG_Guerilla1_2_F",
		"aegis_guerilla_tshirt_m81",
		"aegis_guerilla_tshirt_m81_alt",
		"aegis_guerilla_garb_m81",
		"U_BG_Guerilla3_1",
		"U_BG_leader",
		"U_BG_Guerilla1_1"
	};
	headgear[] = 
	{
		LIST_4(""),
		"H_Booniehat_oli",
		"H_Bandanna_khk",
		"H_Bandanna_sand",
		"H_Cap_blk",
		"H_Cap_grn"
	};
	goggles[] =
	{
		"G_Blindfold_01_black_F",
		"G_Blindfold_01_white_F"
	};
};