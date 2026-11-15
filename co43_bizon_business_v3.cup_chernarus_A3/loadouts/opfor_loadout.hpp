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
		"CUP_U_O_CHDKZ_Kam_01",
		"CUP_U_O_CHDKZ_Kam_03",
		"CUP_U_O_CHDKZ_Kam_02",
		"CUP_U_O_CHDKZ_Kam_04",
		"CUP_U_O_CHDKZ_Kam_08",
		"CUP_U_O_CHDKZ_Kam_05",
		"CUP_U_O_CHDKZ_Kam_07",
		"CUP_U_O_CHDKZ_Kam_06"

	};
	vest[] = 
	{
		LIST_2("CUP_V_O_Ins_Carrier_Rig_Com"),
		LIST_2("CUP_V_O_Ins_Carrier_Rig_Light"),
		LIST_2("CUP_V_O_Ins_Carrier_Rig_MG"),
		LIST_2("CUP_V_O_Ins_Carrier_Rig"),
		"CUP_V_O_RUS_6B45_AK_Light_Summer",
		"JAM_V_Lifchik_V2_Open_01_khk"
	};
	headgear[] = 
	{
		"CUP_H_ChDKZ_Beanie",
		"CUP_H_ChDKZ_Cap",
		"CUP_H_FR_BandanaGreen",
		"CUP_H_RUS_Bandana_GSSh_Headphones",
		"CUP_H_FR_BandanaWdl",
		"CUP_H_RUS_Balaclava_Ratnik_Headphones",
		"CUP_H_RUS_Balaclava_Ratnik_Headphones_v2",
		"CUP_H_PMC_Beanie_Khaki",
		"CUP_H_Ger_Boonie2_Flecktarn",
		"CUP_H_RUS_Cap_ATACSFG",
		"CUP_H_RUS_GSSh01_Headphones_green",
		"CUP_H_RUS_6B27",
		"CUP_H_RUS_6B27_goggles",
		"CUP_H_RUS_6B27_headset_goggles",
		"CUP_H_RUS_6B27_headset",
		"CUP_H_RUS_6B27_NVG"
	};
	hmd[] = 
	{
		"G_Armband_NVG_chdkz_F"
	};
	goggles[] = 
	{
		LIST_20(""),
		"G_Balaclava_blk",
		"G_Balaclava_oli",
		"G_Bandanna_blk",
		"G_Bandanna_khk",
		"G_Bandanna_oli",
		"G_Shades_Black",
		"G_Cigarette",
		"CUP_G_RUS_Ratnik_Balaclava_Green_3",
		"CUP_G_RUS_Ratnik_Balaclava_Green_4",
		"CUP_Beard_Black",
		"CUP_FR_NeckScarf"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_11("CUP_30Rnd_545x39_AK_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_45"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_9("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"CUP_V_O_Ins_Carrier_Rig_MG"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_PKMN"
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
		"CUP_B_RPGPack_Khaki"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	backpackItems[] = 
	{
		"CUP_PG7VL_M",
		"CUP_OG7_M"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74_GL"
	};
	magazines[] += 
	{
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"CUP_B_HikingPack_Civ"
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
		"CUP_B_HikingPack_Civ"
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
		"CUP_H_SLA_TankerHelmet"
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