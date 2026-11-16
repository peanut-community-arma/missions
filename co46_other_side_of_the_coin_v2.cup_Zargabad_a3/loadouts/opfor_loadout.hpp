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
		"CUP_U_B_USArmy_ACU_Gloves_UCP",
		"CUP_U_B_USArmy_ACU_Kneepad_Gloves_UCP",
		"CUP_U_B_USArmy_ACU_Kneepad_Rolled_Gloves_UCP",
		"CUP_U_B_USArmy_ACU_Kneepad_Rolled_UCP",
		"CUP_U_B_USArmy_ACU_Kneepad_UCP",
		"CUP_U_B_USArmy_ACU_Rolled_Gloves_UCP",
		"CUP_U_B_USArmy_ACU_Rolled_UCP",
		"CUP_U_B_USArmy_ACU_UCP"
	};
	vest[] = 
	{
		LIST_2("CUP_V_B_IOTV_UCP_Rifleman_Deltoid_USArmy"),
		LIST_2("CUP_V_B_IOTV_UCP_Rifleman_USArmy"),
		"CUP_V_B_IOTV_UCP_Empty_USArmy",
		"CUP_V_B_IOTV_UCP_SL_USArmy",
		"CUP_V_B_IOTV_UCP_TL_USArmy"
	};
	headgear[] = 
	{
		LIST_3("CUP_H_USArmy_MICH_UCP"),
		LIST_2("CUP_H_USArmy_MICH_GCOVERED_UCP"),
		LIST_2("CUP_H_USArmy_MICH_GCOVERED_Headset_UCP"),
		"CUP_H_USArmy_MICH_ESS_UCP",
		"CUP_H_USArmy_MICH_ESS_Headset_UCP",
		"CUP_H_USArmy_MICH_Headset_UCP",
		"CUP_H_USArmy_Boonie_hs_UCP",
		"CUP_H_USArmy_Boonie_UCP"
	};
	goggles[] = 
	{
		LIST_10(""),
		"G_Shades_Green",
		"G_Spectacles",
		"G_Cigarette"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M4A1_black"
	};
	scope[] = 
	{
		"CUP_optic_HoloBlack"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_6("CUP_30Rnd_556x45_Stanag")
	};
};


class rm2 : rm
{
	displayName = "Bodyguards";
	uniform[] = 
	{
		"U_C_Man_casual_8_F",
		"U_C_Man_casual_7_F",
		"U_C_Man_casual_2_F",
		"U_lxWS_ION_Casual3",
		"U_simc_civ_jean_blau_dunkel_tuck",
		"U_simc_civ_jean_blau_tuck",
		"U_simc_civ_jean_grun_tuck",
		"U_simc_civ_jean_rot_ligt_tuck",
		"U_simc_civ_jean_weiss_dunkel_tuck_trop",
		"U_simc_civ_jean_khk_tuck_trop"
	};
	vest[] = 
	{
		"V_Simc_vest_fauf_2"
	};
	headgear[] = 
	{
		LIST_7(""),
		"H_Cap_oli",
		"CUP_H_PMC_EP_Headset",
		"H_Cap_tan",
		"H_Booniehat_tan",
		"Aegis_H_MilCap_nohs_blk"
	};
	goggles[] = 
	{
		LIST_5(""),
		"G_Aviator",
		"G_Bandanna_aviator",
		"G_Bandanna_beast",
		"G_Bandanna_blk",
		"G_Bandanna_shades",
		"G_Shades_Blue",
		"G_Spectacles",
		"G_Spectacles_Tinted",
		"G_Squares_Tinted",
		"G_Cigarette",
		"G_Shemag_oli",
		"G_Shemag_red",
		"G_Shemag_shades",
		"Aegis_G_Condor_EyePro_F",
		"CUP_RUS_Balaclava_blk",
		"CUP_Beard_Black",
		"CUP_G_ESS_BLK_Facewrap_Black",
		"CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset",
		"CUP_PMC_Facewrap_Black",
		"CUP_G_Scarf_Face_Grn",
		"CUP_G_Scarf_Face_Red",
		"CUP_G_Scarf_Face_Tan",
		"CUP_G_Oakleys_Drk"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_MP5A5"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_5("CUP_30Rnd_9x19_MP5")
	};
};

class rm3 : rm
{
	displayName = "Government Forces";
	uniform[] = 
	{
		LIST_2("U_Simc_bdu_erla_blench_desu_trop"),
		LIST_2("U_Simc_bdu_laat_desu_blench_trop"),
		"U_Simc_bdu_erla_desu_tee"
	};
	vest[] = 
	{
		"V_Simc_vest_pasgt_erdl_alice_alt",
		"V_Simc_vest_pasgt_erdl_alice",
		"V_Simc_vest_pasgt_erdl_alice_45_ligt"
	};
	headgear[] = 
	{
		"H_Simc_pasgt_desu",
		"H_Simc_pasgt_desu_SWDG"
	};
	goggles[] = 
	{
		LIST_10(""),
		"G_Aviator",
		"G_Bandanna_aviator",
		"G_Bandanna_blk",
		"G_Shades_Black",
		"G_Spectacles",
		"G_Squares_Tinted",
		"G_Spectacles_Tinted",
		"G_Cigarette",
		"CUP_Beard_Black",
		"CUP_G_TK_RoundGlasses_blk"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_5("CUP_30Rnd_762x39_AK47_M")
	};
};

class ar1 : rm
{
	displayName = "Government Forces (AR)";
	uniform[] = 
	{
		LIST_2("U_Simc_bdu_erla_blench_desu_trop"),
		LIST_2("U_Simc_bdu_laat_desu_blench_trop"),
		"U_Simc_bdu_erla_desu_tee"
	};
	vest[] = 
	{
		"V_Simc_vest_pasgt_erdl_alice_alt",
		"V_Simc_vest_pasgt_erdl_alice",
		"V_Simc_vest_pasgt_erdl_alice_45_ligt"
	};
	headgear[] = 
	{
		"H_Simc_pasgt_desu",
		"H_Simc_pasgt_desu_SWDG"
	};
	goggles[] = 
	{
		LIST_10(""),
		"G_Aviator",
		"G_Bandanna_aviator",
		"G_Bandanna_blk",
		"G_Shades_Black",
		"G_Spectacles",
		"G_Squares_Tinted",
		"G_Spectacles_Tinted",
		"G_Cigarette",
		"CUP_Beard_Black",
		"CUP_G_TK_RoundGlasses_blk"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_45"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_4("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] =
	{
		"CUP_V_B_IOTV_UCP_SAW_USArmy"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_m249_pip2"
	};
	backpack[] = 
	{
		"CUP_B_US_IIID_UCP"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_100Rnd_TE4_Red_Tracer_556x45_M249")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"CUP_V_B_IOTV_UCP_MG_USArmy"
	};
	backpack[] = 
	{
		"CUP_B_US_IIID_UCP"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_M240_B"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_3("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_M136"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"CUP_B_US_IIID_UCP"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_Mk153Mod0"
	};
	backpackItems[] = 
	{
		LIST_2("CUP_SMAW_HEAA_M")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] =
	{
		"CUP_V_B_IOTV_UCP_Grenadier_USArmy"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M4A1_BUIS_GL"
	};
	magazines[] += 
	{
		LIST_2("CUP_1Rnd_HE_M203"),
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"CUP_B_US_IIID_UCP"
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
		"CUP_B_US_IIID_UCP"
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
		"CUP_H_CVC"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M4A1_black"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_30Rnd_556x45_Stanag")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"H_PilotHelmetHeli_B",
		"H_PilotHelmetHeli_B_visor_up"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M4A1_black"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_30Rnd_556x45_Stanag")
	};
};