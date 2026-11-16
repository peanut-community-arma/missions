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
		"pca_uniform_gorka_cdf_ttsko_winter",
		"pca_uniform_gorka_cdf_ttsko_winter_gloves"
	};
	vest[] = 
	{
		"milgp_v_mmac_assaulter_belt_wht"
	};
	headgear[] = 
	{
		"pca_opscore_cover_mcalp",
		"usp_opscore_mt_cover_ctg_mcalp"
	};
	backpack[] = 
	{
		"pca_assaultpack_mcalp"
	};
	primaryWeapon[] = 
	{
		"bear_weap_ak74m_zenitco01_camo",
		"rhs_weap_ak74m_zenitco01"
	};
	attachment[] =
	{
		"pca_flashlight_sf"
	};
	scope[] = 
	{
		"cup_optic_pechenegscope"
	};
	silencer[] =
	{
		"cup_muzzle_pbs4"
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
		LIST_2("rhs_mag_rgn"),
		LIST_13("rhs_30Rnd_545x39_7N22_AK")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_30Rnd_545x39_7N22_AK")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"milgp_v_mmac_hgunner_belt_wht"
	};
	backpack[] = 
	{
		"pca_kitbag_mcalp"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74M"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M17_Black"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_17Rnd_9x19_M17_Black"),
		LIST_4("aegis_95Rnd_545x39_mixed_7N22_ak12")
	};
	backpackItems[] = 
	{
		LIST_6("aegis_95Rnd_545x39_mixed_7N22_ak12")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"pca_kitbag_mcalp"
	};
	backpackItems[] += 
	{
		LIST_6("aegis_95Rnd_545x39_mixed_7N22_ak12")
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
		"CUP_launch_RPG7V"
	};
	secondaryAttachments[] =
	{
		"cup_optic_pgo7v3"
	};
	backpackItems[] += 
	{
		LIST_3("CUP_PG7VM_M")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"bear_weap_ak74mr_gp25_camo",
		"rhs_weap_ak74mr_gp25"
	};
	backpackItems[] = 
	{
		LIST_21("rhs_VOG25"),
		LIST_4("rhs_GRD40_White")
	};
};

class tl : gren 
{
	displayName = "Team Leader";
	backpackItems[] = 
	{
		LIST_2("rhs_30Rnd_545x39_7N22_AK"),
		LIST_2("rhs_30Rnd_545x39_AK_plum_green"),
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
		"CUP_hgun_M17_Black"
	};
	magazines[] += 
	{
		LIST_2("CUP_17Rnd_9x19_M17_Black")
	};
	backpackItems[] =
	{
		LIST_2("rhs_30Rnd_545x39_AK_plum_green"),
		LIST_21("rhs_VOG25"),
		LIST_6("rhs_GRD40_White"),
		LIST_2("rhs_GRD40_Green"),
		LIST_2("rhs_GRD40_Red")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_13("rhs_VOG25"),
		LIST_4("rhs_GRD40_White"),
		LIST_2("rhs_GRD40_Green"),
		LIST_2("rhs_GRD40_Red"),
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
		"rhs_weap_ak74mr_gp25"
	};
	backpackItems[] =
	{
		LIST_2("rhs_30Rnd_545x39_AK_plum_green"),
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
		"pca_kitbag_mcalp"
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
		"CUP_hgun_M17_Black"
	};
	magazines[] += 
	{
		LIST_2("CUP_17Rnd_9x19_M17_Black")
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
		"milgp_v_mmac_hgunner_belt_wht"
	};
	backpack[] = 
	{
		"B_Carryall_mcamo"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg_top_rail"
	};
	scope[] =
	{
		"rhsusf_acc_acog_usmc"
	};
	bipod[] = {};
	attachment[] = {};
	silencer[] = 
	{
		"cup_muzzle_snds_kzrzp_pk"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M17_Black"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_17Rnd_9x19_M17_Black"),
		LIST_3("rhs_100Rnd_762x54mmR_7BZ3")
	};
	backpackItems[] = 
	{
		LIST_5("rhs_100Rnd_762x54mmR_7BZ3")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"B_Carryall_mcamo"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M17_Black"
	};
	magazines[] += 
	{
		LIST_2("CUP_17Rnd_9x19_M17_Black")
	};
	backpackItems[] = 
	{
		LIST_7("rhs_100Rnd_762x54mmR_7BZ3")
	};
	linkedItems[] += 
	{
		"Rangefinder"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	primaryWeapon[] =
	{
		"CUP_arifle_AKS74U_top_rail"
	};
	backpack[] = 
	{
		"B_Carryall_mcamo"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M17_Black"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_fgm148"
	};
	magazines[] += 
	{
		LIST_2("CUP_17Rnd_9x19_M17_Black")
	};
	backpackItems[] = 
	{
		"rhs_fgm148_magazine_AT"
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"B_Carryall_mcamo"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M17_Black"
	};
	magazines[] += 
	{
		LIST_2("CUP_17Rnd_9x19_M17_Black")
	};
	backpackItems[] = 
	{
		"rhs_fgm148_magazine_AT"
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
	primaryWeapon[] =
	{
		"CUP_arifle_AKS74U_top_rail"
	};
	scope[] =
	{
		"rhsusf_acc_eotech_552",
		"ptv_acc_t1"
	};
	silencer[] = {};
	vest[] = 
	{
		"milgp_v_mmac_light_wht"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_30Rnd_545x39_7N22_AK")
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
		"CUP_hgun_M17_Black"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("CUP_17Rnd_9x19_M17_Black"),
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
	primaryWeapon[] =
	{
		"CUP_arifle_AKS74U_top_rail"
	};
	vest[] = 
	{
		"usp_crye_cpc_comms_mc"
	};
	headgear[] = 
	{
		"rhsusf_hgu56p_black"
	};
	hmd[] =
	{
		"ACE_NVG_Wide_Black"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M17_Black"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("rhs_30Rnd_545x39_7N22_AK"),
		LIST_3("CUP_17Rnd_9x19_M17_Black"),
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
		"pca_kitbag_mcalp"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_4("DemoCharge_Remote_Mag"),
		LIST_2("SatchelCharge_Remote_Mag")
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
		"CUP_hgun_M17_Black"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("CUP_17Rnd_9x19_M17_Black"),
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
		"milgp_v_mmac_marksman_belt_wht"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_svdp",
		"rhs_weap_svdp_wd"
	};
	scope[] = 
	{
		"rhs_acc_pso1m2"
	};
	attachment[] = {};
	silencer[] = 
	{
		"rhs_acc_tgpv2"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_10Rnd_762x54mmR_7N14")
	};
	backpackItems[] = 
	{
		LIST_12("rhs_10Rnd_762x54mmR_7N14")
	};
	linkedItems[] += 
	{
		"Rangefinder"
	};
};

class spt : rm 
{
	displayName = "Spotter";
	scope[] = 
	{
		"CUP_optic_PSO_1_AK"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	backpackItems[] += 
	{
		LIST_2("SmokeShell"),
		"ACE_SpottingScope",
		"ACE_Tripod",
		"ACE_Kestrel4500"
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_30Rnd_545x39_7N22_AK"),
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_30Rnd_545x39_7N22_AK"),
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