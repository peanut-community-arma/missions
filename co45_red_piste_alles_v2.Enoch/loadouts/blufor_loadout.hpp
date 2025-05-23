/*
	* Example Player Loadout
	* Template for creating player loadout
	* Faction: Example US Army Loadout (OCP, 2020)
*/

// Weaponless Baseclass
class baseMan 
{
	displayName = "Unarmed";
	// All Randomized.
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {"default"};
	hmd[] = {};
	// Leave empty to not change faces and Insignias -> example: faces[] = {};
	faces[] = {};
	insignias[] = {};
	//All Randomized. Add Primary Weapon and attachments.
	//Leave Empty to remove all. {"Default"} for using original items the character start with.
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	//SecondaryAttachments[] arrays are NOT randomized.
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	// These are added to the uniform or vest first - overflow goes to backpack if there is space.
	magazines[] = {};
	items[] = {};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	// These are put directly into the backpack.
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit.
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"pca_uniform_gorka_emr",
		"pca_uniform_gorka_emr_gloves"
	};
	vest[] = 
	{
		"pca_6b23_6sh92_flora_headset_spetsnaz",
		"pca_6b23_6sh92_flora_radio_spetsnaz",
		"pca_6b23_6sh92_flora_spetsnaz",
		"pca_6b23_6sh92_flora_vog_spetsnaz"
	};
	headgear[] = 
	{
		"pca_m97_pasgt_cdf_ttsko_forest"
	};
	goggles[] = 
	{
		"G_Bandanna_blk"
	};
	hmd[] = {
		"ACE_NVG_Gen4_Black"
	};
	backpack[] = 
	{
		"pca_umbts_flora",
		"wsx_umbts_emr"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK15_VG_black"
	};
	scope[] = 
	{
		"cup_optic_ac11704_black"
	};
	silencer[] = 
	{
		"cup_muzzle_bizon"
	};
	attachment[] =
	{
		"cup_acc_anpeq_15_flashlight_black_l"
	};
	items[] =
	{
		//Standard Start Items for player
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_packingBandage"),
		LIST_5("ACE_quikclot"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint"),
		LIST_2("ACE_IR_Strobe_Item")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_rgd5"),
		LIST_13("CUP_30Rnd_762x39_AK15_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_30Rnd_762x39_AK15_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_top_rail"
	};
	bipod[] = 
	{
		"rhsusf_acc_saw_lw_bipod"
	};
	scope[] = 
	{
		"cup_optic_ac11704_black"
	};
		silencer[] = 
	{
		"cup_muzzle_bizon"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_6p53"
	};
	attachment[] =
	{
		"cup_acc_anpeq_15_flashlight_black_l"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_rgd5"),
		LIST_3("rhs_18rnd_9x21mm_7N29"),
		LIST_3("CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"bw_carryall_fleck"
	};
	backpackItems[] += 
	{
		LIST_4("CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M")
	};
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
		"rhssaf_zrak_rd7j"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG26"
	};
	backpackItems[] += 
	{
		"CUP_launch_RPG26"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK15_GP34_black"
	};
	backpackItems[] = 
	{
		LIST_14("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_30Rnd_762x39_AK15_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	items[] +=
	{
		"ACE_Clacker"
	};
	backpackItems[] += 
	{
		LIST_2("SmokeShell"),
		LIST_2("DemoCharge_Remote_Mag")
	};
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
		"rhssaf_zrak_rd7j"
	};
};

class sl : gren 
{
	displayName = "Squad Leader";
	items[] +=
	{
		"ACE_Clacker"
	};
	backpackItems[] += 
	{
		LIST_2("SmokeShell"),
		LIST_4("CUP_IlumFlareWhite_GP25_M"),
		LIST_2("DemoCharge_Remote_Mag")
	};
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
		"rhssaf_zrak_rd7j"
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
};

class co : sl 
{
	displayName = "Platoon Commander";
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpackItems[] +=
	{
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_8("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_personalAidKit"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_20("ACE_elasticBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_packingBandage"),
		LIST_20("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_13("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};