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
	displayName = "Rifleman (FIA)";
	uniform[] = 
	{
		LIST_2("U_BG_Guerilla1_1"),
		"U_BG_Guerilla1_2_F",
		"U_BG_Guerilla2_3",
		"U_BG_Guerilla3_1",
		LIST_2("U_BG_leader")
	};
	vest[] = 
	{
		"V_TacVest_khk",
		"V_TacVest_camo"
	};
	headgear[] = 
	{
		"H_Watchcap_blk",
		"H_Shemag_olive",
		"H_ShemagOpen_tan",
		"pca_m97_pasgt_wdl_1"
	};
	goggles[] =
	{
		"G_Bandanna_khk",
		"rhsusf_shemagh2_od",
		LIST_3("")
	};
	primaryWeapon[] = 
	{
		"arifle_TRG20_F"
	};
	scope[] = 
	{
		"optic_aco_grn"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_9("30Rnd_556x45_Stanag_red")
	};
};

class mlt : rm
{
	displayName = "backwards compat"
};


class mg : rm 
{
	displayName = "Machinegunner";
	primaryWeapon[] = 
	{
		"LMG_Mk200_F"
	};
	backpack[] = 
	{
		"B_FieldPack_oli"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("200Rnd_65x39_cased_Box_Tracer")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		LIST_3(""),
		"launch_NLAW_F"
	};
	backpack[] = 
	{
		"B_FieldPack_oli"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"arifle_TRG21_GL_F"
	};
	magazines[] += 
	{
		LIST_2("rhs_mag_M441_HE"),
		LIST_2("rhs_mag_m714_White")
	};
};

class rm_aa : rm
{
	displayName = "Rifleman (AA)"
	secondaryWeapon[] =
	{
		"launch_B_Titan_F"
	};
	backpack[] = 
	{
		"B_FieldPack_oli"
	};
};

class n_rm : rm
{
	displayName = "NATO Rifleman";
	uniform[] = 
	{
		"CUP_U_CRYE_G3C_MC_V2",
		"U_B_CombatUniform_mcam",
		"U_B_CombatUniform_mcam_vest"
	};
	vest[] = 
	{
		"V_CarrierRigKBT_01_light_Coyote_F"
	};
	headgear[] = 
	{
		"H_HelmetSpecB_mcamo"
	};
	hmd[] =
	{
		"rhsusf_ANPVS_15"
	};
	backpack[] = 
	{
		LIST_2("B_AssaultPack_mcamo"),
		LIST_4("")
	};
	primaryWeapon[] = 
	{
		"arifle_MX_F"
	};
	scope[] = 
	{
		"optic_hamr"
	};
	attachments[] =
	{
		"cup_acc_anpeq_15"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_9("30Rnd_65x39_caseless_mag")
	};
};

class n_ar : n_rm
{
	displayName = "NATO Autorifle";
	backpack[] = 
	{
		"B_AssaultPack_mcamo"
	};
	primaryWeapon[] = 
	{
		"arifle_MX_SW_F"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_7("100Rnd_65x39_caseless_khaki_mag")
	};
};

class n_lat : n_rm 
{
	displayName = "NATO (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_NLAW"
	};
};

class n_crew : n_rm 
{
	displayName = "NATO (Crew)";
	headgear[] =
	{
		"H_HelmetCrew_B"
	};
	vest[] =
	{
		"V_TacVest_khk"
	};
	primaryWeapon[] =
	{
		"SMG_01_F"
	};
	scope[] =
	{
		"optic_aco_smg"
	};
	magazines[] =
	{
		"HandGrenade",
		"SmokeShell",
		LIST_7("30Rnd_45ACP_Mag_SMG_01")
	};
};

class n_hp : n_rm 
{
	displayName = "NATO (Heli Pilot)";
	headgear[] =
	{
		"H_PilotHelmetHeli_B"
	};
};

class ctrg : n_rm
{
	displayName = "CTRG Operative";
	uniform[] =
	{
		LIST_2("U_B_CTRG_Soldier_Arid_F"),
		LIST_2("U_B_CTRG_Soldier_2_Arid_F"),
		"U_B_CTRG_Soldier_3_Arid_F"
	};
	vest[] =
	{
		"V_CarrierRigKBT_01_light_ctrg_F"
	};
	headgear[] =
	{
		"H_HelmetB_TI_arid_F"
	};
	goggles[] =
	{
		"G_Balaclava_TI_G_blk_F",
		"G_Balaclava_TI_blk_F"
	};
	hmd[] =
	{
		"NVGogglesB_gry_F"
	};
	backpack[] = {};
	primaryWeapon[] =
	{
		"CUP_arifle_HK416_Black"
	};
	scope[] = 
	{
		"optic_erco_blk_f"
	};
	attachments[] =
	{
		"acc_pointer_ir"
	};
	silencer[] =
	{
		"muzzle_snds_m"
	};
	sidearmWeapon[] =
	{
		"hgun_P07_blk_F"
	};
	magazines[] =
	{
		"SmokeShell",
		"HandGrenade",
		LIST_2("16Rnd_9x21_Mag"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_PMAG")
	};
};