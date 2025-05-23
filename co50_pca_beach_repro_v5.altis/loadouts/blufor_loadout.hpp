class baseMan 
{
	displayName = "Unarmed";
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {};
	hmd[] = {};
	faces[] = {};
	insignias[] = {};
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	magazines[] = {};
	items[] = {};
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	backpackItems[] = {};
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"aegis_guerilla_garb_m81",
		"aegis_guerilla_jacket_m81",
		"aegis_sweater_grn",
		"aegis_guerilla_tshirt_m81",
		"aegis_guerilla_tshirt_m81_alt",
		"aegis_jacket_blu",
		"aegis_jacket_gry",
		"aegis_jacket_maroon",
		
		
		"CUP_I_B_PARA_Unit_2",
		"CUP_I_B_PARA_Unit_5",
		"CUP_I_B_PARA_Unit_6",
		"CUP_I_B_PARA_Unit_7",
		"CUP_I_B_PARA_Unit_8",
		"CUP_I_B_PARA_Unit_9",
		"CUP_I_B_PARA_Unit_10"
		
		
	};
	vest[] = 
	{
		"simc_vest_pasgt_lbv_od3",
		"simc_vest_pasgt_lbv_alt_od3",
		"simc_vest_pasgt_lbv_holster_od3",
		"simc_vest_pasgt_lbv_holster_alt_od3",
		"simc_vest_pasgt_lbv_lc2_od3",
		"simc_vest_pasgt_lbv_lc2_alt_od3",
		"simc_vest_pasgt_lc1_od3",
		"simc_vest_pasgt_lc1_combat_od3",
		"simc_vest_pasgt_lc1_etool_od3",
		"simc_vest_pasgt_lc1_holster_od3",
		"simc_vest_pasgt_lc2_od3",
		"simc_vest_pasgt_lc2_alt_od3",
		"simc_vest_pasgt_lc2_holster_od3"
		
	};
	headgear[] = 
	{
	"usm_helmet_m1v2_wdl",
	"usm_helmet_m1_wdl"
	};
	backpack[] = 
	{
		"CUP_B_AlicePack_OD"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_l1a1_wood"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_13("rhs_mag_20Rnd_762x51_m80_fnfal")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_mag_20Rnd_762x51_m80_fnfal")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"simc_vest_pasgt_lc2_saw_od3"
	};
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
	primaryWeapon[] = 
	{
		"hlc_lmg_mg3"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("CUP_15Rnd_9x19_M9"),
		LIST_4("hlc_100Rnd_762x51_M_MG3")
	};
	backpackItems[] = 
	{
		LIST_8("hlc_100Rnd_762x51_M_MG3")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
	backpackItems[] += 
	{
		LIST_7("hlc_100Rnd_762x51_M_MG3")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_m72a7"
	};
	backpackItems[] = 
	{
		"rhs_weap_m72a7"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"simc_vest_pasgt_lc1_gren_od3"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_M320"
	};
	backpackItems[] = 
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : gren 
{
	displayName = "Team Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_mag_20Rnd_762x51_m80_fnfal"),
		LIST_2("rhs_mag_20Rnd_762x51_m62_fnfal"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("SmokeShell")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	
	backpackItems[] =
	{
		LIST_2("rhs_mag_20Rnd_762x51_m62_fnfal"),
		LIST_13("rhs_mag_M441_HE"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	backpackItems[] =
	{
		LIST_2("rhs_mag_20Rnd_762x51_m62_fnfal"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
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
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class mmg : rm
{
	displayName = "Medium Machine Gunner";
	vest[] = 
	{
		"simc_vest_pasgt_lc2_saw_od3"
	};
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_fnmag"
	};
	scope[] = 
	{
		"cup_optic_susat"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("CUP_15Rnd_9x19_M9"),
		LIST_3("rhsusf_100Rnd_762x51")
	};
	backpackItems[] = 
	{
		LIST_6("rhsusf_100Rnd_762x51")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
	backpackItems[] = 
	{
		LIST_8("rhsusf_100Rnd_762x51")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"usm_pack_alice"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_Mk153Mod0"
	};
	secondaryAttachments[] = 
	{
		"cup_optic_smaw_scope"
	};
	magazines[] += 
	{
		LIST_10("CUP_SMAW_Spotting")
	};
	backpackItems[] = 
	{
		LIST_2("rhs_mag_smaw_HEDP"),
		"rhs_mag_smaw_HEAA"
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"usm_pack_alice"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_mag_smaw_HEDP"),
		"rhs_mag_smaw_HEAA"
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class eng : rm 
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	backpack[] = 
	{
		"CUP_B_AlicePack_OD"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	magazines[] += 
	{
		LIST_3("CUP_15Rnd_9x19_M9")
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_4("rhsusf_m112_mag"),
		LIST_2("rhsusf_m112x4_mag")
	};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	primaryWeapon[] = 
	{
		"CUP_arifle_L86A2"
	};
	scope[] = 
	{
		"cup_optic_susat"
	};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("CUP_15Rnd_9x19_M9"),
		LIST_9("rhs_mag_30Rnd_556x45_M855_Stanag")
	};
	backpackItems[] = 
	{
		LIST_12("rhs_mag_30Rnd_556x45_M855_Stanag")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	primaryWeapon[] = 
	{
		"CUP_smg_M3A1_blk"
	};
	vest[] = 
	{
		"rhsusf_spcs_ucp_crewman"
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
		LIST_2("rhs_mag_m67"),
		LIST_9("CUP_30Rnd_45ACP_M3A1_BLK_M")
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
		"CUP_hgun_M9"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("CUP_15Rnd_9x19_M9"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"rhssaf_zrak_rd7j"
	};
};

class hp : rm 
{
	displayName = "Helicopter Pilot";
	vest[] = 
	{
		"rhsusf_spcs_ucp_crewman"
	};
	headgear[] = 
	{
		"rhsusf_hgu56p"
	};
		primaryWeapon[] = 
	{
		"CUP_smg_M3A1_blk"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("CUP_30Rnd_45ACP_M3A1_BLK_M"),
		LIST_3("CUP_15Rnd_9x19_M9"),
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
		LIST_2("rhs_mag_m67"),
		LIST_9("rhs_mag_20Rnd_762x51_m80_fnfal"),
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
		LIST_2("rhs_mag_m67"),
		LIST_9("rhs_mag_20Rnd_762x51_m80_fnfal"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};