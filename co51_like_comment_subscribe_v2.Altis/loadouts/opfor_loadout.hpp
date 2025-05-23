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
	displayName = "FIA Rifleman";
	uniform[] = 
	{
		LIST_2("U_OG_leader"),
		"U_BG_Guerilla1_1",
		"U_BG_Guerilla2_1",
		"U_BG_Guerilla2_3"
	};
	vest[] = 
	{
		LIST_4("V_Chestrig_blk"),
		"V_Chestrig_rgr"
	};
	headgear[] = 
	{
		"H_Watchcap_blk",
		"H_Shemag_olive",
		"H_ShemagOpen_tan",
		"H_Shemag_olive_hs"
	};
	primaryWeapon[] = 
	{
		"arifle_TRG20_F"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("30Rnd_556x45_Stanag")
	};
};


class smg : rm
{
	displayName = "FIA SMG";
	primaryWeapon[] = 
	{
		"SMG_02_F"
	};
	scope[] = 
	{
		"optic_aco_grn_smg"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("30Rnd_9x21_Mag_SMG_02")
	};
};


class aaf_rm : rm 
{
	displayName = "AAF Personnel";
	uniform[] = 
	{
		LIST_2("U_I_CombatUniform"),
		"U_I_CombatUniform_shortsleeve"
	};
	vest[] = 
	{
		"V_PlateCarrierIA1_dgtl"
	};
	headgear[] = 
	{
		LIST_3("H_MilCap_dgtl"),
		"H_HelmetIA"
	};
	primaryWeapon[] = 
	{
		"arifle_Mk20_F"
	};
	sidearmWeapon[] =
	{
		"hgun_ACPC2_F"
	};
	scope[] = 
	{
		"optic_aco_grn"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_4("30Rnd_556x45_Stanag"),
		LIST_5("9Rnd_45ACP_Mag")
	};
};

class cop : baseMan
{
	displayName = "Cop (Hostile)";
	uniform[] = 
	{
		"CUP_U_C_Policeman_01"
	};
	vest[] = 
	{
		"pca_vest_invisible"
	};
	headgear[] = 
	{
		LIST_3(""),
		"pca_patrolcap_police",
		"CUP_H_C_Policecap_01"
	};
	primaryWeapon[] = 
	{
		"SMG_05_F"
	};
	scope[] = 
	{
		"optic_aco_smg"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("CUP_30Rnd_9x19_MP5")
	};
};