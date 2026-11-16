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
	//ardistani airborne
	displayName = "Rifleman";
	uniform[] = 
	{
		LIST_3("Atlas_U_I_Afghanka_01_ardi_full_F"),
		"Atlas_U_I_Afghanka_01_ardi_half_F",
		"Atlas_U_I_Afghanka_02_ardi_half_F",
		"Atlas_U_I_Afghanka_02_ardi_full_F"
	};
	vest[] = 
	{
		LIST_3("Atlas_V_OCarrierGora_CQB_ardi_F"),
		"Atlas_V_OCarrierGora_CQB_khk_F"
	};
	headgear[] = 
	{
		LIST_3("H_HelmetLuchnik_cover_ardi_F"),
		"H_HelmetLuchnik_cover_khk_F"
	};
	goggles[] = 
	{
		"CUP_G_RUS_Ratnik_Balaclava_Green_1",
		"CUP_RUS_Balaclava_rgr",
		"CUP_RUS_Balaclava_tan",
		"G_Bandanna_tan",
		"G_Bandanna_khk",
		"CUP_G_ESS_KHK_Facewrap_Tan",
		"CUP_G_ESS_RGR_Facewrap_Tropical",
		"CUP_G_PMC_Facewrap_Tan_Glasses_Ember",
		"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark",
		"ptv_shemagh_g",
		"ptv_shemagh_t",
		LIST_10("")
	};
	hmd[] = 
	{
		"Goggles",
		"Aegis_Goggles_Cover_F",
		"Goggles_grn_F",
		"Aegis_Goggles_Cover_grn_F",
		LIST_4("")
	};
	primaryWeapon[] = 
	{
		"arifle_VelkoR5_lxWS",
		"Aegis_arifle_VelkoR5_sand"
	};
	scope[] = 
	{
		"Aegis_optic_1p87",
		"optic_ACO_grn",
		"Aegis_optic_ICO",
		"optic_Holosight_blk_F",
		""
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_11("35Rnd_556x45_Velko_reload_tracer_yellow_lxWS")
	};
};

class lb : rm 
{
	displayName = "Rifleman (Loadbearing)";
	backpack[] = 
	{
		"B_FieldPack_ardi"
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_L110A1"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_9("CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249")
	};
};

class mg : lb 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg_top_rail"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M")
	};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	primaryWeapon[] = 
	{
		"Aegis_srifle_SVD_blk_f"
	};
	scope[] = 
	{
		"optic_DMS_weathered_F"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_15("Aegis_10Rnd_762x54_SVD_Yellow_Mag_F")
	};
};

class aar : lb 
{
	displayName = "Assistant Autorifleman";
	backpackItems[] += 
	{
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M"),
		LIST_4("CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249")
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

class rm_mat : lb 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"B_FieldPack_ardi"
	};
	secondaryWeapon[] = 
	{
		"Aegis_launch_RPG7M_F"
	};
	backpackItems[] = 
	{
		LIST_2("CUP_PG7VL_M"),
		"CUP_OG7_M"
	};
};

class rm_aa : rm 
{
	displayName = "Rifleman (AA)";
	secondaryWeapon[] = 
	{
		"CUP_launch_Igla"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"arifle_VelkoR5_GL_lxWS"
	};
	magazines[] += 
	{
		LIST_3("1Rnd_HE_Grenade_shell"),
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class medic : lb 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_FieldPack_ardi"
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

class engineer : lb 
{
	displayName = "Engineer";
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
		"H_HelmetCrew_I_I"
	};
};

class pilot : rm 
{
	displayName = "Pilot";
	headgear[] = 
	{
		"H_PilotHelmetHeli_O_visor_up"
	};
};

class officer : rm 
{
	displayName = "Officer";
	headgear[] = 
	{
		"H_Beret_grn"
	};
};