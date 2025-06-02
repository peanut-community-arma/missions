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
		"rhs_uniform_gorka_r_y_gloves"
	};
	vest[] = 
	{
		"pca_6b23_6sh92_flora"
	};
	goggles[] = 
	{
		"CUP_G_RUS_Balaclava_Ratnik_v2"
	};
	headgear[] = 
	{
		LIST_3("CUP_H_RUS_Altyn_Shield_Down"),
		LIST_2("CUP_H_RUS_Altyn_Shield_Up"),
		LIST_1("CUP_H_RUS_Altyn_Goggles"),
		LIST_1("CUP_H_RUS_Altyn")
	};
	backpack[] = 
	{
		"pca_umbts_flora"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_OTS14_GROZA_762_Grip"
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
		LIST_2("rhs_mag_rgd5"),
		LIST_13("pca_mag_40Rnd_762x39_Polymer")
	};
	backpackItems[] = 
	{
		LIST_4("pca_mag_40Rnd_762x39_Polymer")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74M"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_6p53"
	};
	magazines[] = 
	{
		LIST_3("rhs_18rnd_9x21mm_7N29"),
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_rgd5"),
		LIST_7("CUP_60Rnd_TE1_Green_Tracer_545x39_AK74M_M")
	};
	backpackItems[] = 
	{
		LIST_10("CUP_60Rnd_TE1_Green_Tracer_545x39_AK74M_M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_7("CUP_60Rnd_TE1_Green_Tracer_545x39_AK74M_M")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class br : rm 
{
	displayName = "Breacher";
	primaryWeapon[] = 
	{
		"CUP_arifle_AS_VAL_VFG"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_rgd5"),
		LIST_8("CUP_30Rnd_9x39_SP5_VIKHR_M")
	};
	backpackItems[] = 
	{
		LIST_10("CUP_30Rnd_9x39_SP5_VIKHR_M")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	sidearmWeapon[] = 
	{
		"rhs_weap_6p53"
	};
	backpackItems[] = 
	{
		LIST_3("rhs_18rnd_9x21mm_7N29"),
		LIST_2("pca_mag_40Rnd_762x39_Polymer"),
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
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] =
	{
		LIST_4("DemoCharge_Remote_Mag"),
		LIST_1("ACE_Clacker")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	backpackItems[] =
	{
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed"),
		LIST_6("DemoCharge_Remote_Mag"),
		LIST_1("ACE_Clacker")
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
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
	backpack[] = 
	{
		"B_Carryall_oli"
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

class mmg : rm 
{
	displayName = "Medium Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg_top_rail_B50_vfg"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_6p53"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_rgd5"),
		LIST_3("rhs_18rnd_9x21mm_7N29"),
		LIST_3("rhs_100Rnd_762x54mmR_green")
	};
	backpack[] = 
	{
		"B_Carryall_oli"
	};
	backpackItems[] = 
	{
		LIST_6("rhs_100Rnd_762x54mmR_green")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"B_Carryall_oli"
	};
	backpackItems[] = 
	{
		LIST_4("rhs_100Rnd_762x54mmR_green")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};