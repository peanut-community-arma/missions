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
	displayName = "Rifleman";
	uniform[] =
	{
		"rhsgref_uniform_woodland_olive",
		"rhsgref_uniform_woodland",
		"rhsgref_uniform_tigerstripe",
		"rhsgref_uniform_olive",
		"rhsgref_uniform_og107_erdl",
		"rhsgref_uniform_flecktarn",
		"rhsgref_uniform_ERDL",
		"rhsgref_uniform_dpm_olive"
	};
	vest[] =
	{
		LIST_4("V_TacChestrig_oli_F"),
		"V_TacChestrig_grn_F",
		"V_BandollierB_rgr",
		"V_ChestrigF_oli",
		"V_TacChestrig_grn_F"
	};
	headgear[] =
	{
		"rhs_beanie_green",
		"rhs_beanie",
		"H_Watchcap_khk",
		"CUP_H_PMC_Beanie_Headphones_Khaki",
		"CUP_H_Ger_Boonie2_Flecktarn",
		"H_Booniehat_m81_F",
		"rhs_Booniehat_flora",
		"H_Cap_eaf_arid_F",
		"H_Cap_tan_specops_US",
		"CUP_H_PMC_Cap_Back_Tan"
	};
	backpack[] =
	{
		LIST_5(""),
		LIST_2("B_Messenger_Olive_F"),
		"rhs_sidor",
		"CUP_B_HikingPack_Civ"
	};
	goggles[] = {
		"G_Bandanna_oli",
		"$REMOVE_usm_scarf$",
		"rhsusf_shemagh_od",
		"rhsusf_shemagh2_grn",
		LIST_2("")
	};
	hmd[] = {};
	primaryWeapon[] =
	{
		"rhs_weap_ak74m_camo",
		"rhs_weap_ak74m_desert"
	};
	silencer[] = {
		"rhs_acc_dtk"
	};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_7("rhs_30Rnd_545x39_7N22_camo_AK")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] =
	{
		"rhs_weap_rpk74m"
	};
	silencer[] = {
		"rhs_acc_dtkrpk"
	};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_4("pca_mag_45Rnd_545X39_RPK_Black_7N22")
	};
};

class mg : rm
{
	displayName = "Machine Gunner";
	primaryWeapon[] =
	{
		"rhs_weap_pkp"
	};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_3("rhs_100Rnd_762x54mmR")
	};
};

class rm_lat : rm
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] =
	{
		"CUP_launch_RPG26"
	};
};

class sharpshooter : rm
{
	displayName = "Sharpshooter";
	uniform[] =
	{
		"CUP_U_I_Ghillie_Top"
	};
	headgear[] = {};
	backpack[] = {};
	primaryWeapon[] =
	{
		"CUP_srifle_SVD_wdl"
	};
	scope[] = {
		"cup_optic_pso_1"
	};
	attachment[] = {
		"cup_svd_camo_g"
	};
	silencer[] = {};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_7("CUP_10Rnd_762x54_SVD_M")
	};
};

class scout : rm
{
	displayName = "Scout";
	uniform[] =
	{
		"CUP_U_I_Ghillie_Top"
	};
	headgear[] = {};
	backpack[] = {};
	primaryWeapon[] =
	{
		"rhs_weap_aks74u"
	};
	silencer[] = {
		"rhs_acc_pbs4"
	};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		LIST_7("rhs_30Rnd_545x39_7U1_AK")
	};
};

class medic : rm
{
	displayName = "Medic";
	vest[] =
	{
		"rhs_6b23_digi_medic"
	};
	backpack[] =
	{
		"rhs_rk_sht_30_emr",
		"rhs_tortila_emr"
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
