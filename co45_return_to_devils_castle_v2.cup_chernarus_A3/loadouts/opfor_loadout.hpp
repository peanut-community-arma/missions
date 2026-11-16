//Generic ChDKZ, based on the CUP composition.
//Contains Rifle (AKM), Rifle (AK-74), AR (PKM), LAT (RPG-26), MAT (RPG-7), grenadier.
//By veerserif. Last modified 19 Dec 2022

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
		LIST_2("ACE_packingBandage"),
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
	displayName = "Rifleman (AKM)";
	uniform[] = 
	{
		LIST_4("rhsgref_uniform_specter"),
		"rhsgref_uniform_reed",
		"rhs_uniform_mvd_izlom"
	};
	vest[] = 
	{
		LIST_4("rhs_6sh92_digi"),
		"rhs_6sh92_digi_radio"
	};
	headgear[] = 
	{
		LIST_3("rhs_beanie"),
		LIST_2("H_Bandanna_sgg"),
		LIST_2("rhssaf_bandana_digital"),
		"rhsgref_bcap_specter"
	};
	goggles[] =
	{
		LIST_5(""),
		LIST_3("G_Bandanna_blk"),
		"G_Balaclava_blk"
	};
	primaryWeapon[] = 
	{
		LIST_3("rhs_weap_akmn"),
		"rhs_weap_ak103"
	};
	scope[] = 
	{
		LIST_6("");
		"rhs_acc_okp7_dovetail"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_7("rhs_30Rnd_762x39mm_bakelite")
	};
};

class rm_2 : rm
{
	displayName = "Rifle (AK-74)";
	primaryWeapon[] =
	{
		LIST_5("rhs_weap_ak74m"),
		"rhs_weap_aks74u"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_7("rhs_30Rnd_545x39_7N10_AK")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] =
	{
		"pca_umbts_wdl",
		LIST_2("pca_backpack_invisible")
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG26"
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
	backpackItems[] = 
	{
		LIST_2("rhs_rpg7_PG7VL_mag"),
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

class ruaf : rm 
{
	displayName = "RuAF Rifleman";
	uniform[] = 
	{
		LIST_4("rhsgref_uniform_specter"),
		"rhsgref_uniform_reed"
	};
	vest[] = 
	{
		LIST_4("rhs_6b23_digi_6sh92"),
		"rhs_6b23_6sh116"
	};
	headgear[] = 
	{
		LIST_3("rhs_6b47_ess"),
		LIST_2("rhs_6b47_ess_bala"),
		LIST_2("rhs_6b47_emr"),
		"pca_beanie_mgrn"
	};
	goggles[] =
	{
		""
	};
	primaryWeapon[] = 
	{
		LIST_5("CUP_arifle_AK74M_top_rail"),
		"CUP_arifle_AK12_lush"
	};
	scope[] = 
	{
		LIST_4(""),
		"cup_optic_1p87_ris",
		"rhs_acc_ekp8_18"
	};
	attachment[] =
	{
		"rhs_acc_2dpzenit_ris"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_7("rhs_30Rnd_545x39_7N10_AK")
	};
};