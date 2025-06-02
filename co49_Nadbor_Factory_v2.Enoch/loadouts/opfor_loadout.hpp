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
		"U_O_SpecopsUniform_blk"
	};
	vest[] = 
	{
		LIST_4("V_CarrierRigKBT_01_light_Black_F"),
		"V_CarrierRigKBT_01_heavy_Black_F"
	};
	headgear[] = 
	{
		LIST_3("H_HelmetO_blk"),
		LIST_2("H_HelmetLeaderO_blk")
	};
	backpack[] = 
	{
		LIST_7("pca_backpack_invisible"),
		LIST_2("B_AssaultPack_blk"),
		"pca_eagle_a3_blk"
	};
	goggles[] = 
	{
		"G_Balaclava_light_G_blk_F"
	};
	hmd[] = 
	{
		"rhs_1PN138"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12_545_F"
	};
	scope[] = 
	{
		"optic_holosight_blk_f"
	};
	silencer[] = 
	{
		"rhs_acc_dtk1"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		LIST_8("aegis_30Rnd_545x39_7N10_ak12")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"arifle_RPK12_F"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("75rnd_762x39_AK12_Mag_Tracer_F")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg_B50_vfg"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("rhs_100Rnd_762x54mmR_green")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg26"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] = 
	{
		"rhs_acc_pgo7v3"
	};
	backpackItems[] = 
	{
		LIST_4("rhs_rpg7_PG7VL_mag"),
		"rhs_rpg7_PG7VR_mag",
		"rhs_rpg7_OG7V_mag"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"arifle_AK12_GL_545_F"
	};
	magazines[] += 
	{
		LIST_3("rhs_mag_M441_HE"),
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpackItems[] = 
	{
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_elasticBandage"),
		LIST_5("ACE_packingBandage"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_bloodIV"),
		LIST_2("ACE_adenosine")
	};
};