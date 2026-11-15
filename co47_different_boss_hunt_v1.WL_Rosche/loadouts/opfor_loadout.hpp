class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"CUP_I_B_PMC_Unit_20",
		"CUP_I_B_PMC_Unit_17",
		"CUP_I_B_PMC_Unit_24"		
	};
	vest[] = 
	{
		"CUP_V_B_Ciras_Black4"
	};
	backpack[] = {};
	headgear[] = 
	{
		"CUP_H_OpsCore_Black_NoHS"
	};
	goggles[] = 
	{
		"CUP_G_ESS_BLK"
	};
	hmd[] = 
	{
		"CUP_NVG_PVS15_black"
	};
	// Leave empty to not change faces and Insignias
	faces[] = {"faceset:persian", "faceset:african", "faceset:caucasian", "faceset:asian"};
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
		"ACRE_PRC343",
		LIST_2("ACE_fieldDressing"),
		LIST_2("ACE_packingBandage"),
		"ACE_tourniquet",
		"ACE_morphine",
		"ACE_splint"
	};
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
	code =  "_this call pca_fnc_unlimitedAmmo";
};

class rm : baseMan
{
	displayName = "Rifleman";
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_scarl_std$"
	};
	scope[] =
	{
		"$NONE_sma_acc_cmore_blk$"
	};
	bipod[] =
	{
		"rhsusf_acc_kac_grip"
	};
	attachment[] =
	{
		"acc_pointer_ir"
	};
	sidearmWeapons[] =
	{
		"rhsusf_weap_glock17g4"
	};
	sidearmAttachments[] =
	{
		"cup_acc_glock17_flashlight"
	};
	magazines[] =
	{
		LIST_16("rhs_mag_30Rnd_556x45_M855_PMAG"),
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ"),
		"rhs_mag_m67",
		"rhs_mag_an_m8hc"
	};
};

class ar : rm
{
	displayName = "Autorifleman";
	backpack[] =
	{
		"CUP_B_USPack_Black"
	};
	primaryWeapon[] =
	{
		"rhs_weap_m249_light_L"
	};
	bipod[] =
	{
		"rhsusf_acc_kac_grip_saw_bipod"
	};
	magazines[] =
	{
		LIST_5("rhsusf_200rnd_556x45_M856_box"),
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ"),
		"rhs_mag_m67",
		"rhs_mag_an_m8hc"
	};
};

class rm_at : rm
{
	displayName = "Rifleman (AT)";
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_scarl_cqc$"
	};
	secondaryWeapon[] =
	{
		"CUP_launch_APILAS",
		"rhs_weap_m72a7"
	};
};

class dm : rm
{
	displayName = "Marksman";
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_scarh_ssr$"
	};
	scope[] =
	{
		"$NONE_hlc_optic_hensoldtzo_low_rds$"
	};
	bipod[] = 
	{
		"HLC_bipod_UTGShooters"
	};	
	magazines[] =
	{
		LIST_10("rhs_mag_20Rnd_SCAR_762x51_m80_ball_bk"),
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ"),
		"rhs_mag_m67",
		"rhs_mag_an_m8hc"
	};	
};

class tl : rm
{
	displayName = "Team Leader";
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_scarl_std_eglm$"
	};
	magazines[] =
	{
		LIST_16("rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red"),
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ"),
		"rhs_mag_M441_HE",
		"rhs_mag_m67",
		"rhs_mag_an_m8hc"
	};	
};

class medic : rm
{
	displayName = "Medic";
	traits[] = {"medic"};	
	backpack[] =
	{
		"CUP_B_USPack_Black"
	};
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_scarl_cqc$"
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

class pilot : rm
{
	displayName = "Pilot";
	backpack[] =
	{
		"B_Parachute"
	};
	headgear[] =
	{
		"rhsusf_hgu56p_visor_black"
	};
	goggles[] =
	{
		""
	};
	hmd[] =
	{
		"rhsusf_ANPVS_14"
	};
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_scarl_sc$"
	};
};