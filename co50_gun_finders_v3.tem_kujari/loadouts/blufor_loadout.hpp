class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"bear_uniform_indep_m81",
		"bear_uniform_indep_rs_m81"
	};
	vest[] = 
	{
		"rhsgref_6b23_khaki_rifleman"
	};
	backpack[] = {};
	headgear[] = 
	{
		"rhsgref_helmet_pasgt_un"
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
		"ItemCompass"
	};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	backpack[] = 
	{
		"pca_assaultpack_m81"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m70b1"
	};
	attachment[] =
	{
		"rhs_acc_2dpzenit"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_m1911a1"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_10("rhssaf_30Rnd_762x39mm_M67"),
		LIST_2("rhsusf_mag_7x45acp_MHP")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"pca_carryall_m81"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m84"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_3("rhs_100Rnd_762x54mmR")
	};
	backpackItems[] = 
	{
		LIST_2("rhs_100Rnd_762x54mmR"),
		LIST_2("rhs_100Rnd_762x54mmR_green")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"pca_carryall_m81"
	};
	backpackItems[] += 
	{
		LIST_2("rhs_100Rnd_762x54mmR"),
		LIST_2("rhs_100Rnd_762x54mmR_green")
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
		"rhs_weap_m70ab2"
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
		LIST_4("rhs_rpg7_PG7V_mag"),
		LIST_2("rhs_rpg7_OG7V_mag")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"rhs_weap_m70b3n_pbg40"
	};
	backpackItems[] = 
	{
		LIST_20("rhs_VOG25"),
		LIST_10("rhs_GRD40_White")
	};
};

class tl : gren 
{
	displayName = "Team Leader";
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_10("rhssaf_30Rnd_762x39mm_M78_tracer"),
		"rhsusf_mag_7x45acp_MHP"
	};	
	backpackItems[] += 
	{
		LIST_5("rhs_mag_rdg2_white"),
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

class sgt : sl 
{
	displayName = "Platoon Sergeant";
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
		"pca_eagle_a3_m81"
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

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	headgear[] = 
	{
		"rhsgref_un_beret"
	};
	primaryWeapon[] =
	{
		"rhs_weap_m92"
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
	linkedItems[] +=
	{
		"Binocular"
	};
};

//********************************************************************************//
//Uncommon Roles - !!! CUSTOM ENTRIES NEEDED FOR CURATED ARSENAL !!!
//********************************************************************************//

class dm : rm 
{
	displayName = "Designated Marksman";
	primaryWeapon[] = 
	{
		"rhs_weap_m76"
	};
	scope[] = 
	{
		"rhs_acc_pso1m2"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_20("rhsgref_10Rnd_792x57_m76"),
		"rhsusf_mag_7x45acp_MHP"
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};