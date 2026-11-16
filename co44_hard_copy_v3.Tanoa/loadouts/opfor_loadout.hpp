class baseMan
{
	displayName = "Unarmed";
	uniform[] = {
		"CUP_I_B_PMC_Unit_11",
		"CUP_I_B_PMC_Unit_19",
		"CUP_I_B_PMC_Unit_20",
		"CUP_I_B_PMC_Unit_3",
		"CUP_I_B_PMC_Unit_7"
	};
	vest[] = {
		"CUP_V_PMC_CIRAS_OD_TL"
	};
	backpack[] = {};
	headgear[] = {
		"CUP_H_PMC_Cap_Burberry",
		"CUP_H_PMC_Cap_PRR_Burberry"
	};
	goggles[] = {
		"CUP_G_Oakleys_Drk"
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
	displayName = "Rifleman";
	primaryWeapon[] =
	{
		"CUP_arifle_M4A1_black"
	};
	magazines[] =
	{
		LIST_2("CUP_HandGrenade_M67"),
		LIST_6("rhs_mag_30Rnd_556x45_M855A1_Stanag")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";

	primaryWeapon[] =
	{
		"CUP_lmg_M249_E1"
	};
	magazines[] =
	{
		LIST_3("rhsusf_200rnd_556x45_M855_mixed_box"),
		LIST_2("rhsusf_mag_15Rnd_9x19_JHP")
	};
};

class gren : rm
{
	displayName = "Grenadier";
	primaryWeapon[] =
	{
		"CUP_arifle_M4A1_black"
	};
	magazines[] +=
	{
		LIST_9("rhs_VOG25"),
		LIST_2("rhs_GRD40_White")
	};
};

class tl : rm
{
	displayName = "Team Leader";
	uniform[] += 
	{
		"CUP_I_B_PMC_Unit_37"
	};
	goggles[] = 
	{
		"G_Sport_Red",
		"G_Shemag_shades"
	};
	headgear[] =
	{
		"CUP_H_PMC_Cap_Back_Burberry",
		"CUP_H_PMC_Cap_Back_PRR_Burberry"
	};
};