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
		LIST_3("ptv_u_g3_trollwdl"),
		LIST_2("ptv_u_g3_trollwdl_rs"),
		"ptv_u_g3cw_trollwdl",
		"ptv_u_g3cw_trollwdl_grn"
	};
	vest[] =
	{
		"V_thor_wdl"
	};
	headgear[] =
	{
		LIST_6("ptv_viper_ts_cover"),
		"ptv_viper_ts_cover2",
		"ptv_viper_ts_cover_g",
		"ptv_viper_ts_cover2_g",
		"ptv_viper_ts_cover_gc",
		"ptv_viper_ts_cover2_gc"
	};
	goggles[] = {
		"G_Headset_Tactical_khk"
	};
	backpack[] =
	{
		"ptv_DeltaPack_AFG"
	};
	primaryWeapon[] =
	{
		"ptv_rs556"
	};
	scope[] =
	{
		"JCA_optic_MROS_olive"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_packingBandage"),
		LIST_5("ACE_quikclot"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_13("CUP_30Rnd_556x45_Emag")
	};
	backpackItems[] =
	{
		LIST_4("CUP_30Rnd_556x45_Emag")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	vest[] =
	{
		"V_thor_wdl"
	};
	backpack[] =
	{
		"B_Kitbag_khk"
	};
	primaryWeapon[] =
	{
		"ptv_ng5"
	};
	bipod[] = {};
	sidearmWeapon[] =
	{
		"ptv_l9a2_g"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_2("ptv_17Rnd_9mm_L9A2"),
		LIST_3("ptv_150Rnd_556x45_Negev")
	};
	backpackItems[] =
	{
		LIST_4("ptv_150Rnd_556x45_Negev")
	};
};

class aar : rm
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] =
	{
		"B_Kitbag_khk"
	};
	backpackItems[] +=
	{
		LIST_4("ptv_150Rnd_556x45_Negev")
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
		"CUP_launch_M72A6"
	};
	backpackItems[] +=
	{
		"CUP_launch_M72A6"
	};
};

class gren : rm
{
	displayName = "Grenadier";
	primaryWeapon[] =
	{
		"ptv_rs556_gl"
	};
	backpackItems[] =
	{
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_21("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm
{
	displayName = "Team Leader";
	primaryWeapon[] =
	{
		"ptv_rs556_gl"
	};
	backpackItems[] =
	{
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("CUP_30Rnd_556x45_Emag_Tracer_Red"),
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
		"ptv_rs556_gl"
	};
	sidearmWeapon[] =
	{
		"ptv_l9a2_g"
	};
	magazines[] +=
	{
		LIST_2("ptv_17Rnd_9mm_L9A2")
	};
	backpack[] =
	{
		"B_Kitbag_khk"
	};
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_2("CUP_30Rnd_556x45_Emag_Tracer_Red"),
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
	linkedItems[] +=
	{
		"Laserdesignator_03"
	};
};

class sgt : sl
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_13("CUP_1Rnd_HE_M203"),
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
	backpackItems[] +=
	{
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_1("SmokeShellRed")
	};
};

class fac : sl
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_11("CUP_1Rnd_HE_M203"),
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
		"B_Kitbag_khk"
	};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_quikclot"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit"),
		LIST_30("ACE_suture")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	sidearmWeapon[] =
	{
		"ptv_l9a2_g"
	};
	magazines[] +=
	{
		LIST_2("ptv_17Rnd_9mm_L9A2")
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_10("ACE_quikclot"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit")
	};
};

class mmg : rm
{
	displayName = "Medium Machine Gunner";
	vest[] =
	{
		"V_thor_wdl"
	};
	backpack[] =
	{
		"B_Kitbag_khk"
	};
	primaryWeapon[] =
	{
		"ptv_m60e4r_g"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] =
	{
		"ptv_l9a2_g"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_2("ptv_17Rnd_9mm_L9A2"),
		LIST_3("ptv_100Rnd_762x51_M_M60")
	};
	backpackItems[] =
	{
		LIST_6("ptv_100Rnd_762x51_M_M60")
	};
};

class ammg : rm
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] =
	{
		"B_Kitbag_khk"
	};
	sidearmWeapon[] =
	{
		"ptv_l9a2_g"
	};
	magazines[] +=
	{
		LIST_2("ptv_17Rnd_9mm_L9A2")
	};
	backpackItems[] =
	{
		LIST_8("ptv_100Rnd_762x51_M_M60")
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
		"ptv_M3_OD"
	};
	sidearmWeapon[] =
	{
		"ptv_l9a2_g"
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
		LIST_2("ptv_17Rnd_9mm_L9A2")
	};
	backpackItems[] =
	{
		LIST_2("MRAWS_HEAT55_F")
	};
};

class amat : rm
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] =
	{
		"ptv_M3_OD"
	};
	sidearmWeapon[] =
	{
		"ptv_l9a2_g"
	};
	magazines[] +=
	{
		LIST_2("ptv_17Rnd_9mm_L9A2")
	};
	backpackItems[] =
	{
		LIST_2("MRAWS_HEAT55_F"),
		"MRAWS_HE_F"
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
		"V_thor03_wdl"
	};
	backpack[] =
	{
		"pca_backpack_invisible"
	};
	headgear[] =
	{
		"CUP_H_CVC"
	};
	primaryWeapon[] =
	{
		"ptv_cbj_ms2"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_9("ptv_30Rnd_65x25_CBJ_Mag")
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
		"ptv_l9a2_g"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] +=
	{
		LIST_3("ptv_17Rnd_9mm_L9A2"),
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
	uniform[] = {
		"USAF_Overalls_Ranger_6_w"
	};
	vest[] =
	{
		"V_thor03_rgr"
	};
	backpack[] =
	{
		"pca_backpack_invisible"
	};
	headgear[] =
	{
		"H_PilotHelmetHeli_B"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] =
	{
		"ptv_cbj_ms2"
	};
	sidearmWeapon[] =
	{
		"ptv_l9a2_g"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_7("ptv_100Rnd_65x25_CBJ_Mag"),
		LIST_3("ptv_17Rnd_9mm_L9A2"),
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
		"B_Kitbag_khk"
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
		"H_PilotHelmetHeli_B"
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
		"ptv_l9a2_g"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_5("ptv_17Rnd_9mm_L9A2"),
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
		LIST_2("HandGrenade"),
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
		LIST_2("HandGrenade"),
		LIST_9("CUP_30Rnd_556x45_Emag"),
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
		LIST_2("HandGrenade"),
		LIST_9("CUP_30Rnd_556x45_Emag"),
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
