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
		
		"simc_vest_pasgt_lbv_erdl"
	};
	headgear[] = 
	{
		"CUP_H_PASGTv2_OD"
	};
	backpack[] = 
	{
		"simc_lw_ruck_light"
	};
	primaryWeapon[] = 
	{
		"ptv_weap_m90_rail_blk"
	};
	
	attachment[] = 
	{
		"pca_flashlight_led"
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

		"ACE_M26_Clacker",
	"ACE_wirecutter",
	"DemoCharge_Remote_Mag",
	LIST_2("Chemlight_blue"),
	LIST_2("ACE_Chemlight_HiBlue")
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
		"simc_vest_pasgt_lbv_erdl"
	};
	backpack[] = 
	{
		"simc_alice_pack"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_minimi_para_railed"
	};
	attachment[] =
	{
		"pca_flashlight_led"
		
	};
	secondaryWeapon[] =
	{
		"rhsusf_weap_m1911a1"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("rhsusf_200Rnd_556x45_mixed_soft_pouch"),
		LIST_4("rhsusf_mag_7x45acp_MHP")
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
		"simc_alice_pack"
	};
	backpackItems[] += 
	{
		LIST_4("rhsusf_200Rnd_556x45_mixed_soft_pouch")
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
		"simc_vest_pasgt_lbv_erdl"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A1GL"
	};
	secondaryWeapon[] = 
	{
		"rhsusf_weap_m1911a1"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_4("rhsusf_mag_7x45acp_MHP"),
		LIST_10("rhs_mag_30Rnd_556x45_M855A1_Stanag")
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
	sidearmWeapon[] =
	{
		"ptv_L2BPG"
	};
	vest[] = 
	{
		"simc_vest_pasgt_lbv_erdl"
	};
	
	backpackItems[] = 
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
		LIST_2("SmokeShell"),
		LIST_6("CUP_1Rnd_HE_M203"),
		LIST_4("CUP_1Rnd_StarFlare_White_M203"),
		LIST_3("CUP_1Rnd_StarFlare_Green_M203"),
		LIST_3("CUP_1Rnd_StarFlare_Red_M203"),
		LIST_3("CUP_FlareYellow_M203")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	sidearmWeapon[] =
	{
		"ptv_L2BPG"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_10("rhs_mag_30Rnd_556x45_M855A1_Stanag")
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
		//LIST_4("ACE_personalAidKit"),
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
		LIST_2("CUP_HandGrenade_M67"),
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
		"rhsusf_weap_m1911a1"
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
		"rhsusf_weap_m1911a1"
	};
	magazines[] += 
	{
		LIST_3("rhsusf_mag_7x45acp_MHP")
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
		"rhsusf_weap_m1911a1"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("rhsusf_mag_7x45acp_MHP"),
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
		LIST_2("CUP_HandGrenade_M67"),
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
		"rhsusf_weap_m1911a1"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("rhsusf_20Rnd_762x51_m80_Mag"),
		LIST_3("rhsusf_mag_7x45acp_MHP"),
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
		LIST_2("CUP_HandGrenade_M67"),
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
		LIST_2("CUP_HandGrenade_M67"),
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