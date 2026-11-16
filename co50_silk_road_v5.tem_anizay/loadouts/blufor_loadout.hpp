// salmon MSV

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
		"bear_uniform_indep2_tigerstripe_desert"
	};
	vest[] = 
	{
		"pca_6b5_tan",
"pca_6b5_rifleman_tan"
	};
	headgear[] = 
	{
		"CUP_H_Ger_M92_Tan",
"CUP_H_Ger_M92_Tan_GG"
	};
	backpack[] = 
	{
		"B_FieldPack_cbr"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74_Early",
		"$NONE_hlc_rifle_ak74_worn2$",
		"$NONE_hlc_rifle_ak74_worn$"
	};
	scope[] = 
	{
		LIST_4(""),
		"rhs_acc_1p63"
	};
	bipod[] = 
	{
	};
	attachment[] = 
	{
	};
	silencer[] = 
	{
		"rhs_acc_dtk"
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
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_15("rhs_30Rnd_545x39_7N6_AK")
		//LIST_15("rhs_30Rnd_545x39_7N10_AK")
	};
	backpackItems[] = 
	{
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_45"
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_Browning_HP"
	};
	bipod[] = 
	{
	};
	attachment[] = 
	{
	};
	silencer[] = 
	{
		"rhs_acc_dtkrpk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_15("rhs_45Rnd_545X39_7N6M_AK"),
		LIST_3("CUP_13Rnd_9x19_Browning_HP")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_10("rhs_45Rnd_545X39_7N6M_AK")
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
		"CUP_launch_RPG26"
	};
	backpackItems[] = 
	{
		"CUP_launch_RPG26"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74_GL_Early"
	};
	vest[] =
	{
		"pca_6b5_officer_tan"
	};
	backpackItems[] = 
	{
		LIST_21("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class tl : gren 
{
	displayName = "Team Leader";
	items[] += 
	{
		//"ACRE_PRC148" -- this was here but I think it's wrong?
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_Browning_HP"
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
	magazines[] +=
	{	
		LIST_2("rhs_30Rnd_545x39_AK_green"),
		LIST_3("CUP_13Rnd_9x19_Browning_HP")
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	magazines[] +=
	{
		LIST_2("rhs_GRD40_Green"),
		LIST_2("RHS_GRD40_Red"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";

	magazines[] +=
	{
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
		"pca_6b5_medic_tan"
	};
	backpack[] =
	{
		"B_Carryall_cbr"
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
	
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	attachment[] = 
	{
		"rhs_acc_1p78"
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_Browning_HP"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_3("CUP_13Rnd_9x19_Browning_HP"),
		LIST_6("150Rnd_762x54_Box_Tracer")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpackItems[] = 
	{
		LIST_5("150Rnd_762x54_Box_Tracer")
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
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] = 
	{
		"rhs_acc_pgo7v3"
	};
	
	
	backpackItems[] = 
	{
		LIST_2("rhs_rpg7_PG7VL_mag")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpackItems[] = 
	{
		LIST_2("rhs_rpg7_PG7VL_mag"),
		"rhs_rpg7_OG7V_mag",
		"rhs_rpg7_TBG7V_mag"
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
		LIST_4("DemoCharge_Remote_Mag"),
		LIST_2("SatchelCharge_Remote_Mag")
	};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	primaryWeapon[] = 
	{
		"CUP_srifle_SVD"
	};
	scope[] = 
	{
		"rhs_acc_pso1m2"
	};
	vest[] =
	{
		"pca_6b5_sniper_tan"
	};
	sidearmWeapon[] = 
	{
			"CUP_hgun_Browning_HP"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_3("CUP_13Rnd_9x19_Browning_HP"),
		LIST_40("rhs_10Rnd_762x54mmR_7N14")
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
		"CUP_arifle_AKS74U"
	};
	
	headgear[] = 
	{
		"rhs_tsh4",
"rhs_tsh4_ess"
	};
	silencer[] =
	{
		"rhs_acc_pgs64_74u"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_15("rhs_30Rnd_545x39_7N6_AK")
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
		"rhs_weap_pya"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("rhs_mag_9x19_17"),
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
		LIST_2("CUP_HandGrenade_M67"),
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
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