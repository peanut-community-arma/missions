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

class looter : baseMan
{
	displayName = "Looter";
	uniform[] = 
	{
		"U_I_L_Uniform_01_tshirt_olive_F",
		"aegis_guerilla_tshirt_m81",
		"CUP_U_I_GUE_Anorak_03",
		"CUP_U_I_GUE_Woodland1"
	};
	vest[] = 
	{
		LIST_4("V_TacChestrig_oli_F"),
		"aegis_tacvest_grn"
	};
	headgear[] = 
	{
		LIST_4(""),
		"H_Bandanna_khk",
		"CUP_H_FR_BandanaWdl",
		"H_Cap_blk_CMMG",
		"aegis_cap_eaf"
	};
	goggles[] =
	{
		"G_Bandanna_blk"
	};
	backpack[] = 
	{
		LIST_4(""),
		"B_Messenger_Black_F",
		"B_Messenger_Gray_F"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74U"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_13("CUP_30Rnd_545x39_AK_M")
	};
};

class looter_smg : looter
{
	displayName = "Looter (SMG)";
	primaryWeapon[] =
	{
		"CUP_smg_UZI"
	};
	magazines[] =
	{
		"HandGrenade",
		"SmokeShell",
		LIST_13("CUP_32Rnd_9x19_UZI_M")
	};
};

class looter_shot : looter
{
	displayName = "Looter (Shotgun)";
	primaryWeapon[] = 
	{
		"sgun_HunterShotgun_01_F"
	};
	sidearmWeapon[] =
	{
		"hgun_Pistol_heavy_02_F"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_21("2Rnd_12Gauge_Slug"),
		LIST_7("6Rnd_45ACP_Cylinder")
	};
};

class cop : baseMan
{
	displayName = "Cop";
	uniform[] = 
	{
		LIST_5("U_O_GEN_Soldier_F"),
		"U_B_GEN_Commander_F"
	};
	vest[] = 
	{
		"V_TacVest_gen_F"
	};
	headgear[] = 
	{
		LIST_5("H_MilCap_gen_F"),
		"H_Beret_gen_F"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_MP5A5"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_13("CUP_30Rnd_9x19_MP5")
	};
};

class ldf_rm : baseMan
{
	displayName = "LDF Rifleman";
	uniform[] = 
	{
		"U_I_E_Uniform_01_shortsleeve_F",
		"U_I_E_Uniform_01_F"
	};
	vest[] = 
	{
		"V_CarrierRigKBT_01_light_EAF_F"
	};
	headgear[] = 
	{
		LIST_3("H_HelmetHBK_headset_F"),
		LIST_2("H_HelmetHBK_chops_F")
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("B_AssaultPack_eaf_F")
	};
	primaryWeapon[] = 
	{
		"arifle_MSBS65_F",
		"arifle_MSBS65_camo_F"
	};
	scope[] = 
	{
		"optic_ico_01_f"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_9("30Rnd_65x39_caseless_msbs_mag_Tracer")
	};
};

class ldf_ar : ldf_rm 
{
	displayName = "LDF Automatic Rifleman";
	primaryWeapon[] = 
	{
		"LMG_Mk200_black_F"
	};
	scope[] =
	{
		"optic_Aco"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("200Rnd_65x39_cased_Box_Red")
	};
	backpack[] = 
	{
		"B_AssaultPack_eaf_F"
	};
};

class ldf_gren : ldf_rm 
{
	displayName = "LDF Grenadier";
	primaryWeapon[] = 
	{
		"arifle_MSBS65_GL_F"
	};
	magazines[] += 
	{
		LIST_3("1Rnd_HE_Grenade_shell")
	};
};

class nato_rm : baseMan
{
	displayName = "NATO Rifleman";
	uniform[] = 
	{
		"rhs_uniform_vkpo_gloves",
		"rhs_uniform_vkpo_gloves_alt"
	};
	vest[] = 
	{
		LIST_4("rhs_6b23_6sh116"),
		"rhs_6b23_6sh116_vog"
	};
	headgear[] = 
	{
		LIST_3("rhs_6b7_1m_emr"),
		LIST_2("rhs_6b7_1m_emr_ess")
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("rhs_rk_sht_30_emr"),
		"rhs_tortila_emr"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_ak74m"
	};
	scope[] = 
	{
		"rhs_acc_1p63"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_7("rhs_30Rnd_545x39_7N10_AK")
	};
};

class NATO_ar : ldf_rm 
{
	displayName = "NATO Automatic Rifleman";
	primaryWeapon[] = 
	{
		"rhs_weap_rpk74m"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("pca_mag_45Rnd_545X39_RPK_Black_Mixed_7N10")
	};
};

class nato_gren : ldf_rm 
{
	displayName = "NATO Grenadier";
	primaryWeapon[] = 
	{
		"rhs_weap_pkp"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_3("rhs_100Rnd_762x54mmR")
	};
};