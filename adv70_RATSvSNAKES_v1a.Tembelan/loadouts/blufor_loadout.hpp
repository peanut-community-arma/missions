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
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "";
};

class rm : baseMan
{
	displayName = "RAT";
	uniform[] = 
	{
		"pca_uniform_m10_wdl",
		"pca_uniform_m10_marpatwd",
		"pca_uniform_m10_atacs_fg",
		"pca_uniform_m10_atacs_au",
		"rhsgref_uniform_para_ttsko_mountain",
		"rhsgref_uniform_para_ttsko_oxblood",
		"rhsgref_uniform_para_ttsko_urban"
	};
	vest[] = 
	{
		"pca_vest_invisible_kevlar"
	};
	headgear[] = 
	{
		"CUP_H_PASGTv2_WDL"
	};
	backpack[] = 
	{
		"pca_backpack_invisible_large"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_hk416d145"
	};
	scope[] = 
	{
		"RKSL_optic_EOT552"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
        LIST_5("ACE_elasticBandage"),
        LIST_5("ACE_quikclot"),
		LIST_2("ACE_tourniquet"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_4("ACE_splint")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_17("CUP_30Rnd_556x45_PMAG_BLACK_PULL")
	};
	backpackItems[] = {};
	secondaryWeapon[] = {};
};