class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"U_C_Uniform_Formal_01_white_F"
	};
	vest[] = 
	{
		"V_TacVest_blk"
	};
	backpack[] = {};
	headgear[] = 
	{
		"H_WirelessEarpiece_F"
	};
	goggles[] = {
		"G_Bandanna_OrangeFlame1"
	};
	hmd[] = {};
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
		"ItemCompass"
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
		LIST_5("CUP_arifle_G36KA3"),
		"$NONE_hlc_rifle_g36ka3_romi$"
	};
	scope[] =
	{
		"rhsusf_acc_eotech_xps3"
	};
	attachment[] =
	{
		"hlc_acc_TLR1_Side"
	};
	silencer[] =
	{
		"$NONE_hlc_muzzle_rotex3p$"
	};
	sidearmWeapon[] =
	{
		"$NONE_hlc_pistol_p226$"
	};
	magazines[] =
	{
		LIST_2("hlc_12Rnd_40SW_FMJ_P226"),
		LIST_12("hlc_30Rnd_556x45_B_G36"),
		"HandGrenade",
		"SmokeShell"
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"rhs_weap_m249_pip_S"
	};
	bipod[] =
	{
		"rhsusf_acc_grip4_bipod"
	};
	magazines[] = 
	{
		LIST_2("hlc_12Rnd_40SW_FMJ_P226"),
		LIST_8("rhsusf_200rnd_556x45_M856_box"),
		"HandGrenade",
		"SmokeShell"
	};
};
class dm : rm
{
	displayName = "Marksman";
	primaryWeapon[] =
	{
		LIST_5("CUP_arifle_G36A3"),
		"$NONE_hlc_rifle_g36a3_romi$"
	};
	scope[] =
	{
		"rhsusf_acc_acog"
	};
};

class rm_at : rm 
{
	displayName = "Rifleman (AT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_M136_hedp"
	};
};

class tl : rm
{
	displayName = "Team Leader";
	primaryWeapon[] =
	{
		LIST_5("CUP_arifle_G36A3_AG36"),
		"$NONE_hlc_rifle_g36a3_romi_ag36$"
	};
	magazines[] +=
	{
		LIST_2("rhs_mag_M397_HET")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
	
};

class medic : rm 
{
	displayName = "Medic";
	traits[] = {"medic"};	
	backpack[] = 
	{
		"B_Messenger_Black_F"
	};	
	primaryWeapon[] =
	{
		LIST_5("CUP_arifle_G36C"),
		"$NONE_hlc_rifle_g36c_romi$"
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