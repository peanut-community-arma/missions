/*
	* Faction: NATO (Multicam, 2035)
*/

// Weaponless Baseclass
class baseMan 
{
	displayName = "Unarmed";
	// All Randomized.
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {"default"};
	hmd[] = {};
	// Leave empty to not change faces and Insignias -> example: faces[] = {};
	faces[] = {};
	insignias[] = {};
	//All Randomized. Add Primary Weapon and attachments.
	//Leave Empty to remove all. {"Default"} for using original items the character start with.
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	//SecondaryAttachments[] arrays are NOT randomized.
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	// These are added to the uniform or vest first - overflow goes to backpack if there is space.
	magazines[] = {};
	items[] = {};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	// These are put directly into the backpack.
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit.
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"U_B_CombatUniform_mcam",
		"U_B_CombatUniform_mcam_vest"
	};
	vest[] = 
	{
		"milgp_v_marciras_assaulter_mc"
	};
	headgear[] = 
	{
		"bear_opscore_multicam_cover_pelt"
	};
	backpack[] = 
	{
		"pca_eagle_a3_ocp"
	};
	primaryWeapon[] = 
	{
		"arifle_MX_F"
	};
	scope[] = 
	{
		"optic_hamr"
	};
	bipod[] = {};
	items[] =
	{
		//Standard Start Items for player
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
		LIST_2("HandGrenade"),
		LIST_13("30Rnd_65x39_caseless_mag")
	};
	backpackItems[] = 
	{
		LIST_4("30Rnd_65x39_caseless_mag")
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
		"pca_eagle_a3_ocp"
	};
	primaryWeapon[] = 
	{
		"sps_weap_kac_lamg_hg_tan"
	};
	bipod[] = 
	{
		"cup_bipod_vltor_modpod"
	};
	sidearmWeapon[] = 
	{
		"hgun_P07_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("16Rnd_9x21_Mag_v2"),
		LIST_5("sps_200Rnd_556x45_M855A1_Mixed_KAC_Box_Tan")
	};
	backpackItems[] = 
	{
		LIST_4("sps_200Rnd_556x45_M855A1_Mixed_KAC_Box_Tan")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"pca_eagle_a3_ocp"
	};
	backpackItems[] += 
	{
		LIST_6("100Rnd_65x39_caseless_mag")
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
	backpackItems[] = 
	{
		"pca_weap_m136cs"
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"arifle_MX_GL_F"
	};
	vest[] = 
	{
		"milgp_v_marciras_teamleader_mc"
	};
	headgear[] = 
	{
		"bear_opscore_multicam_cover_pelt_nsw_cam"
	};
	backpack[] = 
	{
		"pca_eagle_a3_ocp"
	};
	backpackItems[] =
	{
		LIST_8("CUP_1Rnd_HE_M203"),
		LIST_2("SmokeShell")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
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
		LIST_1("DemoCharge_Remote_Mag"),
		LIST_8("CUP_1Rnd_HE_M203"),
		LIST_2("SmokeShell")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
};

class wtl : rm 
{
	displayName = "Weapon Team Leader";
	vest[] = 
	{
		"milgp_v_marciras_teamleader_mc"
	};
	headgear[] = 
	{
		"bear_opscore_multicam_cover_pelt_nsw_cam"
	};
	backpack[] = 
	{
		"pca_eagle_a3_ocp"
	};
	backpackItems[] =
	{
		LIST_2("SmokeShell")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"B_Carryall_mcamo"
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
	vest[] = 
	{
		"milgp_v_marciras_hgunner_belt_mc"
	};
	backpack[] = 
	{
		"B_Carryall_mcamo"
	};
	primaryWeapon[] = 
	{
		"MMG_02_sand_F"
	};
	bipod[] = 
	{
		"cup_bipod_vltor_modpod"
	};
	scope[] = 
	{
		"optic_mrco"
	};
	sidearmWeapon[] = 
	{
		"hgun_P07_F"
	};
	magazines[] = 
	{
		LIST_1("SmokeShell"),
		LIST_3("16Rnd_9x21_Mag_v2"),
		LIST_3("ACE_130Rnd_338_Mag_green")
	};
	backpackItems[] = 
	{
		LIST_2("ACE_130Rnd_338_Mag_green")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"B_Carryall_mcamo"
	};
	backpackItems[] = 
	{
		LIST_4("ACE_130Rnd_338_Mag_green")
	};
	linkedItems[] = 
	{
		"rhssaf_zrak_rd7j"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"B_Carryall_mcamo"
	};
	secondaryWeapon[] = 
	{
		"launch_MRAWS_green_rail_F"
	};
	backpackItems[] = 
	{
		LIST_2("MRAWS_HEAT_F")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"B_Carryall_mcamo"
	};
	backpackItems[] = 
	{
		LIST_2("MRAWS_HEAT_F"),
		"MRAWS_HEAT55_F",
		"MRAWS_HE_F"
	};
	linkedItems[] = 
	{
		"rhssaf_zrak_rd7j"
	};
};
class hat : rm 
{
	displayName = "Heavy Anti-Tank Gunner";
	backpack[] = 
	{
		"B_Carryall_mcamo"
	};
	secondaryWeapon[] = 
	{
		"launch_I_Titan_short_F"
	};
	backpackItems[] = 
	{
		LIST_2("Titan_AT")
	};
};

class ahat : rm 
{
	displayName = "Assistant Heavy Anti-Tank Gunner";
	backpack[] = 
	{
		"B_Carryall_mcamo"
	};
	backpackItems[] = 
	{
		LIST_2("Titan_AT"),
		"Titan_AP"
	};
	linkedItems[] = 
	{
		"rhssaf_zrak_rd7j"
	};
};
