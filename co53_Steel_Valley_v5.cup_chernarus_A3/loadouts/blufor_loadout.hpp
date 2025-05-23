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
	faces[] = {"faceset:african", "faceset:caucasian"};
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
		"CUP_U_O_SLA_Green",
	};
	vest[] = 
	{
		"rhs_6b23_digi_6sh92"
	};
	headgear[] = 
	{
		"rhs_6b26_digi"
	};
	backpack[] = 
	{
		"rhs_rk_sht_30_emr"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74"
	};
	scope[] = 
	{
		"cup_optic_1p63"
	};
	bipod[] = {};
	attachment[] = 
	{
		LIST_2(""),
		"",
	};
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
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_13("CUP_30Rnd_545x39_AK_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_30Rnd_545x39_AK_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"rhs_6b23_digi_6sh92_spetsnaz2"
	};
	backpack[] = 
	{
		"rhs_rk_sht_30_emr"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_45"
	};
	bipod[] = {};
	attachment[] = 
	{
		""
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_makarov_pm"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_3("rhs_mag_9x18_8_57N181S"),
		LIST_2("CUP_60Rnd_545x39_AK74M_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_60Rnd_545x39_AK74M_M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"rhs_rk_sht_30_emr"
	};
	backpackItems[] += 
	{
		LIST_4("CUP_60Rnd_545x39_AK74M_M")
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
		"CUP_launch_RPG26"
	};
	backpackItems[] = 
	{
		"CUP_launch_RPG26"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"rhsusf_spcs_ocp_grenadier"
	};
	primaryWeapon[] = 
	{
		"arifle_MX_GL_F"
	};
	backpackItems[] = 
	{
		LIST_10("3Rnd_HE_Grenade_shell"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	vest[] = 
	{
		"rhs_6b23_digi_6sh92_radio"
	};
	headgear[] = 
	{
		"rhs_6b26_digi_ess"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74_GL"
	};
	backpackItems[] += 
	{
		LIST_2("SmokeShell"),
		LIST_5("CUP_1Rnd_HE_GP25_M"),
		LIST_3("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeRed_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeGreen_GP25_M")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74_GL"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] =
	{
		LIST_5("CUP_1Rnd_HE_GP25_M"),
		LIST_3("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeRed_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeGreen_GP25_M")
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
	backpack[] = 
	{
		"rhs_rk_sht_30_emr"
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
		"rhs_6b23_digi_6sh92_spetsnaz2"
	};
	backpack[] = 
	{
		"rhs_rk_sht_30_emr"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg_B50_vfg"
	};
	scope[] = 
	{
		"cup_optic_1p63"
	};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"rhs_weap_makarov_pm"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_3("rhs_mag_9x18_8_57N181S"),
		LIST_3("rhs_100Rnd_762x54mmR_7N26")
	};
	backpackItems[] = 
	{
		LIST_6("rhs_100Rnd_762x54mmR_7N26")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"rhs_rk_sht_30_emr"
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

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"rhs_rk_sht_30_emr"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	secondaryAttachments[] =
	{
		"cup_optic_pgo7v3"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_makarov_pm"
	};
	magazines[] += 
	{
		LIST_3("rhs_mag_9x18_8_57N181S")
	};
	backpackItems[] = 
	{
		LIST_2("CUP_PG7VL_M")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"rhs_rk_sht_30_emr"
	};
	backpackItems[] = 
	{
		"CUP_PG7VL_M",
		"CUP_PG7VR_M",
		"CUP_TBG7V_M"
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class maa : rm 
{
    displayName = "Medium Anti-Air Gunner";
    backpack[] = 
    {
        "pca_eagle_a3_oefcp"
    };
    secondaryWeapon[] = 
    {
        "launch_B_titan_F"
    };
    sidearmWeapon[] = 
    {
        "hgun_P07_F"
    };
    magazines[] += 
    {
        LIST_3("16Rnd_9x21_Mag")
    };
    backpackItems[] = 
    {
        LIST_2("Titan_AA")
    };
	 linkedItems[] = 
    {
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
        "Binocular"
    };
};

class amaa : rm 
{
    displayName = "Assistant Medium Anti-Air Gunner";
    backpack[] = 
    {
        "pca_eagle_a3_oefcp"
    };
    backpackItems[] = 
    {
        LIST_3("Titan_AA")
    };
    linkedItems[] = 
    {
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
        "Binocular"
    };
};
//////// ROLES NOT USED IN BASE TEMPLATE ///////////////////////////////////////////

class eng : rm 
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	backpack[] = 
	{
		"pca_eagle_a3_oefcp"
	};
	sidearmWeapon[] = 
	{
		"hgun_P07_F"
	};
	magazines[] += 
	{
		LIST_3("16Rnd_9x21_Mag")
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_4("rhsusf_m112_mag"),
		LIST_2("rhsusf_m112x4_mag")
	};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	vest[] = 
	{
		"milgp_v_marciras_marksman_belt_mc"
	};
	headgear[] = 
	{
		"usp_cap_ct_mc"
	};
	primaryWeapon[] = 
	{
		"arifle_MXM_F"
	};
	scope[] = 
	{
		"optic_dms"
	};
	attachment[] = {};
	bipod[] = 
	{
		"ptv_acc_hbrs"
	};
	sidearmWeapon[] = 
	{
		"hgun_P07_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_3("16Rnd_9x21_Mag"),
		LIST_9("30Rnd_65x39_caseless_mag")
	};
	backpackItems[] = 
	{
		LIST_12("30Rnd_65x39_caseless_mag")
	};
	linkedItems[] = 
	{
		"Binocular"
	};
};

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	vest[] = 
	{
		"rhs_6b23_digi_6sh92"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74U"
	};
	headgear[] = 
	{
		"CUP_H_SLA_TankerHelmet"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_9("CUP_30Rnd_545x39_AK_M")
	};
	backpackItems[] = 
	{
		"ToolKit"
	};
};

class crew_co : crew 
{
	displayName = "Crewman Commander";
	sidearmWeapon[] = 
	{
		"rhs_weap_makarov_pm"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("rhs_mag_9x18_8_57N181S"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class hp : rm 
{
	displayName = "Helicopter Pilot";
	vest[] = 
	{
		"milgp_v_marciras_light_mc"
	};
	headgear[] = 
	{
		"H_PilotHelmetHeli_B"
	};
	primaryWeapon[] = 
	{
		"arifle_MXC_F"
	};
	sidearmWeapon[] = 
	{
		"hgun_P07_F"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("30Rnd_65x39_caseless_mag"),
		LIST_3("16Rnd_9x21_Mag"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};