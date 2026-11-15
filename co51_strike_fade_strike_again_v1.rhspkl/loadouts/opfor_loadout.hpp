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
		LIST_4("U_Simc_TCU_mk3_blench"),
	LIST_4("U_Simc_TCU_mk3_trop_blench"),
	LIST_4("U_Simc_TCU_mk3_tuck"),
	"U_Simc_TCU_mk3_cute_blench"
	};
	vest[] = 
	{
		"V_Simc_56",
		"V_Simc_56_4cm",
		"V_Simc_56_45"
	};
	headgear[] = 
	{
		LIST_3("H_Simc_M1C_bitch_Cl"),
		LIST_2("H_Simc_M1C_bitch_low_rot"),
		LIST_2("H_Simc_M1C_bitch_op_2"),
		LIST_2("H_Simc_M1C_bitch_up"),
		LIST_2("H_Simc_M1C_bitch_low"),
		"H_Simc_Boon_green_1",
		"H_Simc_hat_trop_1",
		"H_Bandanna_khk"
	};
	backpack[] = 
	{
		LIST_10(""),
		"B_simc_pack_frem_3",
		"B_simc_pack_frem_7",
		"B_simc_pack_frem_2_alt",
		"B_simc_pack_frem_1_alt",
		"B_simc_pack_frem_empty"
	};
	goggles[] = 
	{
		LIST_15(""),
		"G_Nomex_1",
		"G_simc_US_Bandoleer_556_right",
		"G_Cigarette"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A1"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_20Rnd_556x45_Stanag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] =
	{
		"V_Simc_56_60_ligt_zusp"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_M60"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_3("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class mg : rm
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"V_Simc_56_60_doppel_ligt"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_m1919a6_browning"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_4("sp_fwa_100Rnd_3006_mag")
	};
};

class dm : rm
{
	displayName = "Designated Marksmen";
	primaryWeapon[] = 
	{
		"CUP_srifle_M21"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_4("CUP_20Rnd_762x51_DMR")
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
		"B_simc_packboard_roket_1"
	};
	secondaryWeapon[] = 
	{
		"sp_fwa_m67"
	};
	secondaryAttachments[] = 
	{
		""
	};
	backpackItems[] = 
	{
		LIST_2("sp_fwa_m67_1rnd_heat"),
		"sp_fwa_m67_1rnd_he"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A1GL"
	};
	magazines[] += 
	{
		LIST_3("CUP_1Rnd_HE_M203"),
		LIST_2("CUP_1Rnd_Smoke_M203")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_simc_pack_frem_med5"
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
		"B_simc_pack_frem_1"
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
	headgear[] = 
	{
		"H_Simc_CVC",
	"H_Simc_CVC_G",
	"H_Simc_CVC_G_low"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_M3A1"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_30Rnd_45ACP_M3A1_M")
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
		"CUP_smg_M3A1"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_30Rnd_45ACP_M3A1_M")
	};
};