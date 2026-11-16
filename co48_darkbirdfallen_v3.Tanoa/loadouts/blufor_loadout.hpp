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
		"pca_acu_oefcp"
	};
	vest[] =
	{
		"pca_spcs_rifleman_alt_oefcp"
	};
	headgear[] =
	{
		"pca_ach_oefcp"
	};
	backpack[] =
	{
		"pca_assaultpack_ocp"
	};
	primaryWeapon[] =
	{
		"rhs_weap_m4a1"
	};
	scope[] =
	{
		"CUP_optic_CompM4"
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_13("rhs_mag_30Rnd_556x45_M855A1_Stanag")
	};
	backpackItems[] =
	{
		LIST_4("rhs_mag_30Rnd_556x45_M855A1_Stanag")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	vest[] =
	{
		"pca_spcs_saw_oefcp"
	};
	backpack[] =
	{
		"pca_eagle_a3_oefcp"
	};
	primaryWeapon[] =
	{
		"rhs_weap_m249_light_S"
	};
	bipod[] =
	{
		"rhsusf_acc_saw_lw_bipod"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_glock17g4"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("rhsusf_mag_17Rnd_9x19_JHP"),
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
		"pca_eagle_a3_oefcp"
	};
	backpackItems[] +=
	{
		LIST_4("rhsusf_200Rnd_556x45_mixed_soft_pouch")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class rm_lat : rm
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] =
	{
		"CUP_launch_M136"
	};
	backpackItems[] +=
	{
		"CUP_launch_M136"
	};
};

class gren : rm
{
	displayName = "Grenadier";
	primaryWeapon[] =
	{
		"rhs_weap_m4a1_m203s"
	};
	backpackItems[] =
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_21("rhs_mag_M433_HEDP"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm
{
	displayName = "Team Leader";
	primaryWeapon[] =
	{
		"rhs_weap_m4a1_m203s"
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
	linkedItems[] +=
	{
		"Binocular"
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
		"rhsusf_weap_glock17g4"
	};
	magazines[] +=
	{
		LIST_2("rhsusf_mag_17Rnd_9x19_JHP")
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
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
		"pca_eagle_a3_oefcp"
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
		"rhsusf_weap_glock17g4"
	};
	magazines[] +=
	{
		LIST_2("rhsusf_mag_17Rnd_9x19_JHP")
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
		"pca_spcs_saw_oefcp"
	};
	backpack[] =
	{
		"pca_eagle_a3_oefcp"
	};
	primaryWeapon[] =
	{
		"CUP_lmg_M240_B"
	};
	scope[] =
	{
		"rhsusf_acc_acog_mdo"
	};
	bipod[] = {};
	attachment[] = {};
	silencer[] =
	{
		"rhsusf_acc_ARDEC_M240"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_glock17g4"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("rhsusf_mag_17Rnd_9x19_JHP"),
		LIST_3("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
	backpackItems[] =
	{
		LIST_6("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
};

class ammg : rm
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] =
	{
		"pca_eagle_a3_oefcp"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_glock17g4"
	};
	magazines[] +=
	{
		LIST_2("rhsusf_mag_17Rnd_9x19_JHP")
	};
	backpackItems[] =
	{
		LIST_8("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class crew : rm
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	vest[] =
	{
		"pca_spcs_crewman_oefcp"
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("hlc_30Rnd_9x19_FMJ_MP5")
	};
	backpackItems[] =
	{
		"ToolKit"
	};
	primaryWeapon[] =
	{
		"$NONE_hlc_smg_mp5n_tac$"
	};
	scope[] = {};
};

class crew_co : crew
{
	displayName = "Crewman Commander";
	sidearmWeapon[] =
	{
		"rhsusf_weap_glock17g4"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] +=
	{
		LIST_3("rhsusf_mag_17Rnd_9x19_JHP"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class hp : rm
{
	displayName = "Helicopter Pilot";
	vest[] =
	{
		"pca_spcs_crewman_oefcp"
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
		"rhsusf_weap_glock17g4"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_7("hlc_30Rnd_9x19_FMJ_MP5"),
		LIST_3("rhsusf_mag_17Rnd_9x19_JHP"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	backpackItems[] =
	{
		"ToolKit"
	};
	primaryWeapon[] =
	{
		"$NONE_hlc_smg_mp5n_tac$"
	};
	scope[] = {};
};

class sf_rm : rm
{
	displayName = "SF Rifleman";
	uniform[] =
	{
		"usp_g3c_kp_mc",
		"usp_g3c_kp_mx_mc",
		"usp_g3c_kp_or_mc",
		"usp_g3c_rs_kp_mc",
		"usp_g3c_rs_kp_mx_mc",
		"usp_g3c_rs_kp_or_mc",
		"usp_g3c_rs2_kp_mc",
		"usp_g3c_rs2_kp_mx_mc",
		"usp_g3c_rs2_kp_or_mc",
		"usp_pcu_g3c_kp_mc",
		"usp_pcu_g3c_kp_mx_mc",
		"usp_pcu_g3c_kp_or_mc",
		"usp_softshell_g3c_kp_mc",
		"usp_softshell_g3c_kp_mx_mc",
		"usp_softshell_g3c_kp_or_mc"
	};
	vest[] =
	{
		"s4_lbt_operator_mc"
	};
	backpack[] =
	{
		"pca_eagle_a3_oefcp"
	};
	headgear[] =
	{
		"pca_opscore_cover_ct_ocp",
		"pca_opscore_ct_mc",
		"pca_opscore_ct_mc2"
	};
	primaryWeapon[] =
	{
		"rhs_weap_mk18"
	};
	scope[] =
	{
		"cup_optic_elcan_specterdr_rmr_black"
	};
	bipod[] = {
		"rhsusf_acc_grip2"
	};
	attachment[] = {};
	silencer[] ={
		"rhsusf_acc_nt4_black"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_13("rhs_mag_30Rnd_556x45_M855A1_PMAG")
	};
	backpackItems[] =
	{
		LIST_4("rhs_mag_30Rnd_556x45_M855A1_PMAG")
	};
};

class sf_tl : sf_rm
{
	displayName = "SF Team Leader";
	primaryWeapon[] =
	{
		"rhs_weap_mk18_m320"
	};
	backpackItems[] =
	{
		LIST_4("rhs_mag_30Rnd_556x45_M855A1_PMAG"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class sf_ar : sf_rm
{
	displayName = "SF Autorifleman";
	backpack[] =
	{
		"pca_carryall_mc"
	};
	primaryWeapon[] =
	{
		"CUP_lmg_Mk48"
	};
	scope[] =
	{
		"rhsusf_acc_su230a_mrds"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_glock17g4"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"),
		LIST_3("rhsusf_mag_17Rnd_9x19_JHP")
	};
	backpackItems[] =
	{
		LIST_5("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
};

class sf_aar : sf_rm
{
	displayName = "SF Asst. Autorifleman";
	backpack[] =
	{
		"pca_carryall_mc"
	};
	backpackItems[] +=
	{
		LIST_4("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class sf_gren : sf_rm
{
	displayName = "SF Grenadier";
	primaryWeapon[] =
	{
		"rhs_weap_mk18_m320"
	};
	vest[] =
	{
		"s4_lbt_weapons_mc"
	};
	backpackItems[] =
	{
		LIST_4("rhs_mag_30Rnd_556x45_M855A1_PMAG"),
		LIST_31("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP")
	};
};

class sf_mm : sf_rm
{
	displayName = "SF Marksman";
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_scarh_ssr_tan$"
	};
	scope[] =
	{
		"hlc_optic_ATACR"
	};
	bipod[] = {
		"HLC_bipod_UTGShooters"
	};
	attachment[] = {};
	silencer[] ={
		"sps_acc_oss_hx762_sand"
	};
		// "$NONE_hlc_muzzle_fn_oem17s$"
	sidearmWeapon[] =
	{
		"rhsusf_weap_glock17g4"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_13("rhs_mag_20Rnd_SCAR_762x51_m80_ball"),
		LIST_3("rhsusf_mag_17Rnd_9x19_JHP")
	};
	backpackItems[] =
	{
		LIST_4("rhs_mag_20Rnd_SCAR_762x51_m80_ball")
	};
};

class sf_cls : sf_rm
{
	displayName = "SF Medic";
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
		"rhsusf_weap_glock17g4"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_5("rhsusf_mag_17Rnd_9x19_JHP"),
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	backpackItems[] =
	{
		LIST_12("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	linkedItems[] +=
	{
		"Binocular"
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
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
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] =
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};
