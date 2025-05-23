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
		LIST_3("bear_uniform_emr_winter"),
		"pca_uniform_klmk_oversuit_berezka_winter"
	};
	vest[] = 
	{
		LIST_3("rhs_6b23_digi_6sh92"),
		"rhs_6b23_6sh116"
	};
	headgear[] = 
	{
		LIST_3("CUP_H_RUS_6B47_v2_Winter"),
		LIST_2("CUP_H_RUS_6B47_v2_GogglesClosed_Winter"),
		"CUP_H_RUS_6B47_v2_GogglesDown_Winter"
	};
	goggles[] =
	{
		LIST_3(""),
		LIST_2("CUP_G_RUS_Balaclava_Ratnik_winter"),
		LIST_2("CUP_G_RUS_Balaclava_Ratnik_winter_v2"),
		"rhs_scarf",
		"simc_nomex_blk"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_ak74m"
	};
	attachment[] =
	{
		"rhs_acc_2dpzenit"
	};
	scope[] =
	{
		LIST_5(""),
		"rhs_acc_pkas"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_13("rhs_30Rnd_545x39_7N10_AK")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"rhs_weap_pkm"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg18"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	vest[] =
	{
		"rhs_6b23_digi_6sh92"
	};
	backpack[] = 
	{
		"rhs_rpg_empty"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_rpg7_PG7VL_mag"),
		"rhs_rpg7_PG7VR_mag",
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
	vest[] =
	{
		LIST_3("rhs_6b23_digi_6sh92_vog"),
		"rhs_6b23_6sh116_vog"
	};
	magazines[] += 
	{
		LIST_2("rhs_VOG25"),
		LIST_2("rhs_GRD40_White")
	};
};

class crew : rm 
{
	displayName = "Crewman";
	headgear[] = 
	{
		"rhs_tsh4",
		"rhs_tsh4_ess"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_aks74u"
	};
	scope[] = {};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_11("rhs_30Rnd_545x39_7N10_AK")
	};
};

class co : rm 
{
	displayName = "Officer";
	headgear[] = 
	{
		"CUP_H_RUS_Beret_Spetsnaz"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_aks74u"
	};
	scope[] = {};
	vest[] =
	{
		"rhs_6b23_digi_6sh92_headset_spetsnaz"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_13("rhs_30Rnd_545x39_7N10_AK")
	};
};

class sniper : rm 
{
	displayName = "Sniper";
	primaryWeapon[] = 
	{
		"rhs_weap_svdp_wd"
	};
	scope[] = {"rhs_acc_pso1m21"};
	sidearmWeapon[] =
	{
		"rhs_weap_pp2000_folded"
	};
	uniform[] =
	{
		"CUP_U_O_RUS_Ghillie"
	};
	headgear[] = {};
	vest[] =
	{
		"pca_vest_invisible_kevlar"
	};
	backpack[] =
	{
		"pca_backpack_invisible"
	};
	linkedItems[] =
	{
		"rhsusf_bino_lerca_1200_black"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_11("rhs_mag_9x19mm_7n21_20"),
		LIST_13("rhs_10Rnd_762x54mmR_7N14")
	};
};

class spt : sniper 
{
	displayName = "Spotter";
	primaryWeapon[] = 
	{
		"rhs_weap_ak74m"
	};
	scope[] = {"cup_optic_pso_1_ak"};
	sidearmWeapon[] = {};
	linkedItems[] =
	{
		"rhs_tr8_periscope"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_9("rhs_30Rnd_545x39_7N10_AK")
	};
};