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
		"U_B_UBACS_mtp_f"
	};
	vest[] = 
	{
		"milgp_v_jpc_assaulter_belt_rgr"
	};
	headgear[] = 
	{
		"H_HelmetSpecB_green"
	};
	backpack[] = 
	{
		"B_AssaultPack_khk"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_scarl_std_srx$"
	};
	secondaryWeapon[] = 
	{
		""
	};
	scope[] = 
	{
		"cup_optic_sb_11_4x20_pm_pip"
	};
	linkedItems[] += 
	{
		""
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
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_13("hlc_30Rnd_556x45_EPR_L5")
	};
	backpackItems[] = 
	{
		LIST_4("hlc_30Rnd_556x45_EPR_L5")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"milgp_v_jpc_hgunner_belt_rgr"
	};
	backpack[] = 
	{
		"B_AssaultPack_khk"
	};
	primaryWeapon[] = 
	{
		"sps_weap_kac_amg_tan"
	};
	scope[] = 
	{
		"$NONE_hlc_optic_hensoldtzo_rds$"
	};
	bipod[] = 
	{
		"cup_bipod_vltor_modpod"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Duty"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("16Rnd_9x21_mag"),
		LIST_3("rhsusf_100Rnd_762x51_m62_tracer")
	};
	backpackItems[] = 
	{
		LIST_4("rhsusf_100Rnd_762x51_m62_tracer")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	vest[] = 
	{
		"milgp_v_jpc_assaulter_belt_rgr"
	};
	backpack[] = 
	{
		"B_Kitbag_rgr"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_M136"
	};
	backpackItems[] += 
	{
		LIST_4("rhsusf_100Rnd_762x51_m62_tracer")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	vest[] = 
	{
		"milgp_v_jpc_marksman_belt_rgr"
	};
	backpack[] = 
	{
		"B_AssaultPackSpec_rgr"
	};
	secondaryWeapon[] = 
	{
		"launch_MRAWS_green_rail_F"
	};
	backpackItems[] = 
	{
		LIST_2("MRAWS_HE_F"),
		LIST_3("MRAWS_HEAT_F")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"milgp_v_jpc_grenadier_belt_rgr"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_scarl_std_eglm$"
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
	vest[] = 
	{
		"milgp_v_jpc_teamleader_belt_rgr"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_scarl_std_eglm$"
	};
	secondaryWeapon[] = 
	{
		""
	};
	backpackItems[] =
	{
		LIST_2("hlc_30Rnd_556x45_EPR_T_L5"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
	linkedItems[] += 
	{
		"rhsusf_bino_lrf_Vector21"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	vest[] = 
	{
		"milgp_v_jpc_grenadier_belt_rgr"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_scarl_std_eglm$"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Duty"
	};
	magazines[] += 
	{
		"Laserbatteries",
		LIST_2("16Rnd_9x21_mag")
	};
	backpackItems[] =
	{
		
		LIST_2("hlc_30Rnd_556x45_EPR_T_L5"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
	linkedItems[] += 
	{
		"Laserdesignator"
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	vest[] = 
	{
		"milgp_v_jpc_teamleader_belt_rgr"
	};
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
	linkedItems[] += 
	{
		"Laserdesignator"
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	vest[] = 
	{
		"milgp_v_jpc_teamleader_belt_rgr"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_magpul556$"
	};
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_2("hlc_30Rnd_556x45_EPR_T_L5"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] += 
	{
		"Laserdesignator"
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
	vest[] = 
	{
		"milgp_v_jpc_medic_belt_rgr"
	};
	backpack[] = 
	{
		"B_Kitbag_rgr"
	};
	secondaryWeapon[] = 
	{
		""
	};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	vest[] = 
	{
		"milgp_v_jpc_medic_belt_rgr"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Duty"
	};
	magazines[] += 
	{
		LIST_2("16Rnd_9x21_mag")
	};
	backpack[] = 
	{
		"amf_felin_tecpack_grn"
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_18("ACE_bloodIV"),
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
		"B_Kitbag_rgr"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_M240_B"
	};
	bipod[] = {};
	attachment[] = {};
	silencer[] = 
	{
		"rhsusf_acc_ARDEC_M240"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Duty"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("16Rnd_9x21_mag"),
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
		"B_Kitbag_rgr"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Duty"
	};
	magazines[] += 
	{
		LIST_2("16Rnd_9x21_mag")
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

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"B_Kitbag_rgr"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Duty"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_MAAWS"
	};
	secondaryAttachments[] = 
	{
		"CUP_optic_MAAWS_Scope"
	};
	magazines[] += 
	{
		LIST_2("16Rnd_9x21_mag")
	};
	backpackItems[] = 
	{
		LIST_2("CUP_MAAWS_HEAT_M")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"B_Kitbag_rgr"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Duty"
	};
	magazines[] += 
	{
		LIST_2("16Rnd_9x21_mag")
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_M136"
	};
	backpackItems[] = 
	{
		LIST_2("MRAWS_HE_F"),
		LIST_4("MRAWS_HEAT_F")
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("hlc_30Rnd_556x45_EPR_L5")
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
		"CUP_hgun_Duty"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("16Rnd_9x21_mag"),
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
		"CUP_hgun_Duty"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("hlc_30Rnd_556x45_EPR_L5"),
		LIST_3("16Rnd_9x21_mag"),
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
		"B_Kitbag_rgr"
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
		"CUP_hgun_Duty"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("16Rnd_9x21_mag"),
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
		LIST_9("hlc_30Rnd_556x45_EPR_L5"),
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
		LIST_9("hlc_30Rnd_556x45_EPR_L5"),
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

class aa : rm 
{
	displayName = "Missile Specialist (AA)";
	backpack[] = 
	{
		"B_Kitbag_rgr"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Duty"
	};
	secondaryWeapon[] = 
	{
		"launch_i_Titan_F"
	};
	magazines[] += 
	{
		LIST_2("16Rnd_9x21_mag")
	};
	backpackItems[] = 
	{
		LIST_2("Titan_AA")
	};
};

class aaa : rm 
{
	displayName = "Assistant Missile Specialist (AA)";
	backpack[] = 
	{
		"PCA_carryall_od"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Duty"
	};
	magazines[] += 
	{
		LIST_2("16Rnd_9x21_mag")
	};
	backpackItems[] = 
	{
		LIST_3("Titan_AA")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class uav : rm 
{
	displayName = "Drone Operator";
	backpackItems[] += 
	{
		LIST_2("SmokeShell"),
		"Laserbatteries"
	};
	linkedItems[] += 
	{
		"Rangefinder",
		"B_UavTerminal"
	};
};
