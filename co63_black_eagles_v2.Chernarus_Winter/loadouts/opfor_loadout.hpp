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
		"Atlas_U_I_Afghanka_01_ardi_full_F",
		"Atlas_U_I_Afghanka_01_ardi_half_F",
		"Atlas_U_I_Afghanka_02_ardi_half_F",
		"Atlas_U_I_Afghanka_02_ardi_full_F",
		"CUP_U_O_RUS_Soldier_Masking_Suit_6Sh119_Winter_3",
		"JAM_U_UniformType81_camo",
		"JAM_U_UniformType81_Rolled_camo"
	};
	vest[] = 
	{
		LIST_2("Atlas_V_OCarrierGora_Lite_blk_F"),
		LIST_2("Atlas_V_OCarrierGora_blk_F"),
		"Atlas_V_OCarrierGora_CQB_blk_F"
	};
	headgear[] = 
	{
		LIST_15("H_PASGT_basic_blue_F"),
		LIST_5("Atlas_H_PASGT_Cover_UN_F"),
		"lxWS_H_ssh40_blue",
		"Aegis_H_Milcap_nohs_blue_F",
		"Aegis_H_MilCap_tachs_blue_F",
		"Aegis_H_Booniehat_UNO_F",
		"Aegis_H_Booniehat_UNO_hs_F",
		"Aegis_H_Helmet_FASTMT_Cover_UN_F"
	};
	goggles[] = 
	{
		LIST_15(""),
		"PLA_Balaclava_Alt_Black",
		"PLA_Balaclava_Alt_1_Black",
		"G_Balaclava_blk",
		"G_Bandanna_blk",
		"G_Combat",
		"G_Shades_Black",
		"G_Spectacles_Tinted",
		"G_Cigarette",
		"G_Shemag_white",
		"G_Balaclava_TI_blk_F",
		"G_RegulatorMask_F",
		"CUP_G_RUS_Ratnik_Balaclava_Winter_1",
		"CUP_G_RUS_Ratnik_Balaclava_Winter_2",
		"CUP_Beard_Black",
		"CUP_G_ESS_BLK_Dark",
		"CUP_G_Scarf_Face_White",
		"JCA_G_AirPurifyingRespirator_04_black_clear_F",
		"JCA_G_AirPurifyingRespirator_04_black_tinted_F",
		"M40_Gas_mask_nbc_f2_d",
		"M40_Gas_mask_nbc_f4_d"
	};
	hmd[] = 
	{
		"Aegis_NV_G_Armband_Blu_F"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK107_top_rail"
	};
	scope[] = 
	{
		"optic_ACO_grn",
		LIST_5("")
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_6("CUP_30Rnd_545x39_AK74M_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74M_top_rail"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_6("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"Atlas_V_OCarrierGora_CQB_blk_F"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_M60"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_M72A6"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
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
		"CUP_arifle_AK74M_GL"
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
		"hendrix_rd54_1_flora_1"
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
		"hendrix_rd54_1_flora_1"
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
		"CUP_H_SLA_TankerHelmet",
		"lxWS_H_HelmetCrew_Blue"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_M3A1"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_45ACP_M3A1_BLK_M")
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
		"CUP_smg_M3A1"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_45ACP_M3A1_BLK_M")
	};
};