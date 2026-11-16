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
		"simc_bdu_m81"
	};
	vest[] = 
	{
		LIST_2("simc_vest_pasgt_lbv_lc2_m81"),
		LIST_3("simc_vest_pasgt_lbv_m81")
	};
	headgear[] = 
	{
		"H_Simc_pasgt_m81"
	};
	backpack[] = 
	{
		"simc_alice_pack"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A1"
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_13("30Rnd_556x45_Stanag")
	};
	backpackItems[] = 
	{
		LIST_4("30Rnd_556x45_Stanag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"simc_vest_pasgt_lc2_saw_m81"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_M249_E1"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("pca_mag_100Rnd_556x45_M855_mixed_soft_pouch_od")
	};
	backpackItems[] = 
	{
		LIST_4("pca_mag_100Rnd_556x45_M855_mixed_soft_pouch_od")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_4("pca_mag_100Rnd_556x45_M855_mixed_soft_pouch_od")
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
		"simc_vest_pasgt_lc1_gren_m81"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A1GL"
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
	backpackItems[] = 
	{
		LIST_2("30Rnd_556x45_Stanag"),
		LIST_2("rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red"),
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
	vest[] = 
	{
		"simc_vest_pasgt_lbv_holster_alt_m81"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A1GL"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red"),
		LIST_13("CUP_1Rnd_HE_M203"),
		LIST_6("rhs_mag_m714_White"),
		LIST_2("rhs_mag_m716_yellow"),
		LIST_2("rhs_mag_m715_Green"),
		LIST_2("rhs_mag_m713_Red")
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
	backpackItems[] +=
	{
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
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
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class mmg : rm 
{
	displayName = "Medium Machine Gunner";
	vest[] = 
	{
		"simc_vest_pasgt_lc2_saw_m81"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_M60"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("CUP_15Rnd_9x19_M9"),
		LIST_3("rhsusf_100Rnd_762x51")
	};
	backpackItems[] = 
	{
		LIST_6("rhsusf_100Rnd_762x51")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpackItems[] = 
	{
		LIST_8("rhsusf_100Rnd_762x51")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	secondaryWeapon[] = 
	{
		"ace_dragon_super"
	};
	linkedItems[] += {"ace_dragon_sight"};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	magazines[] += 
	{
		LIST_3("CUP_15Rnd_9x19_M9")
	};
	backpackItems[] = 
	{};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	secondaryWeapon[] = 
	{"ace_dragon_super"};
	linkedItems[] += 
	{
		"ace_dragon_sight"
	};
};

class eng : rm 
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	magazines[] += 
	{
		LIST_3("CUP_15Rnd_9x19_M9")
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
	headgear[] = 
	{
		"simc_bonnie_hat_m81"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m14_rail"
	};
	scope[] = 
	{
		"cup_optic_acog_ta01b_black"
	};
	attachment[] = {};
	bipod[] = 
	{
		"rhsusf_acc_harris_swivel"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("CUP_15Rnd_9x19_M9"),
		LIST_9("rhsusf_20Rnd_762x51_m80_Mag")
	};
	backpackItems[] = 
	{
		LIST_12("rhsusf_20Rnd_762x51_m80_Mag")
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
	primaryWeapon[] = 
	{
		"rhs_weap_m3a1"
	};
	vest[] = 
	{
		"simc_vest_pasgt_m81"
	};
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
		LIST_9("rhsgref_30rnd_1143x23_M1911B_SMG")
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
		"simc_vest_pasgt_m81"
	};
	headgear[] = 
	{
		"rhsusf_hgu56p_green"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("30Rnd_556x45_Stanag"),
		LIST_3("CUP_15Rnd_9x19_M9"),
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
		LIST_9("30Rnd_556x45_Stanag"),
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
		LIST_9("30Rnd_556x45_Stanag"),
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