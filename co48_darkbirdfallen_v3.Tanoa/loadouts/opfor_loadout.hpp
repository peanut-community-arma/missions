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
class r : baseMan {};
class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] =
	{
		"rhsgref_uniform_TLA_1",
		"rhsgref_uniform_TLA_2"
	};
	vest[] =
	{
		"rhsgref_chicom",
		"rhsgref_chestrig",
	};
	headgear[] =
	{
		"pca_ssh68_helmet_cover_vsr_1",
		"pca_ssh68_helmet_cover_vsr_2",
		"pca_ssh68_helmet_cover_vsr_3",
		"pca_ssh68_helmet_cover_vsr_4",
		"pca_ssh68_helmet_cover_vsr_5",
		"pca_ssh68_helmet_cover",
		"pca_ssh68_helmet",
		LIST_3("H_Booniehat_jungle")
	};
	backpack[] =
	{
		LIST_7(""),
		LIST_2("rhs_sidor"),
		"simc_tropical_pack"
	};
	primaryWeapon[] =
	{
		LIST_2("rhs_weap_ak74"),
		"rhs_weap_aks74"
	};
	scope[] = {};
	silencer[] ={
		"rhs_acc_dtk1983"
	};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_7("rhs_30Rnd_545x39_7N10_AK")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] =
	{
		"CUP_arifle_RPK74_45"
	};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_7("rhs_45Rnd_545x39_7N10_AK")
	};
};

class mg : rm
{
	displayName = "Machine Gunner";
	primaryWeapon[] =
	{
		"CUP_lmg_PKM"
	};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class rm_lat : rm
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] =
	{
		"rhs_weap_rpg18"
	};
};

class rm_mat : rm
{
	displayName = "Rifleman (MAT)";
	backpack[] =
	{
		LIST_2("rhs_sidor"),
		"simc_tropical_pack"
	};
	secondaryWeapon[] =
	{
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] = {};
	backpackItems[] =
	{
		LIST_4("rhs_rpg7_PG7VM_mag")
	};
};

class gren : rm
{
	displayName = "Grenadier";
	primaryWeapon[] =
	{
		"rhs_weap_ak74_gp25"
	};
	magazines[] +=
	{
		LIST_1("rhs_VOG25"),
		LIST_2("rhs_GRD40_White")
	};
};

class medic : rm
{
	displayName = "Medic";
	vest[] =
	{
		"simc_m1956_lce_medic_holster"
	};
	backpack[] =
	{
		"rhs_sidor",
		"simc_tropical_pack"
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
		LIST_2("ACE_bloodIV")
	};
};

class engineer : rm
{
	displayName = "Engineer";
	backpack[] =
	{
		"rhs_rk_sht_30_emr_engineer_empty"
	};
	backpackItems[] =
	{
		"ToolKit",
		"ACE_wirecutter",
		LIST_2("rhs_ec400_sand_mag")
	};
};

class crewman : rm
{
	displayName = "Crewman";
	vest[] =
	{
		"rhs_6b23_digi_6sh92_headset_spetsnaz"
	};
	headgear[] =
	{
		"rhs_6b48"
	};
	primaryWeapon[] =
	{
		"rhs_weap_ak105"
	};
	scope[] = {};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};

class pilot : rm
{
	displayName = "Pilot Crew";
	vest[] =
	{
		"rhs_6b23_digi_6sh92_spetsnaz2"
	};
	headgear[] =
	{
		"rhs_zsh7a_mike_green",
		"rhs_zsh7a_mike_green_alt"
	};
	primaryWeapon[] =
	{
		"rhs_weap_ak105"
	};
	scope[] = {};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};
