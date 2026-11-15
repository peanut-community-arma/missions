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
		"CUP_U_I_GUE_Anorak_01",
		"CUP_U_I_GUE_Anorak_03",
		"CUP_U_I_GUE_Anorak_02",
		"CUP_U_I_GUE_WorkU_01",
		"CUP_U_I_GUE_WorkU_02",
		"CUP_U_I_GUE_Flecktarn2",
		"CUP_U_I_GUE_Flecktarn3",
		"CUP_U_I_GUE_Flecktarn",
		"CUP_U_I_GUE_Flecktarn4",
		"CUP_U_I_GUE_Woodland1"
	};
	vest[] = 
	{
		LIST_2("pca_vest_invisible"),
		LIST_5("JAM_V_Chicom_Type56_tan")
	};
	headgear[] = 
	{
		LIST_15(""),
		"H_Watchcap_camo",
		"H_Cap_blk",
		"H_Booniehat_oli",
		"H_Bandanna_gry",
		"H_Shemag_olive"
	};
	goggles[] = 
	{
		LIST_15(""),
		"G_Balaclava_blk",
		"G_Balaclava_oli",
		"G_Bandanna_aviator",
		"G_Bandanna_blk",
		"G_Bandanna_khk",
		"G_Cigarette",
		"G_Shemag_khk",
		"G_Headset_lxWS",
		"CUP_G_RUS_Ratnik_Balaclava_Green_1",
		"CUP_G_RUS_Ratnik_Balaclava_Green_2",
		"CUP_Beard_Black",
		"CUP_Beard_Blonde",
		"CUP_Beard_Brown",
		"CUP_G_Scarf_Face_Grn",
		"JAM_G_Gloves_wool_cut_blk"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_FNFAL5061"
	};
	attachment[] = 
	{
		"acc_flashlight"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_8("CUP_20Rnd_762x51_FNFAL_M")
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
		"CUP_Vest_RUS_6B45_Sh117_PKP"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg"
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
		LIST_5("CUP_IlumFlareRed_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_3("CUP_30Rnd_545x39_AK_M")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_CivilianBackpack_01_Everyday_Black_F"
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
		"B_CivilianBackpack_01_Everyday_Black_F"
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