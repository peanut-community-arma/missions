/*
	* Anizay Freedom and Prosperity Party forces
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
		"Opf_U_I_I_Uniform_01_tshirt_black_F",
		"pca_combat_fatigue_p87_wdl",
		"pca_combat_fatigue_rs_p87_wdl"
	};
	vest[] = 
	{
		LIST_2("bear_6sh92_od"),
		LIST_2("bear_6sh92_khaki")
	};
	headgear[] = 
	{
		"pca_m97_pasgt_cdf_ttsko_mountain"
	};
	backpack[] = 
	{
		"pca_backpack_invisible",
		"pca_rd54_tan"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m1garand_sa43"
	};
	scope[] = 
	{
	};
	bipod[] = 
	{
	};
	attachment[] = 
	{
	};
	items[] =
	{
		//Standard Start Items for player
		//"ACRE_PRC343",
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_21("rhsgref_8Rnd_762x63_M2B_M1rifle")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_TYPE_56_2_Early"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_TT"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("CUP_8Rnd_762x25_TT"),
		LIST_17("CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_10("CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M")
	};
	linkedItems[] = 
	{
		"Binocular"
	};
};

class rm_dmr : rm 
{
	displayName = "Sharpshooter";
	primaryWeapon[] = 
	{
		"CUP_srifle_LeeEnfield"
	};
	scope[] =
	{
		"cup_optic_no23mk2"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_31("CUP_10x_303_M")
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
		"CUP_arifle_M4A1_BUIS_GL"
	};
	backpackItems[] = 
	{
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	vest[] = 
	{
		LIST_2("bear_6sh92_khaki_radio"),
		LIST_3("bear_6sh92_od_radio")
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_31("rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle")
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_GL_Early"
	};
	backpackItems[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_16("CUP_30Rnd_762x39_AK47_bakelite_M"),
		LIST_6("CUP_1Rnd_HE_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeGreen_GP25_M")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	backpackItems[] +=
	{
		LIST_2("CUP_1Rnd_SmokeRed_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeGreen_GP25_M")
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = { "pca_backpack_invisible_large" };
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
	items[] +=
	{
		"ACRE_PRC343"
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

class mtr : rm 
{
	displayName = "Mortar Gunner";
	secondaryWeapon[] = 
	{
		"ace_csw_staticMortarCarry"
	};
	items[] +=
	{
		"ACE_RangeTable_82mm",
		"ACE_MapTools",
		"ACE_Kestrel4500"
	};
};

class amtr : rm 
{
	displayName = "Assistant Mortar Gunner";
	secondaryWeapon[] =
	{
		"ace_csw_carryMortarBaseplate"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"CUP_B_RPGPack_Khaki"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_TT"
	};
	magazines[] += 
	{
		LIST_3("CUP_8Rnd_762x25_TT")
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
		"CUP_B_RPGPack_Khaki"
	};
	backpackItems[] = 
	{
		LIST_2("CUP_PG7VL_M"),
	};
	linkedItems[] += 
	{
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
		"rhsusf_assault_eagleaiii_ocp"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_m9"
	};
	magazines[] += 
	{
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP")
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_4("DemoCharge_Remote_Mag"),
		LIST_2("SatchelCharge_Remote_Mag")
	};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	vest[] = 
	{
		"rhsusf_spcs_ocp_sniper"
	};
	headgear[] = 
	{
		"rhsusf_ach_helmet_camo_ocp"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m14ebrri"
	};
	scope[] = 
	{
		"rhsusf_acc_ACOG",
		"rhsusf_acc_ACOG2",
		"rhsusf_acc_ACOG3",
		"rhsusf_acc_ACOG_RMR"
	};
	attachment[] = {};
	bipod[] = 
	{
		"rhsusf_acc_harris_bipod"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_m9"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP"),
		LIST_9("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	backpackItems[] = 
	{
		LIST_12("rhsusf_20Rnd_762x51_m118_special_Mag")
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
		"rhsusf_spcs_ocp_crewman"
	};
	headgear[] = 
	{
		"rhsusf_cvc_helmet",
		"rhsusf_cvc_alt_helmet",
		"rhsusf_cvc_ess"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag")
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
		"rhsusf_weap_m9"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP"),
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
		"rhsusf_spcs_ocp_crewman"
	};
	headgear[] = 
	{
		"rhsusf_ihadss"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_m9"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class hmg : rm 
{
	displayName = "Heavy Machine Gunner";
	backpack[] = 
	{
		"ace_compat_rhs_usf3_m2_carry"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
};

class ahmg : rm 
{
	displayName = "Assistant Heavy Machine Gunner";
	backpack[] = 
	{
		"ace_csw_m3CarryTripodLow"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
	linkedItems[] = 
	{
		"Binocular"
	};
};