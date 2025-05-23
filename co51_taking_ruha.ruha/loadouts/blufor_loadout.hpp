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
		"CUP_U_B_GER_Flecktarn_5",
		"CUP_U_B_GER_Flecktarn_6",
		"CUP_U_B_GER_Flecktarn_7",
		"CUP_U_B_GER_Flecktarn_8"
	};
	vest[] = 
	{
		"bw_vest_fleck_rifleman"
	};
	headgear[] = 
	{
		"bear_opscore_flecktarn_cover_pelt",
		"bear_opscore_flecktarn_cover_pelt_cam",
		"bear_opscore_flecktarn_cover_pelt_nsw",
		"bear_opscore_flecktarn_cover_pelt_nsw_cam"
	};
	backpack[] = 
	{
		"bw_kitbag_fleck"
	};
	primaryWeapon[] = 
	{
		"hlc_rifle_g36a3"
	};
	scope[] = 
	{
		LIST_3("rhsusf_acc_eotech_xps3"),
		LIST_2("rhsusf_acc_eotech_552")
	};
	bipod[] = 
	{
		"rhsusf_acc_kac_grip"
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
		LIST_2("rhs_mag_m67"),
		LIST_13("hlc_30Rnd_556x45_EPR_G36")
	};
	backpackItems[] = 
	{
		LIST_4("hlc_30Rnd_556x45_EPR_G36")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"bw_vest_fleck_machinegunner"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Mk48_nohg"
	};
	secondaryWeapon[] = 
	{
		"hgun_P07_blk_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("16Rnd_9x21_Mag"),
		LIST_3("rhsusf_100Rnd_762x51_m80a1epr")
	};
	backpackItems[] = 
	{
		LIST_4("rhsusf_100Rnd_762x51_m80a1epr")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_4("rhsusf_100Rnd_762x51_m80a1epr")
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
		"CUP_launch_HCPF3_Loaded"
	};
	backpackItems[] = 
	{
		"CUP_launch_HCPF3_Loaded"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"bw_vest_fleck_grenadier"
	};
	primaryWeapon[] = 
	{
		"hlc_rifle_g36a3_ag36"
	};
	backpackItems[] = 
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"hlc_rifle_g36a3_ag36"
	};
	vest[] = 
	{
		"bw_vest_fleck_teamleader"
	};
	secondaryWeapon[] = 
	{
		"hgun_P07_blk_F"
	};
	magazines[] += 
	{
		LIST_3("16Rnd_9x21_Mag")
	};
	backpackItems[] = 
	{
		LIST_3("hlc_30Rnd_556x45_EPR_T_G36"),
		LIST_20("rhs_mag_M441_HE"),
		LIST_8("rhs_mag_M433_HEDP"),
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
	backpackItems[] =
	{
		LIST_2("hlc_30Rnd_556x45_EPR_T_G36"),
		LIST_13("rhs_mag_M441_HE"),
		LIST_8("rhs_mag_M433_HEDP"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
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
	secondaryWeapon[] = 
	{
		"hgun_P07_blk_F"
	};
	magazines[] += 
	{
		LIST_3("16Rnd_9x21_Mag")
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

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	headgear[] = 
	{
		"rhsusf_cvc_green_ess",
		"rhsusf_cvc_green_alt_helmet"
	};
	primaryWeapon[] = 
	{
		"hlc_rifle_g36c"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_7("hlc_30Rnd_556x45_EPR_G36")
	};
	backpackItems[] = 
	{
		"ToolKit"
	};
};

class crew_co : crew 
{
	displayName = "Crewman Commander";
	items[] +=
	{
		"ACRE_PRC148"
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};