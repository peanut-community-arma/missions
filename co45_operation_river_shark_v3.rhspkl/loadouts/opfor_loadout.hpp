class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
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
		LIST_2("ACE_fieldDressing"),
		"ACE_packingBandage",
		"ACE_quikclot",
		"ACE_tourniquet",
		"ACE_morphine",
		"ACE_splint"
	};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "_this call pca_fnc_unlimitedAmmo";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"CUP_U_B_BDUv2_roll_dirty_ERDL_lowland",
		"CUP_U_B_BDUv2_roll_gloves_dirty_ERDL_lowland",
		"CUP_U_B_BDUv2_dirty_ERDL_lowland",
		LIST_3("simc_tcu_mk3_tee_erdl"),
		LIST_3("simc_bdu_roll_m81_2")
	};
	vest[] = 
	{
		LIST_4("V_TacVest_grn"),
		"V_ChestrigF_oli"
	};
	headgear[] = 
	{
		LIST_4(""),
		"bear_ssh68_olive",
		LIST_3("H_Bandanna_khk"),
		LIST_2("CUP_H_PASGTv2_NVG_ERDL_lowland")
	};
	backpack[] = {};
	primaryWeapon[] = 
	{
		LIST_2("rhs_weap_akm"),
		"rhs_weap_akms",
		"CUP_arifle_TYPE_56_2_Early"
	};
	attachment[] =
	{
		"rhs_acc_2dpZenit"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_11("rhs_30Rnd_762x39mm_bakelite")
	};
};

class ar : rm 
{
	displayName = "Rifle (M16)";
	backpack[] =
	{
		"B_AssaultPack_khk"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_ar15_603_m16a1_captured"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_13("rhs_mag_30Rnd_556x45_M855_Stanag")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	backpack[] =
	{
		"B_FieldPack_khk"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_M60E4_norail_jungle"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_4("CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg26"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"rhs_rpg_2"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_rpg7_PG7V_mag"),
		"rhs_rpg7_OG7V_mag"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"rhs_weap_akm_gp25"
	};
	magazines[] += 
	{
		LIST_2("rhs_VOG25"),
		LIST_2("rhs_GRD40_White")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_FieldPack_khk"
	};
	backpackItems[] = 
	{
		LIST_5("ACE_fieldDressing"),
		LIST_5("ACE_elasticBandage"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_salineIV")
	};
};

class vip : rm 
{
	displayName = "HVT";
	uniform[] = 
	{
		"U_O_ParadeUniform_01_CSAT_decorated_F"
	};
	vest[] = 
	{
		"pca_vest_invisible_kevlar"
	};
	headgear[] = 
	{
		"CUP_H_SLA_BeretRed",
		"H_Beret_blk"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS_Gold"
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_TaurusTracker455_gold"
	};
	magazines[] +=
	{
		LIST_2("CUP_6Rnd_45ACP_M")
	};
};