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
		"rhs_uniform_vkpo_gloves"
	};
	vest[] = 
	{
		"rhs_6b23_6sh116"
	};
	headgear[] = 
	{
		"pca_6b47_emr_1",
		"pca_6b47_emr_2",
		"pca_6b47_emr_3",
		"pca_6b47_emr_ess"
	};
	backpack[] = 
	{
		"rhs_rk_sht_30_emr"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12_545_F"
	};
	attachment[] = 
	{
		"pca_flashlight_sf"
	};
	scope[] = 
	{
		"optic_MRCO"
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
		LIST_2("ACE_IR_Strobe_Item")
	};
	magazines[] = 
	{
		"rhs_mag_rdg2_white",
		LIST_2("rhs_mag_rgo"),
		LIST_13("pca_mag_30Rnd_545x39_AK12_Blk_7N22")
	};
	backpackItems[] = 
	{
		LIST_4("pca_mag_30Rnd_545x39_AK12_Blk_7N22")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg_top_rail_B50_vfg"
	};
	magazines[] = 
	{
		"rhs_mag_rdg2_white",
		LIST_2("rhs_mag_rgo"),
		LIST_5("rhs_100Rnd_762x54mmR_7N26")
	};
	backpackItems[] = 
	{
		LIST_6("rhs_100Rnd_762x54mmR_7N26")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_6("rhs_100Rnd_762x54mmR_7N26")
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
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] = 
	{
		"rhs_acc_pgo7v3"
	};
	backpackItems[] = 
	{
		LIST_6("rhs_rpg7_PG7VL_mag")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"rhs_6b23_6sh116_vog"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12_GL_545_F"
	};
	backpackItems[] += 
	{
		LIST_21("rhs_VOG25"),
		LIST_4("rhs_GRD40_White")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	vest[] = 
	{
		"rhs_6b23_6sh116_vog"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12_GL_545_F"
	};
	backpackItems[] =
	{
		LIST_21("rhs_VOG25"),
		LIST_6("CUP_IlumFlareRed_GP25_M"),
		LIST_6("rhs_GRD40_White"),
		LIST_2("rhs_GRD40_Green"),
		LIST_2("rhs_GRD40_Red")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	vest[] = 
	{
		"rhs_6b23_6sh116_vog"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12_GL_545_F"
	};
	backpackItems[] =
	{
		LIST_21("rhs_VOG25"),
		LIST_16("CUP_IlumFlareRed_GP25_M"),
		LIST_6("rhs_GRD40_White"),
		LIST_2("rhs_GRD40_Green"),
		LIST_2("rhs_GRD40_Red")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	vest[] = 
	{
		"rhs_6b23_6sh116"
	};
	backpackItems[] =
	{
		LIST_21("rhs_VOG25"),
		LIST_16("CUP_IlumFlareRed_GP25_M"),
		LIST_6("rhs_GRD40_White"),
		LIST_2("rhs_GRD40_Green"),
		LIST_2("rhs_GRD40_Red")
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"rhs_tortila_emr"
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
	primaryWeapon[] = 
	{
		"arifle_AK12U_545_F"
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
		LIST_4("ACE_personalAidKit"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	vest[] = 
	{
		"rhs_6b23_digi_6sh92_spetsnaz2"
	};
	headgear[] = 
	{
		"rhs_6b48"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12U_545_F"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgo"),
		LIST_7("rhs_30Rnd_545x39_7N10_AK")
	};
	backpackItems[] = 
	{
		"ToolKit"
	};
};

class crew_co : crew 
{
	displayName = "Crewman Commander";
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_2("rhs_mag_nspd")
	};
	linkedItems[] +=
	{
		"rhssaf_zrak_rd7j"
	};
};