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
		"simc_tcu_mk3_og107_2"
	};
	vest[] =
	{
		"simc_m1955",
		"simc_m1955_loose"
	};
	headgear[] =
	{
		LIST_2("simc_m1_net_band"),
		LIST_3("simc_m1"),
		LIST_4("simc_m1_cover_loose_mitch_dirt")
	};
	backpack[] =
	{
		"simc_lw_ruck_light"
	};
	primaryWeapon[] =
	{
		"sp_fwa_ar15_603_m16a1"
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
		LIST_2("rhs_grenade_mkii_mag"),
		LIST_13("rhs_mag_20Rnd_556x45_M193_Stanag")
	};
	backpackItems[] =
	{
		LIST_4("rhs_mag_20Rnd_556x45_M193_Stanag")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
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
	magazines[] =
	{
		LIST_2("SmokeShell"),
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
		"simc_m1955_mk2_lce_56_gren"
	};
	primaryWeapon[] =
	{
		"CUP_arifle_M16A1GL"
	};
	secondaryWeapon[] =
	{
		"CUP_hgun_Colt1911"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_grenade_mkii_mag"),
		LIST_4("CUP_7Rnd_45ACP_1911"),
		LIST_10("rhs_mag_20Rnd_556x45_M193_Stanag")
	};
	backpackItems[] =
	{
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_4("rhs_mag_m714_White")
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
		"simc_bush_hat_foldr_og107"
	};
	primaryWeapon[] =
	{
		"CUP_arifle_M16A1GL"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_grenade_mkii_mag"),
		LIST_10("rhs_mag_20Rnd_556x45_M193_Stanag")
	};
	backpackItems[] =
	{
		LIST_10("CUP_1Rnd_HE_M203"),
		LIST_2("rhs_mag_20Rnd_556x45_M193_Stanag"),
		LIST_2("rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red"),
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
	backpackItems[] += {};
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
	backpack[] =
	{
		"simc_alice_pack"
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
		"CUP_hgun_Colt1911"
	};
	magazines[] +=
	{
		LIST_3("CUP_7Rnd_45ACP_1911")
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
		"CUP_hgun_Colt1911"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
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
		"CUP_hgun_Colt1911"
	};
	magazines[] +=
	{
		LIST_3("CUP_7Rnd_45ACP_1911")
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
		"CUP_hgun_Colt1911"
	};
	secondaryWeapon[] =
	{
		"sp_fwa_m67"
	};
	magazines[] +=
	{
		LIST_3("CUP_7Rnd_45ACP_1911")
	};
	backpackItems[] =
	{
		LIST_2("sp_fwa_m67_1rnd_heat")
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
		"CUP_hgun_Colt1911"
	};
	magazines[] +=
	{
		LIST_3("CUP_7Rnd_45ACP_1911")
	};
	backpackItems[] =
	{
		LIST_2("sp_fwa_m67_1rnd_heat"),
		"sp_fwa_m67_1rnd_he"
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
		LIST_2("SmokeShell"),
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
		"CUP_hgun_Colt1911"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] +=
	{
		LIST_3("CUP_7Rnd_45ACP_1911"),
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
		"CUP_hgun_Colt1911"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_7("rhs_mag_20Rnd_556x45_M193_Stanag"),
		LIST_3("CUP_7Rnd_45ACP_1911"),
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
		"CUP_hgun_Colt1911"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_5("CUP_7Rnd_45ACP_1911"),
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
		LIST_2("rhs_grenade_mkii_mag"),
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
		LIST_2("SmokeShell"),
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
