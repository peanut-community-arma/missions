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
	items[] = {};
	// These are added directly into their respective slots
	linkedItems[] = {};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "";
};

class rm : baseMan
{
	displayName = "Survivor";
	uniform[] = 
	{
		"U_BG_Guerilla3_1"
	};
	vest[] = 
	{
		"V_Rangemaster_belt"
	};
	headgear[] = 
	{
		""
	};
	backpack[] = 
	{
		""
	};
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	sidearmAttachments[] = {
		"acc_flashlight_pistol"
	};
	items[] =
	{
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] = 
	{
		LIST_4("ptv_12Rnd_45ACP_USP")
	};
	backpackItems[] = 
	{
		""
	};
};

class tl : rm 
{
	displayName = "Group Leader";
	uniform[] = 
	{
		"$NONE_TC_U_aegis_guerilla_tshirt_m81_sudan$",
		"Rev_U_B_FRR_Uniform_02_F",
		"Rev_U_B_FRR_Uniform_03_F"
	};
	vest[] = 
	{
		"rhs_vest_commander"
	};
	backpack[] = 
	{
		""
	};
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap"
	};
};

class sl : rm 
{
	displayName = "Geared Survivor";
	uniform[] = 
	{
		"U_BG_Guerilla3_1"
	};
	vest[] = 
	{
		"V_Rangemaster_belt"
	};
	headgear[] = 
	{
		"H_HelmetB_light"
	};
	backpack[] = 
	{
		"B_TacticalPack_oli"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_bcm_jack300$"
	};
	scope[] = 
	{
		"ptv_acc_eot552"
	};
	bipod[] = {};
	attachment[] = 
	{
		"pca_flashlight_sf"
	};
	silencer[] = {};
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	items[] =
	{
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] = 
	{
		LIST_4("ptv_12Rnd_45ACP_USP"),
		LIST_10("hlc_30Rnd_300BLK_L5")
	};
	backpackItems[] = 
	{
		LIST_15("ACE_elasticBandage"),
		LIST_15("ACE_packingBandage"),
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_3("ACE_bloodIV"),
		LIST_5("ACE_splint"),
		LIST_2("ACE_tourniquet"),
	};
};

class rm_fa : rm 
{
	displayName = "Survivor (First-Aid)";
	traits[] = {"medic"};
	uniform[] = 
	{
		"U_BG_Guerilla2_3"
	};
	backpack[] = 
	{
		"B_simc_pack_med_m5"
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_6("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine"),
		LIST_10("ACE_suture")
	};
};

