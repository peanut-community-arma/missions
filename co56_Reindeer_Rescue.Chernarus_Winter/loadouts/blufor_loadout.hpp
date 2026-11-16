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
	items[] = {};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
		"ItemGPS"
	};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		LIST_1("usp_pcu_g3c_kp_mx_mcalp"),
		LIST_1("usp_pcu_g3c_kp_or_mcalp"),
		LIST_1("usp_pcu_g3c_mx_mcalp"),
		LIST_1("milgp_u_pcu_g3_field_pants_mcalpine")
	};
	vest[] = 
	{
		"pca_mbav_rifleman_wht"
	};
	hmd[] = 
	{
		"NVGogglesB_gry_F"
	};
	headgear[] = 
	{
		"usp_opscore_mt_cover_ct_mcalp",
		"usp_opscore_mt_cover_mcalp"
	};
	backpack[] = 
	{
		"pca_eagle_a3_wht"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_acr_iar_blk$",
		"CUP_arifle_ACRC_blk_68"
	};
	scope[] = 
	{
		"optic_mrco"
	};
	attachment[] = 
	{
		"rhsusf_acc_anpeq15side_bk"
	};
	silencer[] = 
	{
		"ptv_acc_rotexv"
	};
	bipod[] = 
	{
		"rhsusf_acc_rvg_blk"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint"),
		LIST_4("ACE_Chemlight_HiRed")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_15("pca_mag_30Rnd_556x45_M995_PMAG_Blk")
	};
	backpackItems[] = 
	{
		LIST_4("pca_mag_30Rnd_556x45_M995_PMAG_Blk")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"pca_mbav_mg_wht"
	};
	primaryWeapon[] = 
	{
		"sps_weap_kac_lamg_hg_blk"
	};
	bipod[] = 
	{
		"cup_bipod_vltor_modpod_black"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Phantom"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_18Rnd_9x19_Phantom"),
		LIST_3("sps_200Rnd_556x45_M995_Mixed_KAC_Box")
	};
	backpackItems[] = 
	{
		LIST_5("sps_200Rnd_556x45_M995_Mixed_KAC_Box")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_4("sps_200Rnd_556x45_M995_Mixed_KAC_Box")
	};
	linkedItems[] += 
	{
		"Rangefinder"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"pca_weap_m136cs"
	};
	backpackItems[] += 
	{
		LIST_1("pca_weap_m136cs"),
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_acr_iar_m203_blk$"
	};
	backpackItems[] += 
	{
		LIST_31("rhs_mag_M441_HE"),
		LIST_4("rhs_mag_m714_White")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_acr_iar_m203_blk$"
	};
	backpackItems[] =
	{
		LIST_2("pca_mag_30Rnd_556x45_M856A1_PMAG_Blk"),
		LIST_31("rhs_mag_M441_HE"),
		LIST_12("ACE_40mm_Flare_ir"),
		LIST_2("rhs_mag_m714_White"),
		LIST_2("rhs_mag_m713_Red"),
		LIST_2("rhs_mag_m715_Green")
	};
	linkedItems[] += 
	{
		"Rangefinder"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Phantom"
	};
	magazines[] += 
	{
		LIST_2("CUP_18Rnd_9x19_Phantom")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_13("rhs_mag_M441_HE"),
		LIST_12("ACE_40mm_Flare_ir"),
		LIST_2("rhs_mag_m715_Green"),
		LIST_2("rhs_mag_m714_White"),
		LIST_2("rhs_mag_m713_Red"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class fac : sl 
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		LIST_13("rhs_mag_M441_HE"),
		LIST_12("ACE_40mm_Flare_ir"),
		LIST_2("rhs_mag_m715_Green"),
		LIST_2("rhs_mag_m714_White"),
		LIST_2("rhs_mag_m713_Red"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("Laserbatteries"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] += 
	{
		"Laserdesignator_01_khk_F"
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	sidearmWeapon[] = 
	{
		"CUP_hgun_Phantom"
	};
	magazines[] += 
	{
		LIST_2("CUP_18Rnd_9x19_Phantom")
	};
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

class hp : rm 
{
	displayName = "Helicopter Pilot";
	vest[] = 
	{
		"pca_mbav_light_wht"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_acr_sbr_blk$"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Phantom"
	};
	headgear[] = 
	{
		"rhsusf_hgu56p_visor_black",
		"rhsusf_hgu56p_visor_mask_black"
	};
	magazines[] += 
	{
		LIST_2("CUP_18Rnd_9x19_Phantom")
	};
};

class sn : rm 
{
	displayName = "Sniper";
	primaryWeapon[] = 
	{
		"CUP_srifle_G22_blk"
	};
	scope[] = 
	{
		"cup_optic_leupoldmk4_25x50_lrt_pip"
	};
	bipod[] = 
	{
		"cup_bipod_vltor_modpod_black"
	};
	silencer[] = 
	{
		"cup_muzzle_snds_awm"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Phantom"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_18Rnd_9x19_Phantom"),
		LIST_15("CUP_5Rnd_762x67_G22")
	};
	backpackItems[] = 
	{
		LIST_15("CUP_5Rnd_762x67_G22"),
		"optic_tws"
	};
};

class sp : rm 
{
	displayName = "Spotter";
	primaryWeapon[] = 
	{
		"CUP_srifle_M14_DMR"
	};
	scope[] = 
	{
		"cup_optic_sb_3_12x50_pmii"
	};
	bipod[] = 
	{
		"cup_bipod_vltor_modpod_black"
	};
	silencer[] = 
	{
		"muzzle_snds_b"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Phantom"
	};
	items[] += 
	{
		"ACRE_PRC148",
		"optic_tws"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_18Rnd_9x19_Phantom"),
		LIST_15("ACE_20Rnd_762x51_M993_AP_Mag")
	};
	backpackItems[] = 
	{
		LIST_10("ACE_20Rnd_762x51_M993_AP_Mag")
	};
};