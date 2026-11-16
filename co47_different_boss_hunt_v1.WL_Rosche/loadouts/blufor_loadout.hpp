class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"usp_g3c_mc",
		"usp_g3c_kp_mc",
		"usp_g3c_kp_mx_mc",
		"usp_g3c_kp_or_mc",
		"usp_g3c_mx_mc",
		"usp_g3c_or_mc",
		"usp_g3c_rs_mc",
		"usp_g3c_rs_kp_mc",
		"usp_g3c_rs_kp_mx_mc",
		"usp_g3c_rs_kp_or_mc",
		"usp_g3c_rs_mx_mc",
		"usp_g3c_rs_or_mc",
		"usp_g3c_rs2_mc",
		"usp_g3c_rs2_kp_mc",
		"usp_g3c_rs2_kp_mx_mc",
		"usp_g3c_rs2_kp_or_mc",
		"usp_g3c_rs2_mx_mc",
		"usp_g3c_rs2_or_mc",
		"usp_pcu_g3c_mc",
		"usp_pcu_g3c_kp_mc",
		"usp_pcu_g3c_kp_mx_mc",
		"usp_pcu_g3c_kp_or_mc",
		"usp_pcu_g3c_mx_mc",
		"usp_pcu_g3c_or_mc",
		"usp_softshell_g3c_mc",
		"usp_softshell_g3c_kp_mc",
		"usp_softshell_g3c_kp_mx_mc",
		"usp_softshell_g3c_kp_or_mc",
		"usp_softshell_g3c_mx_mc",
		"usp_softshell_g3c_or_mc"
	};
	vest[] = 
	{
		"milgp_v_marciras_light_mc"
	};
	backpack[] = 
	{
		"pca_assaultpack_mc"
	};
	headgear[] = 
	{
		"H_HelmetSpecter_cover_UNO_F"
	};
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
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
		"ItemGPS"
	};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	vest[] =
	{
		"milgp_v_marciras_assaulter_belt_mc"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12_545_F"
	};
	scope[] =
	{
		"ptv_acc_eot552"
	};
	bipod[] =
	{
		"ptv_acc_grip4"
	};
	attachment[] =
	{
		"pca_flashlight_sf"
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_Colt1911"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_20("pca_mag_30Rnd_545x39_AK12_Blk_7N22"),
		LIST_2("CUP_7Rnd_45ACP_1911")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] =
	{
		"milgp_v_marciras_hgunner_belt_mc"
	};	
	backpack[] = 
	{
		"pca_carryall_mc"
	};
	primaryWeapon[] = 
	{
		"Aegis_arifle_RPK12_545_F"
	};
	bipod[] =
	{
		""
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_5("aegis_95Rnd_545x39_mixed_7N22_ak12")
	};
	backpackItems[] = 
	{
		LIST_5("aegis_95Rnd_545x39_mixed_7N22_ak12")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"pca_carryall_mc"
	};
	backpackItems[] += 
	{
		LIST_5("aegis_95Rnd_545x39_mixed_7N22_ak12")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	primaryWeapon[] =
	{
		"arifle_AK12U_545_F"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] =
	{
		"rhs_acc_pgo7v3"
	};
	backpackItems[] += 
	{
		LIST_3("rhs_rpg7_PG7VL_mag"),
		LIST_2("rhs_rpg7_OG7V_mag")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	vest[] =
	{
		"milgp_v_marciras_teamleader_belt_mc"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12_GL_545_F"
	};
	bipod[] =
	{
		""
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_20("pca_mag_30Rnd_545x39_AK12_Blk_7T3M"),
		LIST_2("CUP_7Rnd_45ACP_1911")
	};	
	backpackItems[] = 
	{
		LIST_20("rhs_VOG25"),
		LIST_10("rhs_GRD40_White"),
		LIST_5("SmokeShell"),
		LIST_5("rhs_mag_rdg2_black")
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
	backpackItems[] += 
	{
		LIST_4("rhs_GRD40_Green"),
		LIST_4("rhs_GRD40_Red")
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
	vest[] =
	{
		"milgp_v_marciras_medic_belt_mc"
	};
	backpack[] = 
	{
		"pca_tacticalpack_mc"
	};
	primaryWeapon[] =
	{
		"arifle_AK12U_545_F"
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

class mmg : ar 
{
	displayName = "Medium Machine Gunner";
	backpack[] = 
	{
		"pca_carryall_mc"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_pkp"
	};
	scope[] =
	{
		""
	};
	magazines[] = 
	{
		LIST_4("rhs_100Rnd_762x54mmR_7N26"),
		"CUP_7Rnd_45ACP_1911"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_100Rnd_762x54mmR_7N26")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"pca_carryall_mc"
	};
	backpackItems[] = 
	{
		LIST_4("rhs_100Rnd_762x54mmR_7N26")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};