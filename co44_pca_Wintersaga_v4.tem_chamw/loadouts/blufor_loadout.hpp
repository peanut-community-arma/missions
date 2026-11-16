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
		"$NONE_usm_bdum65_ubn$"
	};
	vest[] = 
	{
		"usm_vest_pasgt_lbe_rm",
		"usm_vest_pasgt_lbe_rm",
		"usm_vest_pasgt_lbe_rm",
		"usm_vest_pasgt_lbe_rm"
	};
	headgear[] = 
	{
		"CUP_H_PASGTv2_Urban"
	};
	backpack[] = 
	{
		"CUP_B_AlicePack_Khaki"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2"
	};
	items[] =
	{
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
		"usm_vest_pasgt_lbe_mg"
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
		LIST_4("rhsusf_100Rnd_762x51")
	};
	backpackItems[] = 
	{
		LIST_8("rhsusf_100Rnd_762x51")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"CUP_B_AlicePack_Khaki"
	};
	backpackItems[] += 
	{
		LIST_8("rhsusf_100Rnd_762x51")
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
		"usm_vest_pasgt_lbe_gr"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_Colt727_M203"
	};
	backpackItems[] = 
	{
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_10("ACE_40mm_Flare_white"),
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
		LIST_2("30Rnd_556x45_Stanag"),
		LIST_2("rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red"),
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_10("ACE_40mm_Flare_white"),
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
	primaryWeapon[] = 
	{
		"CUP_arifle_Colt727_M203"
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red"),
		LIST_13("CUP_1Rnd_HE_M203"),
		LIST_10("ACE_40mm_Flare_white"),
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
	backpack[] = 
	{
		"bear_eagleaiii_m81"
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
		"usm_vest_pasgt_lbe_mg"
	};
	backpack[] = 
	{
		"bear_eagleaiii_m81"
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
	backpack[] = 
	{
		"bear_eagleaiii_m81"
	};
	backpackItems[] = 
	{
		LIST_8("rhsusf_100Rnd_762x51")
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
		"CUP_B_AlicePack_Khaki"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_Mk153Mod0"
	};
	secondaryAttachments[] = 
	{
		"cup_optic_smaw_scope"
	};
	magazines[] += 
	{
		LIST_10("CUP_SMAW_Spotting")
	};
	backpackItems[] = 
	{
		LIST_2("rhs_mag_smaw_HEDP"),
		"rhs_mag_smaw_HEAA"
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"CUP_B_AlicePack_Khaki"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_mag_smaw_HEDP"),
		"rhs_mag_smaw_HEAA"
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
		"CUP_B_AlicePack_Khaki"
	};
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
		"CUP_hgun_M9"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("CUP_15Rnd_9x19_M9"),
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
	primaryWeapon[] = 
	{
		"CUP_smg_M3A1_blk"
	};
	vest[] = 
	{
		"rhsusf_spcs_ucp_crewman"
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_30Rnd_45ACP_M3A1_BLK_M")
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
		"CUP_hgun_M9"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("CUP_15Rnd_9x19_M9"),
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
		"rhsusf_spcs_ucp_crewman"
	};
	headgear[] = 
	{
		"rhsusf_hgu56p"
	};
		primaryWeapon[] = 
	{
		"CUP_smg_M3A1_blk"
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
		LIST_7("CUP_30Rnd_45ACP_M3A1_BLK_M"),
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
		"Binocular"
	};
};