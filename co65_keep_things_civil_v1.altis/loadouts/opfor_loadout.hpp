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
		"U_BG_Guerrilla_6_1",
		"U_BG_Guerilla1_1",
		"U_BG_Guerilla2_2",
		"U_BG_Guerilla2_1",
		"U_BG_Guerilla2_3",
		"U_BG_Guerilla3_1",
		"U_BG_Guerilla3_2",
		"U_BG_leader",
		"U_BG_Guerilla1_3",
		"U_BG_Guerilla1_2_F",
		"U_C_Poloshirt_blue",
		"CUP_U_C_Citizen_03",
		"U_C_Poor_1",
		"U_C_Poor_2",
		"U_C_Man_casual_8_F",
		"U_C_Man_casual_7_F",
		"U_I_Uniform_01_tanktop_F",
		"U_B_ION_Uniform_01_tshirt_black_F",
		"U_B_ION_Uniform_01_poloshirt_blue_F",
		"U_I_C_Soldier_Bandit_2_F",
		"U_I_C_Soldier_Bandit_5_F",
		"U_I_C_Soldier_Bandit_3_F",
		"Atlas_U_C_CommonerJacket_01_blue_F",
		"U_C_E_LooterJacket_01_F",
		"U_I_L_Uniform_01_tshirt_black_F",
		"U_I_L_Uniform_01_tshirt_olive_F",
		"U_I_L_Uniform_01_tshirt_skull_F",
		"U_lxWS_ION_Casual3",
		"U_lxWS_ION_Casual5",
		"Opf_U_I_I_Uniform_01_tshirt_black_F",
		"U_simc_civ_jean_blau_dunkel_trop",
		"U_simc_civ_jean_grun_trop",
		"U_simc_civ_jean_rot_trop",
		"U_simc_civ_jean_weiss_trop",
		"U_simc_civ_jean_khk_trop"
	};
	vest[] = 
	{
		LIST_2("V_BandollierB_blk"),
		LIST_2("V_TacVest_blk"),
		"V_TacVest_oli",
		"V_ChestrigF_blk",
		"V_ChestrigF_rgr",
		"V_PlateCarrierIA1_oli",
		"V_TacChestrig_grn_F",
		"V_CarrierRigKBT_01_Olive_F"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	headgear[] = 
	{
		LIST_5("H_PASGT_basic_green_F"),
		"H_Bandanna_gry",
		"H_Bandanna_cbr",
		"H_Bandanna_khk",
		"H_Bandanna_khk_hs",
		"H_Watchcap_blk",
		"H_Watchcap_camo",
		"H_Booniehat_khk",
		"H_Booniehat_khk_hs",
		"H_Booniehat_oli",
		"H_Booniehat_dgtl",
		"H_Cap_blk",
		"H_Cap_blu",
		"H_Cap_oli",
		"H_Cap_oli_hs",
		"H_Cap_blk_Raven",
		"H_Shemag_olive",
		"lxWS_H_PASGT_goggles_green_F",
		"H_Watchcap_camo_hs",
		"H_Booniehat_mgrn_hs",
		"H_I_Helmet_canvas_Green",
		"H_HelmetIA"
	};
	goggles[] = 
	{
		LIST_15(""),
		"G_Balaclava_blk",
		"G_Bandanna_blk",
		"G_Bandanna_khk",
		"G_Bandanna_shades",
		"G_Squares",
		"G_Spectacles",
		"G_Bandanna_shemag",
		"G_Cigarette",
		"G_Balaclava_blk_lxWS",
		"CUP_G_RUS_Ratnik_Balaclava_Green_3",
		"CUP_G_RUS_Ratnik_Balaclava_Green_4",
		"CUP_PMC_Facewrap_Black",
		"CUP_G_Scarf_Face_Grn",
		"CUP_G_Scarf_Face_Red",
		"CUP_G_TK_RoundGlasses_blk"
	};
	hmd[] = 
	{
		"Aegis_NV_G_Armband_FIA_alt_F"
	};
	primaryWeapon[] = 
	{
		LIST_10("arifle_Mk20_black_F"),
		"arifle_SPAR_01_blk_F",
		"arifle_TRG21_black_F"
	};
	scope[] = 
	{
		LIST_10(""),
		"optic_MRCO"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_8("30Rnd_556x45_Stanag_green")
	};
};

class rm2 : rm 
{
	displayName = "Rifleman (AK)";
	primaryWeapon[] = 
	{
		"arifle_AKM_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_5("30Rnd_762x39_Mag_Green_F")
	};
	backpackItems[] = 
	{
		LIST_5("30Rnd_762x39_Mag_Green_F")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"LMG_03_F"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_4("ACE_200Rnd_556x45_Box_green")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"V_PlateCarrierIA1_dgtl"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_MG3_rail"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_4("CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M")
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
		"hendrix_rpg_1"
	};
	secondaryWeapon[] = 
	{
		"launch_RPG7_F"
	};
	backpackItems[] = 
	{
		LIST_2("CUP_PG7VL_M")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		LIST_10("arifle_Mk20_GL_F"),
		"arifle_TRG21_GL_black_F"
	};
	magazines[] += 
	{
		LIST_1("1Rnd_HE_Grenade_shell"),
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	primaryWeapon[] = 
	{
		"sgun_Mp153_classic_F"
	};
	backpack[] = 
	{
		"B_Kitbag_rgr"
	};
	magazines[] += 
	{
		LIST_5("4Rnd_12Gauge_Slug")
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
		"B_Kitbag_rgr"
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
	uniform[] = 
	{
		LIST_3("U_I_Uniform_01_tanktop_F"),
		"U_BG_Guerilla1_1"
	};
	headgear[] = 
	{
		"H_HelmetCrew_I"
	};
	primaryWeapon[] = 
	{
		"hgun_PDW2000_F"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("30Rnd_9x21_Mag_v2")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"H_PilotHelmetHeli_I",
		"H_PilotHelmetHeli_I_visor_up"
	};
	primaryWeapon[] = 
	{
		"hgun_PDW2000_F"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("30Rnd_9x21_Mag_v2")
	};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	primaryWeapon[] = 
	{
		"srifle_DMR_06_camo_F",
		"srifle_DMR_06_hunter_F"
	};
	scope[] = 
	{
		"optic_MRCO"
	};
	attachment[] = {};
	bipod[] = 
	{
		"bipod_03_F_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_5("20Rnd_Mk14_762x51_Mag")
	};
	backpackItems[] = 
	{
		LIST_5("20Rnd_Mk14_762x51_Mag")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
	};
	class dm2 : rm 
{
	displayName = "Designated Marksman (Hunting rifle)";
	primaryWeapon[] = 
	{
		"CUP_srifle_CZ550_rail"
	};
	scope[] = 
	{
		"optic_KHS_old"
	};
	attachment[] = {};
	bipod[] = 
	{
		"bipod_03_F_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_5("CUP_5Rnd_93x64_CZ550")
	};
	backpackItems[] = 
	{
		LIST_5("CUP_5Rnd_93x64_CZ550")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};