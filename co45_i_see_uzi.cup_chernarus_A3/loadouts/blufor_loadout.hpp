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
		"usp_pcu_g3c_blk",
		"usp_pcu_g3c_kp_blk",
		"usp_pcu_g3c_kp_mx_blk",
		"usp_pcu_g3c_kp_or_blk",
		"usp_pcu_g3c_mx_blk",
		"usp_pcu_g3c_or_blk"
	};
	vest[] = 
	{
		"pca_vest_invisible_plate",
		"pca_vest_invisible_kevlar",
		"milgp_v_marciras_assaulter_blk",
		"milgp_v_marciras_assaulter_belt_blk",
		"milgp_v_marciras_grenadier_blk",
		"milgp_v_marciras_grenadier_belt_blk",
		"milgp_v_marciras_hgunner_blk",
		"milgp_v_marciras_hgunner_belt_blk",
		"milgp_v_marciras_light_blk",
		"milgp_v_marciras_marksman_blk",
		"milgp_v_marciras_marksman_belt_blk",
		"milgp_v_marciras_medic_blk",
		"milgp_v_marciras_medic_belt_blk",
		"milgp_v_marciras_teamleader_blk",
		"milgp_v_marciras_teamleader_belt_blk",
		"V_TacVest_blk",
		"V_BandollierB_blk",
		"V_ChestrigF_blk"
	};
	headgear[] = 
	{
		"TC_Helmet_Invisible_Medium",
		"H_Watchcap_blk",
		"H_Booniehat_blk",
		"H_Watchcap_blk",
		"H_Cap_headphones_blk",
		"CUP_H_PMC_EP_Headset",
		"amf_beret_para"
	};
	goggles[] = 
	{
		"CUP_RUS_Balaclava_blk"
	};
	hmd[] = 
	{
		"CUP_NVG_PVS15_black"
	};
	backpack[] = 
	{
		"pca_backpack_invisible",
		"pca_backpack_invisible_large",
		"B_AssaultPack_blk",
		"B_Carryall_blk",
		"pca_eagle_a3_blk"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_UZI"
	};
	scope[] = 
	{
	};
	silencer[] = 
	{
		"CUP_muzzle_snds_UZI"
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
		LIST_2("rhs_mag_m67"),
		LIST_13("fwa_32rnd_9x19_uzi")
	};
	backpackItems[] = 
	{
		LIST_4("fwa_32rnd_9x19_uzi")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"milgp_v_marciras_hgunner_belt_blk"
	};
	backpack[] = 
	{
		"B_Carryall_blk"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_UZI"
	};
	bipod[] = 
	{
		
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Browning_HP"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_2("CUP_13Rnd_9x19_Browning_HP"),
		LIST_3("CUP_72Rnd_9x19_UZI_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_72Rnd_9x19_UZI_M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"B_Carryall_blk"
	};
	backpackItems[] += 
	{
		LIST_4("CUP_72Rnd_9x19_UZI_M")
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
		"CUP_launch_APILAS"
	};
	backpackItems[] += 
	{
		"CUP_launch_APILAS"
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
	backpackItems[] = 
	{
		LIST_2("fwa_32rnd_9x19_uzi"),
		LIST_2("fwa_32rnd_9x19_uzi_tracer_red"),
		LIST_2("SmokeShell")
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
	primaryWeapon[] = 
	{
		"CUP_smg_UZI"
	};
	silencer[] = 
	{
		"CUP_muzzle_snds_UZI"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_M320"
	};
	magazines[] += 
	{
		LIST_2("1Rnd_HE_Grenade_shell")
	};
	backpackItems[] =
	{
		LIST_2("fwa_32rnd_9x19_uzi_tracer_red"),
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
		"CUP_smg_UZI"
	};
	backpackItems[] =
	{
		LIST_2("fwa_32rnd_9x19_uzi_tracer_red"),
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
		"B_Carryall_blk"
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
		"CUP_hgun_Browning_HP"
	};
	magazines[] += 
	{
		LIST_2("CUP_13Rnd_9x19_Browning_HP")
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
		"rhsusf_assault_eagleaiii_ocp"
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
		"rhsusf_weap_glock17g4"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_2("rhsusf_mag_17Rnd_9x19_JHP"),
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
		"rhsusf_assault_eagleaiii_ocp"
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
		LIST_8("rhsusf_100Rnd_762x51_m80a1epr")
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
		"rhsusf_assault_eagleaiii_ocp"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_glock17g4"
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
		LIST_2("rhsusf_mag_17Rnd_9x19_JHP")
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
		"rhsusf_assault_eagleaiii_ocp"
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
		LIST_2("rhs_mag_maaws_HEAT"),
		"rhs_mag_maaws_HEDP",
		"rhs_mag_maaws_HE"
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
		LIST_2("rhs_mag_m67"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag")
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
		"rhsusf_weap_glock17g4"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		LIST_3("rhsusf_mag_17Rnd_9x19_JHP"),
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
		"rhsusf_assault_eagleaiii_ocp"
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
		LIST_2("rhs_mag_m67"),
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
		LIST_2("rhs_mag_m67"),
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
		LIST_2("rhs_mag_m67"),
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