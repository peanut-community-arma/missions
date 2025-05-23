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
	hmd[] = 
	{
		"CUP_NVG_GPNVG_black"
	};
	uniform[] = 
	{
		"CUP_U_CRYE_G3C_M81_US",
		"CUP_U_CRYE_G3C_M81_US_V2",
		"CUP_U_CRYE_G3C_M81_US_V3",
		"CUP_U_CRYE_G3C_M81",
		"CUP_U_CRYE_G3C_M81_RGR_US",
		"CUP_U_CRYE_G3C_M81_RGR",
		"CUP_U_CRYE_G3C_M81_Tan_US",
		"CUP_U_CRYE_G3C_M81_Tan",
	};
	vest[] = 
	{
		"rhsusf_plateframe_rifleman"
	};
	headgear[] = 
	{
		"rhsusf_mich_bare_semi",
		"rhsusf_mich_bare_alt_semi"
	};
	backpack[] = 
	{
		"rhsusf_falconii_coy"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m4a1_blockII",
		"rhs_weap_m4a1_carryhandle",
		"rhs_weap_mk18",
		"rhs_weap_m16a4_imod",
		"rhs_weap_m27iar"
	};
	scope[] = 
	{
		"rhsusf_acc_compm4"
	};
	attachment[] = 
	{
		"cup_acc_anpeq_15_black"
	};
	silencer[] = 
	{
		"ptv_acc_rotexv"
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
		LIST_2("ACE_splint"),
		LIST_4("ACE_IR_Strobe_Item")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_13("pca_mag_30Rnd_556x45_M855A1_EMAG")
	};
	backpackItems[] = 
	{
		LIST_4("pca_mag_30Rnd_556x45_M855A1_EMAG")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"rhsusf_plateframe_machinegunner"
	};
	backpack[] = 
	{
		"rhsusf_assault_eagleaiii_coy"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m249_light_S"
	};
	bipod[] = 
	{
		"rhsusf_acc_saw_lw_bipod"
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
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"rhsusf_assault_eagleaiii_coy"
	};
	backpackItems[] += 
	{
		LIST_4("rhsusf_200Rnd_556x45_mixed_soft_pouch")
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
		"pca_weap_m136cs"
	};
	backpackItems[] = 
	{
		"pca_weap_m136cs"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"rhsusf_plateframe_grenadier"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_hk416d145_m320",
		"rhs_weap_m16a4_carryhandle_M203",
		"rhs_weap_m16a4_imod_M203",
		"rhs_weap_m4a1_carryhandle_m203S"
	};
	backpackItems[] = 
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : gren
{
	displayName = "Team Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] = 
	{
		LIST_2("pca_mag_30Rnd_556x45_M855A1_EMAG"),
		LIST_6("ACE_40mm_Flare_ir"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
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
		"rhsusf_plateframe_teamleader"
	};
	backpackItems[] =
	{
		LIST_6("ACE_40mm_Flare_ir"),
		LIST_13("rhs_mag_M441_HE"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	primaryWeapon[] = 
	{
		"rhs_weap_mk18"
	};
	backpackItems[] =
	{
		LIST_2("ACE_30Rnd_556x45_Stanag_Tracer_Dim"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	vest[] = 
	{
		"rhsusf_plateframe_medic"
	};
	backpack[] = 
	{
		"rhsusf_assault_eagleaiii_coy"
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
		"rhsusf_plateframe_machinegunner"
	};
	backpack[] = 
	{
		"rhsusf_assault_eagleaiii_coy"
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
		"hgun_ACPC2_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("rhsusf_mag_7x45acp_MHP"),
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
		"rhsusf_assault_eagleaiii_coy"
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
		"rhsusf_assault_eagleaiii_coy"
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
		"hgun_ACPC2_F"
	};
	magazines[] += 
	{
		LIST_3("rhsusf_mag_7x45acp_MHP")
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
		"rhsusf_assault_eagleaiii_coy"
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

class eng : rm 
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	backpack[] = 
	{
		"rhsusf_assault_eagleaiii_coy"
	};
	sidearmWeapon[] = 
	{
		"hgun_ACPC2_F"
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
		LIST_4("rhsusf_m112x4_mag")
	};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	vest[] = 
	{
		"rhsusf_spcs_ucp_sniper"
	};
	headgear[] = 
	{
		"rhsusf_ach_helmet_camo_ucp"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m14ebrri"
	};
	scope[] = 
	{
		"rhsusf_acc_ACOG",
		"rhsusf_acc_ACOG2",
		"rhsusf_acc_ACOG3",
		"rhsusf_acc_ACOG_RMR"
	};
	attachment[] = {};
	bipod[] = 
	{
		"rhsusf_acc_harris_bipod"
	};
	sidearmWeapon[] = 
	{
		"hgun_ACPC2_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("rhsusf_mag_7x45acp_MHP"),
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

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	vest[] = 
	{
		"rhsusf_plateframe_light"
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
		LIST_9("pca_mag_30Rnd_556x45_M855A1_EMAG")
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
		"hgun_ACPC2_F"
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
	traits[] = {"engineer"};
	hmd[] = 
	{
		"ACE_NVG_Wide_Black"
	};
	vest[] = 
	{
		"rhsusf_plateframe_light"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	headgear[] = 
	{
		"rhsusf_hgu56p"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_hk416d10_LMT"
	};
	sidearmWeapon[] = 
	{
		"hgun_ACPC2_F"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("pca_mag_30Rnd_556x45_M855A1_EMAG"),
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
		LIST_2("rhs_mag_m67"),
		LIST_9("pca_mag_30Rnd_556x45_M855A1_EMAG"),
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
		LIST_9("pca_mag_30Rnd_556x45_M855A1_EMAG"),
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