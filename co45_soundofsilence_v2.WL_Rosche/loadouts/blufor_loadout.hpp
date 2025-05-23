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
	// (For respawns) Tiny light to illuminate player's sights
	code = "if (local _this) then { _this spawn { sleep 5; [_this,{ if !(player isEqualTo tmf_localrespawnedunit) exitWith {}; _light = '#lightpoint' createVehicleLocal [0,0,0]; _light setLightBrightness 0.1;  light setLightAmbient [0.8, 0.8, 1.0]; _light setLightColor [0.8, 0.8, 1.0]; _light attachTo [_this, [0,0.5,0.2], 'righthand', true];}] remoteExec ['call',_this]; }; };";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] =
	{
		LIST_3("simc_tcu_mk3_erdl"),
		"simc_tcu_mk3_rollh_erdl",
		"simc_tcu_mk3_roll_erdl"
	};
	vest[] =
	{
		"simc_m69",
		"simc_m69_lce_56_light"
	};
	headgear[] =
	{
		LIST_2("simc_m1_net_band"),
		LIST_3("simc_m1"),
		LIST_4("simc_m1_cover_loose_erdl")
	};
	hmd[] = {
		"",
		"nvg_scrim_wdl",
		"nvg_scrim_wdl_grass",
		"nvg_scrim_wdl_leaves_1",
		"nvg_scrim_wdl_leaves_2",
		"nvg_scrim_wdl_leaves_3",
		"nvg_scrim_wdl_pine"
	};
	backpack[] =
	{
		LIST_3("simc_lw_ruck_light"),
		"simc_m1941_pack_og107"
	};
	primaryWeapon[] =
	{
		"fwa_weap_colt_603_m16a1"
	};
	silencer[] = {
		"fwa_acc_sionics_maw"
	};
	secondaryWeapon[] =
	{
		"rhs_weap_m72a7"
	};
	items[] =
	{
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine")
	};
	magazines[] =
	{
		LIST_2("rhs_mag_an_m8hc"),
		LIST_2("rhs_grenade_mkii_mag"),
		LIST_13("rhs_mag_20Rnd_556x45_M193_Stanag")
	};
	backpackItems[] =
	{
		LIST_4("rhs_mag_20Rnd_556x45_M193_Stanag"),
		"ACRE_PRC343",
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_splint")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	vest[] =
	{
		"simc_m69_lce_56_mg"
	};
	backpack[] =
	{
		"simc_alice_pack"
	};
	primaryWeapon[] =
	{
		"CUP_lmg_M60"
	};
	magazines[] =
	{
		LIST_2("rhs_mag_an_m8hc"),
		LIST_2("rhs_grenade_mkii_mag"),
		LIST_3("rhsusf_100Rnd_762x51")
	};
	backpackItems[] =
	{
		LIST_4("rhsusf_100Rnd_762x51")
	};
};

class aar : rm
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] =
	{
		"simc_alice_pack"
	};
	backpackItems[] +=
	{
		LIST_4("rhsusf_100Rnd_762x51")
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
		"rhs_weap_m72a7"
	};
	backpackItems[] =
	{
		"rhs_weap_m72a7"
	};
};

class gren : rm
{
	displayName = "Grenadier";
	vest[] =
	{
		"simc_m69_lce_56_gren"
	};
	primaryWeapon[] =
	{
		"fwa_weap_colt_603_m16a1_m203"
	};
	secondaryWeapon[] =
	{
		"rhsusf_weap_m1911a1"
	};
	magazines[] =
	{
		LIST_2("rhs_mag_an_m8hc"),
		LIST_2("rhs_grenade_mkii_mag"),
		LIST_4("rhsusf_mag_7x45acp_MHP"),
		LIST_10("rhs_mag_20Rnd_556x45_M193_Stanag")
	};
	backpackItems[] =
	{
		LIST_21("rhs_mag_M441_HE")
	};
};

class tl : rm
{
	displayName = "Team Leader";
	vest[] =
	{
		LIST_2("simc_m1955_lce_61_officer"),
		LIST_3("simc_m1955_lce_61_officer_band")
	};
	headgear[] =
	{
		"simc_bush_hat_erdl",
		"simc_bush_hat_flat_erdl",
		"simc_bush_hat_foldf_erdl",
		"simc_bush_hat_foldr_erdl",
		"simc_bush_hat_tie_erdl"
	};
	hmd[] = {};
	primaryWeapon[] =
	{
		"fwa_weap_colt_603_m16a1_m203"
	};
	magazines[] =
	{
		LIST_2("rhs_mag_an_m8hc"),
		LIST_2("rhs_grenade_mkii_mag"),
		LIST_10("rhs_mag_20Rnd_556x45_M193_Stanag")
	};
	backpackItems[] =
	{
		LIST_10("rhs_mag_M441_HE"),
		LIST_2("rhs_mag_20Rnd_556x45_M193_Stanag"),
		LIST_2("rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red"),
		LIST_2("rhs_mag_an_m8hc")
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
	// backpackItems[] += {};
};

class sgt : sl
{
	displayName = "Platoon Sergeant";
};

class co : sl
{
	displayName = "Platoon Commander";
};

class rm_fa : rm
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	secondaryWeapon[] =	{};
	backpack[] =
	{
		"simc_lw_ruck_medic"
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
		"rhsusf_weap_m1911a1"
	};
	magazines[] +=
	{
		LIST_3("rhsusf_mag_7x45acp_MHP")
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_epinephrine"),
		LIST_15("ACE_morphine"),
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
		"simc_m1955_lce_61_mg"
	};
	backpack[] =
	{
		"simc_alice_pack"
	};
	primaryWeapon[] =
	{
		"CUP_lmg_M60"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] =
	{
		"rhsusf_weap_m1911a1"
	};
	magazines[] =
	{
		LIST_2("rhs_mag_an_m8hc"),
		LIST_2("rhs_grenade_mkii_mag"),
		LIST_3("rhsusf_100Rnd_762x51")
	};
	backpackItems[] =
	{
		LIST_4("rhsusf_100Rnd_762x51")
	};
};

class ammg : rm
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] =
	{
		"simc_alice_pack"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_m1911a1"
	};
	magazines[] +=
	{
		LIST_3("rhsusf_mag_7x45acp_MHP")
	};
	backpackItems[] =
	{
		LIST_4("rhsusf_100Rnd_762x51")
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
		"simc_alice_pack"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_m1911a1"
	};
	secondaryWeapon[] =
	{
		"fwa_weap_m67"
	};
	magazines[] +=
	{
		LIST_3("rhsusf_mag_7x45acp_MHP")
	};
	backpackItems[] =
	{
		LIST_2("fwa_1rnd_m67_HEAT")
	};
};

class amat : rm
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] =
	{
		"simc_alice_pack"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_m1911a1"
	};
	magazines[] +=
	{
		LIST_3("rhsusf_mag_7x45acp_MHP")
	};
	backpackItems[] =
	{
		LIST_2("fwa_1rnd_m67_HEAT"),
		"fwa_1rnd_m67_HE"
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
		LIST_2("rhs_mag_an_m8hc"),
		LIST_2("rhs_grenade_mkii_mag"),
		LIST_9("rhs_mag_20Rnd_556x45_M193_Stanag")
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
		"rhsusf_weap_m1911a1"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] +=
	{
		LIST_3("rhsusf_mag_7x45acp_MHP"),
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
		"rhsusf_hgu56p"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_m1911a1"
	};
	magazines[] =
	{
		LIST_2("rhs_mag_an_m8hc"),
		LIST_7("rhs_mag_20Rnd_556x45_M193_Stanag"),
		LIST_3("rhsusf_mag_7x45acp_MHP"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class eng : rm
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	// backpack[] = {};
	backpackItems[] =
	{
		"ACE_wirecutter",
		LIST_4("rhs_ec200_mag"),
		LIST_2("rhs_ec400_mag")
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
		"rhsusf_weap_m1911a1"
	};
	magazines[] =
	{
		LIST_2("rhs_mag_an_m8hc"),
		LIST_5("rhsusf_mag_7x45acp_MHP"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	backpackItems[] = {};
};

class dm : rm
{
	displayName = "Designated Marksman";
	// vest[] = {};
	// headgear[] = {};
	primaryWeapon[] =
	{
		"CUP_srifle_M21"
	};
	scope[] =
	{
		"cup_optic_artel_m14"
	};
	attachment[] = {};
	bipod[] = {};
	secondaryWeapon[] =
	{
		"rhsusf_weap_m1911a1"
	};
	magazines[] =
	{
		LIST_2("rhs_mag_an_m8hc"),
		LIST_2("rhs_grenade_mkii_mag"),
		LIST_3("rhsusf_mag_7x45acp_MHP"),
		LIST_8("rhsusf_20Rnd_762x51_m80_Mag")
	};
	backpackItems[] =
	{
		LIST_8("rhsusf_20Rnd_762x51_m80_Mag")
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
		LIST_2("rhs_mag_an_m8hc"),
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
		LIST_2("rhs_mag_an_m8hc"),
		LIST_2("rhs_grenade_mkii_mag"),
		LIST_9("rhs_mag_20Rnd_556x45_M193_Stanag"),
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
		LIST_2("rhs_mag_an_m8hc"),
		LIST_2("rhs_grenade_mkii_mag"),
		LIST_9("rhs_mag_20Rnd_556x45_M193_Stanag"),
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
