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
		LIST_5("Atlas_U_UniformBDU_03_reservist_F"),
		LIST_5("Atlas_U_UniformBDU_04_reservist_F"),
		"U_I_E_Uniform_01_sweater_F"
	};
	vest[] = 
	{
		LIST_2("Aegis_V_CarrierRigKBT_01_recon_EAF_F"),
		"Aegis_V_CarrierRigKBT_01_cqb_EAF_F"
	};
	headgear[] = 
	{
		LIST_5("H_HelmetHBK_F"),
		LIST_3("H_HelmetHBK_chops_F"),
		LIST_3("H_HelmetHBK_ear_F"),
		LIST_3("H_HelmetHBK_headset_F"),
		LIST_3("Atlas_H_PASGT_Cover_I_EAF_R_F"),
		"H_Booniehat_eaf_hs",
		"H_Cap_eaf_hs_F",
		"Aegis_H_Milcap_nohs_eaf_F",
		"H_Cap_eaf_F",
		"Atlas_H_FieldCap_hs_pantera",
		"Atlas_H_FieldCap_pantera",
		"H_Booniehat_eaf"
	};
	goggles[] = 
	{
		LIST_10(""),
		"G_Balaclava_blk",
		"G_Bandanna_blk",
		"G_Spectacles",
		"CUP_G_ESS_RGR"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_ACR_Bushmaster_blk_556"
	};
	attachment[] = 
	{
		LIST_2(""),
		"pca_flashlight_sf"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGO",
		"SmokeShell",
		LIST_6("CUP_30Rnd_556x45_Stanag")
	};
};

class rm2 : rm 
{
	displayName = "Rifleman (AK)";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK101_railed"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGO",
		"SmokeShell",
		LIST_6("CUP_30Rnd_556x45_AK")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"B_Kitbag_eaf_F"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_m249_pip3"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGO",
		"SmokeShell",
		LIST_5("CUP_200Rnd_TE4_Red_Tracer_556x45_M249")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"Aegis_V_CarrierRigKBT_01_cqb_EAF_F"
	};
	backpack[] = 
	{
		"B_Kitbag_eaf_F"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg_top_rail"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGO",
		"SmokeShell",
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M")
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
		"ptv_M3_OD"
	};
	secondaryWeapon[] = 
	{
		"launch_MRAWS_green_F"
	};
	secondaryAttachments[] = 
	{
		""
	};
	backpackItems[] = 
	{
		LIST_2("CUP_MAAWS_HEAT_M"),
		"CUP_MAAWS_HEDP_M"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] =
	{
		"V_CarrierRigKBT_01_heavy_EAF_F",
		"V_CarrierRigKBT_01_light_EAF_F"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_ACR_EGLM_blk_556"
	};
	magazines[] += 
	{
		LIST_1("CUP_1Rnd_HE_M203"),
		LIST_2("1Rnd_Smoke_Grenade_shell"),
		LIST_2("ACE_40mm_Flare_red")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_Kitbag_eaf_F"
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
		"B_Kitbag_eaf_F"
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
		"H_HelmetCrew_I"
	};
	vest[] = 
	{
		"V_CarrierRigKBT_01_EAF_F"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK102_railed"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGO",
		"SmokeShell",
		LIST_3("CUP_30Rnd_556x45_AK")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"H_PilotHelmetHeli_O",
		"H_PilotHelmetHeli_O_visor_up"
	};
	vest[] = 
	{
		"V_CarrierRigKBT_01_EAF_F"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK102_railed"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGO",
		"SmokeShell",
		LIST_3("CUP_30Rnd_556x45_AK")
	};
};