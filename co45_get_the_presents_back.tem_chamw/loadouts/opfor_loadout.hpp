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
		LIST_2("rhs_uniform_mvd_izlom"),
		LIST_1("rhsgref_uniform_reed")
	};
	vest[] = 
	{
		LIST_4("V_TacVest_oli"),
		"bear_tactical_vest_oakleaf"
	};
	headgear[] = 
	{
		LIST_2("rhs_beanie_green"),
		LIST_2("rhs_beanie"),
		LIST_2("pca_beanie_wdl"),
		LIST_4("")
	};
	goggles[] = 
	{
		LIST_2("G_Balaclava_blk"),
		LIST_2("bear_balaclava1_black"),
		LIST_2("pca_balaclava_oli_1"),
		LIST_2("pca_balaclava_oli_2"),
		LIST_4("")
	};
	backpack[] = 
	{
		LIST_7("pca_backpack_invisible"),
		LIST_2("rhs_sidor")
	};
	primaryWeapon[] = 
	{
		"rhs_weap_akm"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("rhs_30Rnd_762x39mm_bakelite")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74M"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_6("rhs_45Rnd_545X39_AK_Green")
	};
};

class sp : rm 
{
	displayName = "Sharpshooter";
	primaryWeapon[] = 
	{
		"rhs_weap_m38"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_8("rhsgref_5Rnd_762x54_m38")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("rhs_100Rnd_762x54mmR_green")
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
		"rhs_rk_sht_30_emr",
		"rhs_tortila_emr"
	};
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
		LIST_3("rhs_rpg7_PG7VL_mag"),
		"rhs_rpg7_OG7V_mag"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"rhs_weap_ak74m_gp25"
	};
	magazines[] += 
	{
		LIST_9("rhs_VOG25"),
		LIST_2("rhs_GRD40_White")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"rhs_rk_sht_30_emr",
		"rhs_tortila_emr"
	};
	backpackItems[] = 
	{
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_elasticBandage"),
		LIST_5("ACE_packingBandage"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_bloodIV"),
		LIST_2("ACE_adenosine")
	};
};

class deer : baseMan
{
	displayName = "deer";
	uniform[] = 
	{
		LIST_2("usp_pcu_g3c_kp_mx_mcalp"),
		LIST_1("usp_pcu_g3c_kp_or_mcalp")
	};
	vest[] = 
	{
		"pca_mbav_rifleman_wht"
	};
	headgear[] = 
	{
	"rhsusf_hgu56p_black"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	goggles[] = 
	{
		"$NONE_TC_G_Helmet_Antlers_1$"
	};
	magazines[] = 
	{
		"rhs_mag_rdg2_white"
	};
};

class red : deer
{
	displayName = "rudolf";
	hmd[] = 
	{
		"$NONE_TC_NVG_Headgear_ReindeerNose_1_Glow$"
	};
};