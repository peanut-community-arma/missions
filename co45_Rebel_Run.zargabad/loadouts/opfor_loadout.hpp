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
		"milgp_u_g3_field_set_mcalpine"
	};
	vest[] = 
	{
		""
	};
	headgear[] = 
	{
		"H_RacingHelmet_1_white_F"
	};
	backpack[] = 
	{
		"pca_backpack_invisible_large"
	};
	sidearmWeapon[] = 
	{
		"hlc_pistol_DL44"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_8("hlc_1Rnd_Plasma_DL44_green")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"sp_fwa_aa52"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_3("rhsusf_100Rnd_762x51_m62_tracer")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"rhs_weap_mg42"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_3("rhsgref_296Rnd_792x57_SmK_alltracers_belt")
	};
};

class boss : rm 
{
	displayName = "Vader";
	uniform[] = 
	{
		"U_B_UBACS_blk_f"
	};
	vest[] = 
	{
		"V_CarrierRigKBT_01_light_Black_F"
	};
	headgear[] = 
	{
		"rhsgref_helmet_m1942"
	};
	goggles[] = 
	{
		"G_AirPurifyingRespirator_02_black_F"
	};
	backpack[] = 
	{
		"B_SCBA_01_F"
	};
	primaryWeapon[] = 
	{
		"amf_weap_famas_felin"
	};
	scope[] = 
	{
		"cup_optic_vortexrazor_uh1_black"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_12("amf_25Rnd_556x45_M856A1_F1_Stanag")
	};
};
