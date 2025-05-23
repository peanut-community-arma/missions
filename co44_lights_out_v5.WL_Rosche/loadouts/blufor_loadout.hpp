class baseMan 
{
	displayName = "Unarmed";
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {};
	hmd[] = {};
	faces[] = {};
	insignias[] = {};
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	magazines[] = {};
	items[] = {};
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
		"rhsusf_ANPVS_15"
	};
	backpackItems[] = {};
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"simc_tcu_mk3_rain_parka_erdlh",
"simc_tcu_mk3_erdlh",
"simc_tcu_mk3_nomex_fold_erdlh",
"simc_tcu_mk3_nomex_erdlh",
"simc_tcu_mk3_rollh_erdlh",
"simc_tcu_mk3_roll_erdlh",
"simc_tcu_mk3_sog_nomex_erdlh",
"simc_tcu_mk3_sog_erdlh",
"simc_tcu_mk3_tee_erdlh",
"simc_tcu_mk3_tuck_erdlh"
	};
	vest[] = 
	{
		"simc_vest_faust_lbv_blk",
"simc_vest_faust_lbv_holster_blk",
"simc_vest_faust_lbv_lc2_blk",
"simc_vest_faust_lc2_blk",
"simc_vest_faust_lc2_holster_blk",
"simc_vest_faust_lc2_saw_blk"
	};
	headgear[] = 
	{
		"simc_protec_nvg",
"simc_protec_nvg_strobe",
"simc_protec_nvg_strobe_swdg",
"simc_protec_nvg_strobe_swdg_low",
"simc_protec_nvg_swdg",
"simc_protec_nvg_swdg_low",
"simc_protec_hs_nvg",
"simc_protec_hs_nvg_strobe",
"simc_protec_hs_nvg_strobe_swdg",
"simc_protec_hs_nvg_strobe_swdg_low",
"simc_protec_hs_nvg_swdg",
"simc_protec_hs_nvg_swdg_low"
	};
	backpack[] = 
	{
		"pca_backpack_invisible",
"pca_backpack_invisible_large",

"simc_alice_pack",
"simc_alice_pack_2",
"simc_alice_pack_3",
"simc_alice_pack_4",
"simc_alice_pack_5",
"simc_alice_pack_6",
"simc_alice_pack_7",
"simc_ranger_ruck",
"simc_ranger_ruck_canvas",
"simc_ranger_ruck_light",
"simc_ranger_ruck_patrol"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_MP5SD6"
	};
	scope[] = 
	{
		"cup_optic_aimpoint_5000"
	};
	bipod[] = 
	{
		"rhsusf_acc_kac_grip"
	};
	attachment[] = 
	{
		"rhsusf_acc_anpeq15side_bk"
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_M9A1"
	};
	sidearmAttachments[] =
	{
		"cup_muzzle_snds_m9",
		"cup_acc_mlpls_laser"
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
		LIST_2("ACE_IR_Strobe_Item")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_16("hlc_30Rnd_9x19_FMJ_MP5"),
		LIST_3("CUP_15Rnd_9x19_M9")

	};
	backpackItems[] = 
	{
		LIST_4("hlc_30Rnd_9x19_FMJ_MP5")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
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
		"rhs_weap_m249_light_S"
	};
	bipod[] = 
	{
		"rhsusf_acc_saw_lw_bipod"
	};
	attachment[] = 
	{
		"",
		"rhsusf_acc_anpeq15side"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("rhsusf_200Rnd_556x45_mixed_soft_pouch")
	};
	backpackItems[] = 
	{
		LIST_4("rhsusf_200Rnd_556x45_mixed_soft_pouch")
	};
};

class aar : rm 
{
	displayName = "Rifleman (Spotter)";
	
	linkedItems[] += 
	{
		"ACE_Vector"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_M136"
	};
	sidearmWeapon[] =
	{
		
	};

	backpackItems[] = 
	{
		"rhs_weap_M136"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_20("hlc_30Rnd_9x19_FMJ_MP5"),
		

	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"rhsusf_spcs_ocp_grenadier"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m4a1_m203s"
	};
	backpackItems[] = 
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	
	items[] += 
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_M9A1"

	};
	backpackItems[] += 
	{
		
		LIST_2("SmokeShell")
	};
	linkedItems[] += 
	{
		"ACE_Vector"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	vest[] = 
	{
		"simc_vest_faust_lbv_holster_blk"
	};
	
	backpackItems[] +=
	{
		
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	
	
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"simc_alice_pack"
	};
	backpackItems[] +=
	{
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		//LIST_4("ACE_personalAidKit"),
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

	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_15("hlc_30Rnd_9x19_FMJ_MP5"),

	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_20("ACE_elasticBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_packingBandage"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		//LIST_4("ACE_personalAidKit"),
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
		"rhsusf_weap_m9"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP"),
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
	backpackItems[] = 
	{
		LIST_8("rhsusf_100Rnd_762x51_m80a1epr")
	};
	linkedItems[] += 
	{
		"ACE_Vector"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"rhsusf_assault_eagleaiii_ocp"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_maaws"
	};
	secondaryAttachments[] = 
	{
		"rhs_optic_maaws"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_m9"
	};
	magazines[] += 
	{
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP")
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
	backpackItems[] = 
	{
		LIST_2("rhs_mag_maaws_HEAT"),
		"rhs_mag_maaws_HEDP",
		"rhs_mag_maaws_HE"
	};
	linkedItems[] += 
	{
		"ACE_Vector"
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
	sidearmWeapon[] = 
	{
		"rhsusf_weap_m9"
	};
	magazines[] += 
	{
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP")
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

class dm : rm 
{
	displayName = "Designated Marksman";
	vest[] = 
	{
		"simc_vest_faust_lbv_blk"
	};
	headgear[] = 
	{
	"simc_protec_hs_nvg"
	};
	primaryWeapon[] = 
	{

"rhs_weap_sr25",
"rhs_weap_sr25_wd"
	};
	scope[] = 
	{
		"cup_optic_an_pvs_4"
	};
	attachment[] = {
	"rhsusf_acc_sr25s"
	};
	bipod[] = 
	{
		"rhsusf_acc_harris_bipod"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M9A1"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_6("CUP_15Rnd_9x19_M9"),
		LIST_9("rhsusf_20Rnd_762x51_SR25_m118_special_Mag")
	};
	backpackItems[] = 
	{
		LIST_10("rhsusf_20Rnd_762x51_SR25_m118_special_Mag")
		
	};
	linkedItems[] += 
	{
		"ACE_Vector"
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
		"rhsusf_weap_m9"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"ACE_Vector"
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
	sidearmWeapon[] = 
	{
		"rhsusf_weap_m9"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
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
		"ACE_Vector"
	};
};