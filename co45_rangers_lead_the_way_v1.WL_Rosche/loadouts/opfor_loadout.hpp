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
		"Aegis_U_O_Luchnik_taiga_F",
		"Aegis_U_O_Luchnik_RolledUp_taiga_F"
	};
	vest[] = 
	{
		"Aegis_V_OCarrierLuchnik_Lite_F",
		"Aegis_V_OCarrierLuchnik_Lite_grn_F",
		"Aegis_V_OCarrierLuchnik_CQB_grn_F",
		"Aegis_V_OCarrierLuchnik_CQB_F"
	};
	headgear[] = 
	{
		LIST_3("H_HelmetLuchnik_cover_rutaiga_F"),
		"Aegis_H_MilCap_tachs_taiga_F",
		"H_Booniehat_taiga_hs",
		"H_HelmetLuchnik_cover_grn_F",
		"H_HelmetLuchnik_headset_grn_F",
		"H_HelmetLuchnik_olive_F"
	};
	goggles[] = 
	{
		LIST_10(""),
		"G_Balaclava_oli",
		"G_Bandanna_oli",
		"CUP_G_RUS_Ratnik_Balaclava_Green_1"
	};
	hmd[] = 
	{
		"hendrix_armband_bushlat_th_NVG_w"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12_545_F"
	};
	scope[] = 
	{
		LIST_2(""),
		"Aegis_optic_1p87"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_9("30Rnd_545x39_AK12_Mag_F")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"Aegis_arifle_RPK12_545_F"
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
		"Aegis_V_OCarrierLuchnik_CQB_F",
		"Aegis_V_OCarrierLuchnik_CQB_grn_F"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg_top_rail"
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
		"B_FieldPack_oli"
	};
	secondaryWeapon[] = 
	{
		"launch_RPG32_green_F"
	};
	secondaryAttachments[] = 
	{
		""
	};
	backpackItems[] = 
	{
		LIST_2("RPG32_F"),
		"RPG32_HE_F"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"Aegis_V_OCarrierLuchnik_Lite_F",
		"Aegis_V_OCarrierLuchnik_Lite_grn_F",
		"Aegis_V_OCarrierLuchnik_GL_grn_F",
		"Aegis_V_OCarrierLuchnik_CQB_grn_F"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12_GL_545_F"
	};
	magazines[] += 
	{
		LIST_5("CUP_1Rnd_HE_M203"),
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_FieldPack_oli"
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
		"B_FieldPack_oli"
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
	vest[] = 
	{
		"Aegis_V_OCarrierLuchnik_grn_F"
	};
	headgear[] = 
	{
		"H_Tank_black_F"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12U_545_tan_F",
		"arifle_AK12U_545_F"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("30Rnd_545x39_AK12_Mag_F")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	vest[] = 
	{
		"Aegis_V_OCarrierLuchnik_grn_F"
	};
	headgear[] = 
	{
		"CUP_H_RUS_ZSH_Shield_Up",
		"CUP_H_RUS_ZSH_Shield_Down"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12U_545_tan_F",
		"arifle_AK12U_545_F"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("30Rnd_545x39_AK12_Mag_F")
	};
};