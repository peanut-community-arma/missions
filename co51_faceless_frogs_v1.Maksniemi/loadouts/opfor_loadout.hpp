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
		"CUP_U_O_RUS_Soldier_VKPO_MSV_EMR_rolled_up_gloves_pads",
		"CUP_U_O_RUS_Soldier_VKPO_MSV_EMR_gloves_pads",
		"CUP_U_O_RUS_Soldier_VKPO_Summer_1",
		"CUP_U_O_RUS_Soldier_VKPO_Summer_2",
		"CUP_U_O_RUS_Soldier_VKPO_Summer_3",
		"CUP_U_O_RUS_Soldier_VKPO_Summer_4",
		"CUP_U_O_RUS_Soldier_VKPO_Jacket_Winter_1",
		"CUP_U_O_RUS_Soldier_VKPO_Jacket_Winter_2",
		"CUP_U_O_RUS_Soldier_VKPO_Jacket_Winter_3",
		"CUP_U_O_RUS_Soldier_VKPO_Jacket_Winter_4",
		"CUP_U_O_RUS_Soldier_VKPO_Winter_1",
		"CUP_U_O_RUS_Soldier_VKPO_Winter_2",
		"CUP_U_O_RUS_Soldier_VKPO_Winter_3",
		"CUP_U_O_RUS_Soldier_VKPO_Winter_4"
	};
	vest[] = 
	{
		LIST_2("CUP_V_O_RUS_6B45_6Sh117_AK_Summer"),
		LIST_2("CUP_V_O_RUS_6B45_Light_Summer"),
		"CUP_V_O_RUS_6B45_6Sh117_AK_Radio_Summer",
		"CUP_V_O_RUS_6B45_AK_Light_Summer",
		"CUP_V_O_RUS_6B45_AK_Summer"
	};
	headgear[] = 
	{
		LIST_3("CUP_H_RUS_6B47_Summer"),
		LIST_2("CUP_H_RUS_6B47_6B34C_Summer"),
		LIST_2("CUP_H_RUS_6B47_6M21_6B34C_Summer"),
		LIST_2("CUP_H_RUS_6B47_6B34D_Summer"),
		LIST_2("CUP_H_RUS_6B47_6B34U_Summer"),
		LIST_2("CUP_H_RUS_6B47_6M2_6B34D_Summer"),
		LIST_2("CUP_H_RUS_6B47_6M2_6B34U_Summer"),
		LIST_2("CUP_H_RUS_6B47_6M21_6B34D_Summer"),
		LIST_2("CUP_H_RUS_6B47_6M2_6B34C_Summer"),
		"CUP_H_RUS_6B47_6M2_Summer",
		"CUP_H_RUS_6B47_6M21_Summer",
		"CUP_H_RUS_6B47",
		"CUP_H_RUS_6B47_headset_goggles",
		"CUP_H_RUS_6B47_headset"
	};
	goggles[] = 
	{
		LIST_10(""),
		"G_Balaclava_blk",
		"G_Balaclava_oli",
		"G_Bandanna_blk",
		"G_Bandanna_oli",
		"G_Cigarette",
		"CUP_G_RUS_Ratnik_Balaclava_EMR_Summer_1",
		"CUP_G_RUS_Ratnik_Balaclava_EMR_Summer_2",
		"CUP_G_RUS_Ratnik_Balaclava_Winter_Green_1",
		"CUP_G_RUS_Ratnik_Balaclava_Winter_Green_2"
	};
	hmd[] = 
	{
		"hendrix_armband_bushlat_th_NVG_w",
		"hendrix_armband_bushlat_rh_NVG_w",
		"hendrix_armband_bushlat_lh_NVG_w"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74M"
	};
	scope[] = 
	{
		LIST_5(""),
		"CUP_optic_1p63",
		"CUP_optic_ekp_8_02",
		"CUP_optic_Kobra",
		"CUP_optic_OKP_7"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_7("CUP_30Rnd_545x39_AK74M_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74M"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"CUP_V_O_RUS_6B45_6Sh117_PKP_Summer",
		"CUP_V_O_RUS_6B45_6Sh117_PKP_Radio_Summer",
		"CUP_V_O_RUS_6B45_PKP_Summer"
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
		"CUP_B_RUS_Patrol_bag_Summer"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	secondaryAttachments[] = 
	{
		"CUP_optic_PGO7V3"
	};
	backpackItems[] = 
	{
		LIST_2("CUP_PG7VL_M"),
		"CUP_OG7_M"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74M_GL"
	};
	backpack[] = 
	{
		"CUP_B_RUS_Patrol_bag_Summer"
	};
	magazines[] += 
	{
		LIST_3("CUP_FlareRed_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"CUP_B_RUS_Patrol_bag_Summer"
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