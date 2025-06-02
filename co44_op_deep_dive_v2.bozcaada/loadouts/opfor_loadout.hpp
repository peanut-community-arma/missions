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
		"CUP_U_B_BDUv2_DCU_US"
	};
	vest[] = 
	{
		"V_HarnessOSpec_tan"
	};
	headgear[] = 
	{
		"CUP_H_PASGTv2_NVG_DCU"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G36K"
	};
	scope[] = 
	{
		"cup_optic_g36optics15x"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("rhssaf_30rnd_556x45_Tracers_G36")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_MG36"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("rhssaf_100rnd_556x45_EPR_G36")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_MG3"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("rhsusf_100Rnd_762x51_m80a1epr")
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
	backpack[] = 
	{
		"B_Carryall_cbr",
	};
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

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_Carryall_cbr"
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
		LIST_2("ACE_bloodIV"),
		LIST_2("ACE_adenosine")
	};
};

class dm : rm
{
	displayName = "Designated Marksman";
	primaryWeapon[] = 
	{
		"CUP_arifle_G3A3_modern_ris_black"
	};
	scope[] = 
	{
		"rhsusf_acc_elcan"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("hlc_20Rnd_762x51_B_G3")
	};
};