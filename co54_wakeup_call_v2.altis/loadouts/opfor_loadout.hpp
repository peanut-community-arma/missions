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
		"CUP_U_O_RUS_EMR_1",
		"CUP_U_O_RUS_EMR_2",
		"CUP_U_O_RUS_EMR_gloves_pads",
		"CUP_U_O_RUS_EMR_rolled_up_gloves_pads"
	};
	vest[] =
	{
		LIST_4("CUP_Vest_RUS_6B45_Sh117"),
		"CUP_Vest_RUS_6B45_Sh117_VOG"
	};
	headgear[] =
	{
		LIST_3("CUP_H_RUS_6B47_v2_Summer"),
		"CUP_H_RUS_6B47_v2_GogglesClosed_Summer",
		"CUP_H_RUS_6B47_v2_GogglesDown_Summer",
		"CUP_H_RUS_6B47_v2_GogglesUp_Summer"
	};
	goggles[] =
	{
		LIST_2(""),
		"rhs_balaclava",
		"rhs_balaclava1_olive"
	};
	backpack[] =
	{
		LIST_6(""),
		LIST_3("CUP_O_RUS_Patrol_bag_Summer"),
		"CUP_O_RUS_Patrol_bag_Summer_Shovel"
	};
	primaryWeapon[] =
	{
		LIST_3("CUP_arifle_AK12_black"),
		"CUP_arifle_AK12_VG_black",
		"CUP_arifle_AK12_AFG_black"
	};
	scope[] =
	{
		LIST_4(""),
		"rhs_acc_1p87",
		"rhs_acc_1p87",
		"rhsusf_acc_eotech_552"
	};
	attachment[] = {
		"rhs_acc_2dpzenit_ris",
		""
	};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_7("pca_mag_30Rnd_545x39_AK12_Blk_7N10")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] =
	{
		"rhs_weap_rpk74m"
	};
	scope[] =
	{
		"rhs_acc_1p63"
	};
	magazines[] =
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_3("pca_mag_45Rnd_545X39_RPK_Black_7N10")
	};
};

class mg : rm
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"CUP_Vest_RUS_6B45_Sh117_PKP"
	};
	primaryWeapon[] =
	{
		"rhs_weap_pkp"
	};
	scope[] =
	{
		"rhs_acc_1p63"
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

class rm_hat : rm
{
	displayName = "Rifleman (HAT)";
	backpack[] =
	{
		"rhs_rk_sht_30_emr",
		"rhs_tortila_emr"
	};
	secondaryWeapon[] =
	{
		"CUP_launch_Metis"
	};
	backpackItems[] =
	{
		"CUP_AT13_M"
	};
};

class gren : rm
{
	displayName = "Grenadier";
	primaryWeapon[] =
	{
		"CUP_arifle_AK12_GP34_black"
	};
	magazines[] +=
	{
		LIST_1("rhs_VOG25"),
		LIST_1("rhs_GRD40_White")
	};
};

class medic : rm
{
	displayName = "Medic";
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

class gunner : rm
{
	displayName = "Artillery Gunner";
	vest[] =
	{
		"CUP_V_RUS_6B45_3"
	};
	headgear[] =
	{
		"rhs_gssh18",
		LIST_3("CUP_H_RUS_6B47_headset")
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
