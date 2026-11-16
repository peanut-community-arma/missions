class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = {
		"U_B_GEN_Commander_F"
	};
	vest[] = 
	{
		"CUP_V_B_Interceptor_Rifleman_Grey"
	};
	backpack[] = {};
	headgear[] = 
	{
		"H_Cap_police",
		"H_Beret_blk_POLICE",
		LIST_3("H_PASGT_basic_blue_F")
	};
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
	displayName = "Police Shield";
	headgear[] = 
	{
		"H_PASGT_basic_blue_F"
	};
	primaryWeapon[] = 
	{
		"CUP_hgun_BallisticShield_Armed_M9"
	};
	attachments[] = 
	{
		"acc_flashlight_pistol"
	};
	magazines[] = 
	{
		LIST_5("CUP_15Rnd_9x19_M9")
	};
};

class ar : rm 
{
	displayName = "Police Shotgun";
	primaryWeapon[] = 
	{
		"CUP_sgun_SPAS12"
	};
	magazines[] = 
	{
		LIST_8("CUP_8Rnd_12Gauge_Pellets_No00_Buck")
	};
};

class sg : rm 
{
	displayName = "Police Rifle";
	primaryWeapon[] = 
	{
		"sp_fwa_ruger_mini14"
	};
	magazines[] = 
	{
		LIST_5("sp_fwa_20Rnd_556_Ruger_Mini14")
	};
};
