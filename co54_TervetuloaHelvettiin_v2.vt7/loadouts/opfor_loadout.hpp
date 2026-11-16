// Fudged ~1989 Finnish Army

#define nades "CUP_HandGrenade_M67","SmokeShell"

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
	faces[] = {"faceset:caucasian"};
	insignias[] = {"Finland"};
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
		LIST_2("$NONE_aegis_cws_m05$"),
		"$NONE_aegis_cws_m05_cold_wood$"
	};
	vest[] = 
	{
		"pca_vest_invisible",
		LIST_2("CUP_V_RUS_Smersh_1"),
		LIST_4("CUP_V_O_Ins_Carrier_Rig_Light")
	};
	headgear[] = 
	{
		"simc_m53"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		LIST_16("bnae_weap_rk95"),
		LIST_2("CUP_arifle_AK47"),
		"CUP_arifle_AKS"
	};
	scope[] = 
	{};
	magazines[] = 
	{
		nades,
		LIST_7("rhs_30Rnd_762x39mm")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	magazines[] = 
	{
		nades,
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class mg : ar
{
	displayName = "Machine Gunner";
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_M72A6" // they really don't like using the RHS M72
	};
};

class rm_aa : rm 
{
	displayName = "Rifleman (AA)";
	secondaryWeapon[] = 
	{
		LIST_2("CUP_launch_9K32Strela"),
		"CUP_launch_Igla"
	};
};

class rm_ammo : rm
{
	displayName = "Ammo Bearer";
	backpack[] = {"pca_backpack_invisible_large"};
	backpackItems[] = {LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_APILAS"
	};
};

class leader : rm
{
	displayName = "Leader";
	sidearmWeapon[] = {"CUP_hgun_Browning_HP"};
	magazines[] += {LIST_3("CUP_13Rnd_9x19_Browning_HP")};
};

class gren : rm 
{
	displayName = "Grenadier";
	sidearmWeapon[] = {"ptv_L2BPG"};
	magazines[] += 
	{
		LIST_9("CUP_1Rnd_StarFlare_Green_M203"),
		LIST_3("CUP_1Rnd_HE_M203")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] += 
	{
		"CUP_B_SLA_Medicbag"
	};
	backpackItems[] = 
	{
		LIST_5("ACE_fieldDressing"),
		LIST_15("ACE_elasticBandage"),
		LIST_5("ACE_packingBandage"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		"ACE_bloodIV",
		LIST_4("ACE_salineIV_250"),
		LIST_2("ACE_plasmaIV_500")
	};
};

class engineer : rm 
{
	displayName = "Engineer";
	backpack[] = 
	{
		"pca_backpack_invisible_large"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter",
		LIST_2("rhs_ec400_sand_mag")
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	headgear[] = 
	{
		"CUP_H_CZ_Helmet05"
	};
	primaryWeapon[] = 
	{
		"$NONE_fwa_weap_pps43$"
	};
	magazines[] = 
	{
		nades,
		LIST_5("fwa_35rnd_762x25mm_pps43")
	};
};

class marksman : leader
{
	displayName = "Marksman";
	primaryWeapon[] = {"pca_weap_svd_wood"};
	scope[] = {"rhs_acc_pso1m2"};
	magazines[] = {LIST_6("rhs_10Rnd_762x54mmR_7N1")};
};