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
	displayName = "Hunter";
	uniform[] = 
	{
		"U_C_CBRN_Suit_01_Black_F"
	};
	vest[] = 
	{
		"V_PlateCarrier1_blk"
	};
	headgear[] = 
	{
		"Atlas_H_PASGT_Cover_alt_Black_F"
	};
	backpack[] = 
	{
		"B_CombinationUnitRespirator_01_F"
	};
	goggles[] = {
		"m40_gas_mask_01"
	};
	hmd[] = {};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_magpul556_blk$"
	};
	scope[] = 
	{
		"CUP_optic_VortexRazor_UH1_Black"
	};
	bipod[] = {};
	attachment[] = {
		"pca_flashlight_sf"
	};
	magazines[] = 
	{
		"ACE_HandFlare_Red",
		"I_IR_Grenade",
		LIST_4("30Rnd_556x45_Stanag_red")
	};
};