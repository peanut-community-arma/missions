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
		"CUP_U_B_GER_Flecktarn_5",
		"CUP_U_B_GER_Flecktarn_6",
		"CUP_U_B_GER_Flecktarn_7",
		"CUP_U_B_GER_Flecktarn_8"
	};
	vest[] = 
	{
		LIST_10("CUP_V_B_GER_PVest_Fleck_RFL_LT"),
		"CUP_V_B_GER_PVest_Fleck_TL_LT",
	};
	headgear[] = 
	{
		LIST_3("CUP_H_Ger_M92_Cover"),
		LIST_2("CUP_H_Ger_M92_Cover_GG_CF"),
		LIST_2("CUP_H_Ger_M92_Cover_GG_CB"),
		"CUP_H_Ger_Boonie2_Flecktarn"
	};
	goggles[] = 
	{
		LIST_15(""),
		"G_Balaclava_Flecktarn",
		"G_Balaclava_blk",
		"G_Bandanna_blk",
		"G_Shades_Blue"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G36A"
	};
	scope[] = 
	{
		"CUP_optic_G36DualOptics_3D"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_9("CUP_30Rnd_556x45_G36")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_G36A"
	};
	scope[] = 
	{
		"CUP_optic_G36DualOptics_3D"
	};
	bipod[] = 
	{
		"CUP_Bipod_G36"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"CUP_V_B_GER_PVest_Fleck_MG"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_MG3"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_4("CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_HCPF3"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"CUP_B_GER_Pack_Flecktarn"
	};
	secondaryWeapon[] = 
	{
		"sp_fwa_m2_carlGustav"
	};
	secondaryAttachments[] = 
	{
		""
	};
	backpackItems[] = 
	{
		"CUP_MAAWS_HEDP_M",
		"CUP_MAAWS_HEAT_M"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] =
	{
		"CUP_V_B_GER_PVest_Fleck_Gren_LT"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AG36"
	};
	magazines[] += 
	{
		LIST_2("CUP_1Rnd_HE_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class medic : rm 
{
	displayName = "Medic";
	vest[] = 
	{
		"CUP_V_B_GER_PVest_Fleck_Med_LT",
	};
	backpack[] = 
	{
		"CUP_B_GER_Pack_Flecktarn"
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
		"CUP_B_GER_Pack_Flecktarn"
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
		"CUP_smg_MP5A5"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_30Rnd_9x19_MP5")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"CUP_H_SPH4",
		"CUP_H_SPH4_visor"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_MP5A5"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_30Rnd_9x19_MP5")
	};
};