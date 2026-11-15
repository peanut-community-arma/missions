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
		"Opf_U_O_S_Gorka_01_autumn_F",
		"U_O_R_Gorka_01_F",
		"U_O_R_Gorka_01_brown_F",
		"Opf_U_O_S_Gorka_01_summer_F",
		"U_O_R_Gorka_01_camo_F"
	};
	vest[] =
	{
		"V_TacVest_grn",
		"V_TacVest_oli",
		"V_lxWS_TacVestIR_oli"
	};
	headgear[] =
	{
		LIST_3("CUP_H_RUS_6B27"),
		"CUP_H_RUS_6B27_cover",
		"CUP_H_RUS_6B46",
		"CUP_H_RUS_6B27_olive",
		"CUP_H_RUS_6B27_goggles",
		"CUP_H_RUS_6B47_desert",
		"CUP_H_RUS_6B47"
	};
	goggles[] = {
		LIST_5(""),
		"G_Balaclava_blk",
		"G_Balaclava_oli",
		"G_Balaclava_Flecktarn",
		"G_Bandanna_Syndikat2",
		"CUP_G_RUS_Ratnik_Balaclava_Winter_Green_2"
	};
	backpack[] =
	{
		LIST_7(""),
		LIST_2("CUP_O_RUS_Patrol_bag_Green"),
		"CUP_O_RUS_Patrol_bag_Summer"
	};
	primaryWeapon[] =
	{
		LIST_4("CUP_arifle_AK74_Early"),
		"CUP_arifle_AK74M",
		"CUP_arifle_AK74M_camo",
		"CUP_arifle_AK74M_desert"
	};
	scope[] = {};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_7("CUP_30Rnd_545x39_AK_M")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	backpack[] =
	{
		LIST_2("CUP_O_RUS_Patrol_bag_Green"),
		"CUP_O_RUS_Patrol_bag_Summer"
	};
	primaryWeapon[] =
	{
		"CUP_arifle_RPK74M"
	};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M")
	};
};

class mg : rm
{
	displayName = "Machine Gunner";
	backpack[] =
	{
		LIST_2("CUP_O_RUS_Patrol_bag_Green"),
		"CUP_O_RUS_Patrol_bag_Summer"
	};
	primaryWeapon[] =
	{
		"CUP_lmg_Pecheneg",
		"CUP_lmg_PKM",
		"CUP_lmg_Pecheneg_woodland",
		"CUP_lmg_Pecheneg_desert"
	};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
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
		"CUP_O_RUS_Patrol_bag_Green",
		"CUP_O_RUS_Patrol_bag_Summer"
	};
	secondaryWeapon[] =
	{
		"CUP_launch_RPG7V"
	};
	secondaryAttachments[] = {};
	backpackItems[] =
	{
		LIST_3("CUP_PG7V_M"),
		"CUP_OG7_M"
	};
};

class gren : rm
{
	displayName = "Grenadier";
	primaryWeapon[] =
	{
		"CUP_arifle_AK74M_GL",
		"CUP_arifle_AK74_GL_Early"
	};
	magazines[] +=
	{
		LIST_1("CUP_1Rnd_HE_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class mm : rm
{
	displayName = "Marksman";
	primaryWeapon[] =
	{
		"CUP_srifle_SVD"
	};
	scope[] = {
		"CUP_optic_PSO_1"
	};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_10Rnd_762x54_SVD_M")
	};
};

class medic : rm
{
	displayName = "Medic";
	backpack[] =
	{
		"CUP_O_RUS_Patrol_bag_Green",
		"CUP_O_RUS_Patrol_bag_Summer"
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
		"CUP_B_RUS_Patrol_bag_6E5_Summer"
	};
	backpackItems[] =
	{
		"ToolKit",
		"ACE_wirecutter",
		LIST_2("CUP_MineE_M")
	};
};

class crewman : rm
{
	displayName = "Crewman";
	headgear[] =
	{
		"H_Tank_black_F"
	};
	primaryWeapon[] =
	{
		"CUP_arifle_AKS74U"
	};
	scope[] = {};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_545x39_AK_M")
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
