class baseMan 
{
	displayName = "Unarmed";
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {};
	hmd[] = {};
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
		"CUP_U_B_USArmy_ACU_Gloves_UCP"
	};
	vest[] =
	{
		"rhsusf_iotv_ucp_rifleman"
	};
	headgear[] =
	{
		LIST_3("rhsusf_ach_helmet_headset_ucp"),
		LIST_2("rhsusf_ach_helmet_headset_ess_ucp")
	};
	backpack[] =
	{
		"rhsusf_assault_eagleaiii_ucp"
	};
	primaryWeapon[] =
	{
		"rhs_weap_mk17_STD"
	};
	scope[] = 
	{
		"cup_optic_elcan_specterdr_black"
	};
	bipod[] = 
	{
		"rhsusf_acc_grip2",
		"rhsusf_acc_grip2_tan",
		"rhsusf_acc_kac_grip",
		"rhsusf_acc_rvg_blk",
		"rhsusf_acc_rvg_de"
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
		LIST_11("rhs_mag_20Rnd_SCAR_762x51_m80a1_epr_bk")
	};
	backpackItems[] =
	{
		LIST_4("rhs_mag_20Rnd_SCAR_762x51_m80a1_epr_bk")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"rhsusf_iotv_ucp_saw"
	};
	primaryWeapon[] =
	{
		"CUP_lmg_Mk48"
	};
	scope[] = 
	{
		"cup_optic_elcan_specterdr_black"
	};
	bipod[] = {};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
	backpackItems[] =
	{
		LIST_6("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
};

class aar : rm
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] +=
	{
		LIST_6("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
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
		"CUP_launch_M136"
	};
	backpackItems[] += 
	{
		"CUP_launch_M136"
	};
};

class tl : rm
{
	displayName = "Team Leader";
	vest[] = 
	{
		"rhsusf_iotv_ucp_teamleader"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_M320"
	};
	backpackItems[] +=
	{
		LIST_2("SmokeShell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_17("rhs_mag_M441_HE"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell")
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
		"rhsusf_iotv_ucp_squadleader"
	};
	primaryWeapon[] =
	{
		"rhs_weap_mk17_CQC"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
};

class plt : sl
{
	displayName = "Platoon Commander";
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	vest[] = 
	{
		"rhsusf_iotv_ucp_medic"
	};
	primaryWeapon[] =
	{
		"rhs_weap_mk17_CQC"
	};
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

class cls : rm
{
	displayName = "Combat Life Saver";
	traits[] = {"medic"};
	vest[] = 
	{
		"rhsusf_iotv_ucp_medic"
	};
	primaryWeapon[] =
	{
		"rhs_weap_mk17_CQC"
	};
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

class mg : rm
{
	displayName = "Machine Gunner";
	vest[] = 
	{
		"rhsusf_iotv_ucp_saw"
	};
	primaryWeapon[] =
	{
		"CUP_lmg_M240_B"
	};
	scope[] = 
	{
		"cup_optic_elcan_specterdr_black"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
	backpackItems[] =
	{
		LIST_6("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
};

class amg : rm
{
	displayName = "Assistant Machine Gunner";
	primaryWeapon[] =
	{
		"rhs_weap_mk17_CQC"
	};
	backpackItems[] +=
	{
		LIST_6("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class mat : rm
{
	displayName = "Anti-Tank Specialist";
	primaryWeapon[] =
	{
		"rhs_weap_mk17_CQC"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_MAAWS"
	};
	secondaryAttachments[] = 
	{
		"CUP_optic_MAAWS_Scope"
	};
	backpackItems[] =
	{
		LIST_3("CUP_MAAWS_HEAT_M")
	};
};

class amat : rm
{
	displayName = "Assistant Anti-Tank Specialist";
	primaryWeapon[] =
	{
		"rhs_weap_mk17_CQC"
	};
	backpackItems[] =
	{
		LIST_2("CUP_MAAWS_HEAT_M"),
		"CUP_MAAWS_HEDP_M",
		"MRAWS_HE_F"
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class prop: baseMan
{
	displayName = "Prop";
	uniform[] =
	{
		"rhs_uniform_acu_ucp"
	};
	vest[] =
	{
		"rhsusf_iotv_ucp_medic",
		"rhsusf_iotv_ucp_rifleman",
		"rhsusf_iotv_ucp_squadleader",
		"rhsusf_iotv_ucp_teamleader"
	};
	headgear[] =
	{
		LIST_3("rhsusf_ach_helmet_ucp"),
		LIST_2("rhsusf_ach_helmet_ess_ucp")
	};
	backpack[] =
	{
		LIST_4(""),
		"rhsusf_assault_eagleaiii_ucp"
	};
	primaryWeapon[] =
	{
		"rhs_weap_m4a1"
	};
	scope[] = 
	{
		"CUP_optic_CompM4"
	};
	bipod[] = 
	{
		LIST_4(""),
		"rhsusf_acc_kac_grip"
	};
	magazines[] =
	{
		LIST_11("rhs_mag_30Rnd_556x45_M855A1_Stanag")
	};
};

class hvi: baseMan
{
	displayName = "HVI";
	uniform[] =
	{
		"U_C_FormalSuit_01_blue_F"
	};
	vest[] =
	{
		"pca_vest_invisible_plate"
	};
};