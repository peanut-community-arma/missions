class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = {
		"U_C_Poor_1",
		"Atlas_U_C_Uniform_01_tshirt_white_F",
		"U_C_Poor_2",
		"U_C_Mechanic_01_F",
		"U_simc_surf",
		"U_C_Man_casual_7_F",
		"U_C_Man_casual_3_F",
		"U_simc_civ_jean_weiss_trop"
	};
	vest[] = {
		"CUP_V_OI_TKI_Jacket1_06",
		"CUP_V_OI_TKI_Jacket1_04"
	};
	backpack[] = {};
	headgear[] = {
		LIST_5("H_HeadBandage_stained_F"),
		LIST_5("H_HeadBandage_bloody_F"),
		"hendrix_beanie_blk",
		"H_Cap_blk",
		"H_Bandanna_surfer_blk",
		"H_Booniehat_blk",
		"H_Hat_brown",
		LIST_2("")
	};
	goggles[] = {
		LIST_4(""),
		"CUP_Beard_Black",
		"CUP_Beard_Brown",
		"G_Bandanna_Vampire_01"
	};
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
	displayName = "Renfield Pistol";
	sidearmWeapon[] = {
		"CUP_hgun_Compact",
		"CUP_hgun_Phantom"
	};
	magazines[] = 
	{
		LIST_5("CUP_18Rnd_9x19_Phantom"),
		"HandGrenade",
		"SmokeShell"
	};
};

class ar : rm 
{
	displayName = "Renfield Shotgun";
	sidearmWeapon[] = {
		LIST_2("bnae_spr220_so_virtual"),
		LIST_6("bnae_spr220_virtual"),
		"bnae_spr220_camo1_virtual",
		"bnae_spr220_so_camo1_virtual"
	};
	magazines[] = 
	{
		LIST_8("2Rnd_00_Buckshot_Magazine")
	};
};

class sg : rm 
{
	displayName = "Renfield Rifle";
	primaryWeapon[] = 
	{
		LIST_4("sp_fwa_kar_98k_laminate"),
		"sp_fwa_kar_98k"
	};
	magazines[] = 
	{
		LIST_5("sp_fwa_5Rnd_792x57_K98_Tracer")
	};
};
