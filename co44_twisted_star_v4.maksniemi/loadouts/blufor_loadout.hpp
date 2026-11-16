class baseMan 
{
	displayName = "Unarmed";
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {};
	hmd[] = {};
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
		"ItemCompass"
	};
	backpackItems[] = {};
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
		LIST_2("simc_m1956_lce_frag"),
		LIST_3("simc_m69_lce_56_frag")
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
		"rhssaf_zrak_rd7j"
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
		LIST_2("simc_m69_lce_56_officer"),
		LIST_3("simc_m69_lce_56_officer_band")
	};
	headgear[] = 
	{
		"simc_bush_hat_foldr_og107"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_mag_20Rnd_556x45_M193_Stanag"),
		LIST_2("rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red"),
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
	backpackItems[] +=
	{
		LIST_10("CUP_1Rnd_HE_M203"),
		LIST_4("rhs_mag_m714_White"),
		LIST_2("rhs_mag_m716_yellow"),
		LIST_2("rhs_mag_m715_Green"),
		LIST_2("rhs_mag_m713_Red")
	};
	items[] += 
	{
		"ACRE_PRC148"
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
		LIST_4("ACE_personalAidKit"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
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
		LIST_4("ACE_personalAidKit"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class mmg : rm 
{
	displayName = "Medium Machine Gunner";
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
	backpackItems[] += 
	{
		LIST_4("rhsusf_100Rnd_762x51")
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
		"simc_alice_pack"
	};
	secondaryWeapon[] = 
	{
		"sp_fwa_m67"
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

class eng : rm 
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	backpack[] = 
	{
		"simc_tropical_pack"
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
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_4("DemoCharge_Remote_Mag"),
		LIST_2("SatchelCharge_Remote_Mag")
	};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	primaryWeapon[] = 
	{
		"CUP_srifle_M21"
	};
	scope[] = 
	{
		"cup_optic_artel_m14"
	};
	attachment[] = {};
	bipod[] = 
	{
		"cup_bipod_harris_1a2_l_blk"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Colt1911"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_grenade_mkii_mag"),
		LIST_3("CUP_7Rnd_45ACP_1911"),
		LIST_9("CUP_20Rnd_762x51_DMR")
	};
	backpackItems[] = 
	{
		LIST_12("CUP_20Rnd_762x51_DMR")
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
	headgear[] = 
	{
		"H_Simc_CVC",
		"simc_cvc_swdg",
		"simc_cvc_swdg_cover",
		"simc_cvc_swdg_low"
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
		"rhssaf_zrak_rd7j"
	};
};

class hp : rm 
{
	displayName = "Helicopter Pilot";
	vest[] = 
	{
		"simc_m69"
	};
	headgear[] = 
	{
		"rhsusf_hgu56p"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Colt1911"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("rhsusf_20Rnd_762x51_m80_Mag"),
		LIST_3("CUP_7Rnd_45ACP_1911"),
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
		LIST_2("rhs_grenade_mkii_mag"),
		LIST_9("rhsusf_20Rnd_762x51_m80_Mag"),
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
		LIST_9("rhsusf_20Rnd_762x51_m80_Mag"),
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