class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = {
		"U_lxWS_Djella_02_Brown",
		"U_lxWS_Djella_02_Grey",
		"U_lxWS_Djella_03_Green",
		"U_lxWS_Djella_02_Sand"
	};
	vest[] = {};
	backpack[] = {};
	headgear[] = 
	{
		LIST_3("lxWS_H_turban_03_sand"),
		LIST_3("lxWS_H_turban_01_sand"),
		LIST_3("lxWS_H_turban_02_sand"),
		LIST_3("lxWS_H_turban_04_sand"),
		"H_Bandanna_sand",
		"CUP_H_TKI_Lungee_Open_01",
		"CUP_H_TKI_Lungee_Open_04",
		"CUP_H_TKI_Lungee_Open_05",
		"CUP_H_TKI_Lungee_Open_06"
	};
	goggles[] = {
		LIST_10("G_Bandanna_blk"),
		"G_Bandanna_sport",
		"G_Bandanna_shades",
		"G_Bandanna_aviator"
	};
	hmd[] = {
		"G_Armband_NVG_org_alt_F"
	};
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
	displayName = "Light Rifleman";
	vest[] = 
	{
		"JAM_V_Chicom_Type56_blk",
		"JAM_V_Chicom_Type56_grn",
		"JAM_V_Chicom_Type56_tan"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK47",
		"CUP_arifle_AKMS"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_762x39_AK47_M")
	};
};

class ar : rm 
{
	displayName = "Heavy Rifleman"; //limited use
	headgear[] = {
		"CUP_H_SLA_Helmet_DES",
		"CUP_H_SLA_Helmet_DES_worn",
		"CUP_H_SLA_Helmet_URB_worn"
	};
	vest[] = 
	{
		"V_TacVest_khk"
	};
	primaryWeapon[] = 
	{
		"CUP_SKS_rail"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_10Rnd_762x39_SKS_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] = {
		"JAM_V_ALICE_Webbing_mg",
		"JAM_V_ALICE_Webbing_mg_asst"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_MG3_rail"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"ptv_m72a7"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"hendrix_rpg_2",
		"hendrix_rpg_1"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	backpackItems[] = 
	{
		LIST_3("CUP_PG7VL_M"),
		"CUP_OG7_M"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_GL_top_rail"
	};
	headgear[] += {
		"CUP_H_SLA_Helmet_DES",
		"CUP_H_SLA_Helmet_DES_worn",
		"CUP_H_SLA_Helmet_URB_worn"
	};
	vest[] = {
		"V_TacVest_khk",
		"V_TacVest_tan",
		"V_TacVest_gry",
		"V_TacVest_brn"
	};
	magazines[] += 
	{
		LIST_5("CUP_1Rnd_HE_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"CUP_B_GER_Medic_Desert"
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
		LIST_2("ACE_bloodIV")
		//LIST_2("ACE_adenosine")
	};
};

class engineer : rm 
{
	displayName = "Engineer";
	backpack[] = 
	{
		"B_simc_ARVN_ruck_2"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter",
		"CUP_MineE_M"
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	headgear[] = 
	{
		"CUP_H_SLA_TankerHelmet"
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"CUP_H_RUS_ZSH_Shield_Up",
		"CUP_H_RUS_ZSH_Shield_Down"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK105"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_545x39_AK74M_M")
	};
};

class sniper : rm 
{
	displayName = "Sniper";
	primaryWeapon[] = 
	{
		"CUP_srifle_Mosin_Nagant"
	};
	scope[] = 
	{
		"CUP_optic_PEM"
	};
	magazines[] = 
	{
		LIST_5("CUP_5Rnd_762x54_Mosin_M")
	};
	goggles[] = {"Aegis_G_scrimNet_under_sand_F","Aegis_G_scrimNet_sand_F"};
};