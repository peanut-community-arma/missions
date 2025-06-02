class baseMan 
{
	displayName = "Unarmed";
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {"G_B_Diving"};
	hmd[] = {"NVGoggles_OPFOR"};
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
		"U_B_Wetsuit"
	};
	vest[] = 
	{
		"V_RebreatherB"
	};
	headgear[] = 
	{
		"rhsusf_opscore_bk"
	};
	backpack[] = 
	{
		"amf_felin_tecpack_blk"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_mk18",
		"rhs_weap_mk18_KAC"
	};
	scope[] = 
	{
		"rhsusf_acc_su230_mrds"
	};
	silencer[] = 
	{
		"rhsusf_acc_nt4_black"
	};
	bipod[] = 
	{
		"rhsusf_acc_grip2",
		"rhsusf_acc_rvg_blk"
	};
	attachment[] = 
	{
		"cup_acc_anpeq_15_top_flashlight_black_l"
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
		LIST_2("SmokeShell"),
		LIST_2("ACE_IR_Strobe_Item")
	};
	backpackItems[] = 
	{
		"milgp_v_mmac_assaulter_blk",
		LIST_2("rhs_mag_m67"),
		LIST_17("pca_mag_30Rnd_556x45_M995_PMAG")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"rhs_weap_m249_light_S"
	};
	bipod[] = 
	{
		"rhsusf_acc_grip4"
	};
	attachment[] = 
	{
		"cup_acc_anpeq_15_flashlight_black_l"
	};
	backpackItems[] = 
	{
		"milgp_v_marciras_hgunner_blk",
		LIST_9("rhsusf_100Rnd_556x45_M995_soft_pouch")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_5("rhsusf_100Rnd_556x45_M995_soft_pouch")
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
};

class tl : rm 
{
	displayName = "Team Leader";
	backpackItems[] += 
	{
		LIST_2("SmokeShell"),
		LIST_4("ACE_Chemlight_IR")
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
	primaryWeapon[] = 
	{
		"rhs_weap_mk18_m320"
	};
	bipod[] = {};
	backpackItems[] =
	{
		"milgp_v_mmac_teamleader_blk",
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_13("pca_mag_30Rnd_556x45_M995_PMAG"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_8("ACE_40mm_Flare_ir")
	};
};

class co : tl 
{
	displayName = "Platoon Commander";
	backpackItems[] +=
	{
		LIST_2("ACE_Chemlight_HiBlue"),
		LIST_2("ACE_Chemlight_HiGreen"),
		LIST_2("ACE_Chemlight_HiRed")
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpackItems[] =
	{
		"milgp_v_mmac_medic_blk",
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_11("pca_mag_30Rnd_556x45_M995_PMAG"),
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
	backpack[] = 
	{
		"Aegis_B_patrolBackpack_blk_F"
	};
	backpackItems[] =
	{
		"milgp_v_mmac_medic_blk",
		LIST_2("SmokeShell"),
		LIST_9("pca_mag_30Rnd_556x45_M995_PMAG"),
		LIST_20("ACE_elasticBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_packingBandage"),
		LIST_15("ACE_epinephrine"),
		LIST_15("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_10("ACE_tourniquet"),
		LIST_4("ACE_personalAidKit"),
		LIST_2("ACE_adenosine")
	};
};