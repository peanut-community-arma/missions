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
	code = "\
		_stdMag = (getArray (configfile >> ""CfgWeapons"" >> (primaryWeapon _this) >> ""magazines"") # 0);\
        _mags = 0;\
        while {[_this, _stdMag, 1] call CBA_fnc_canAddItem && {_mags < 8}} do {\
			_this addMagazine _stdMag;\
			_mags = _mags + 1;\
		};\
        reload _this;\
		_this call pca_fnc_unlimitedAmmo;";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"simc_arvn_tgrstrp",
		"simc_arvn_tgrstrp_2",
		"simc_arvn_tgrstrp_3",
		"simc_arvn_tuck_tgrstrp",
		"simc_arvn_tuck_tgrstrp_2",
		"simc_arvn_tuck_tgrstrp_3",
		"simc_arvn_roll_tgrstrp",
		"simc_arvn_roll_tgrstrp_2",
		"simc_arvn_roll_tgrstrp_3"
	};
	vest[] = 
	{
		"V_Pocketed_black_F",
		"V_Pocketed_coyote_F",
		"CUP_V_I_RACS_Carrier_Rig_wdl_2",
		"V_BandollierB_ghex_F"
	};
	headgear[] = 
	{
		"pca_beanie_mgrn",
		"pca_beanie",
		"pca_headband",
		"CUP_H_FR_BandanaGreen",
		LIST_2("usm_bdu_boonie_tgrstp"),
		"aegis_cap_ghex",
		LIST_2("bear_helmet_M1_tan"),
		"bear_helmet_M1_tan_alt01",
		LIST_3("rhsgref_helmet_M1_painted"),
		LIST_2("rhsgref_helmet_M1_painted_alt01")
	};
	backpack[] = 
	{
		"pca_backpack_taki_jacket3_01",
		"pca_umbts_wdl",
		"B_ViperHarness_ghex_F",
		LIST_2("aegis_tacticalpack_rgr")
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK47_Early",
		"CUP_arifle_AK12_black",
		LIST_3("hlc_rifle_akm"),
		"hlc_rifle_ak74m",
		LIST_3("hlc_rifle_ak74"),
		LIST_3("hlc_rifle_ak74_dirty"),
		LIST_3("hlc_rifle_ak74_worn"),
		LIST_3("hlc_rifle_aks74"),
		"fwa_weap_fal_imbel_50_00",
		"fwa_weap_fal_imbel_50_63",
		"hlc_rifle_g3a3",
		"hlc_rifle_g36a3",
		"hlc_rifle_m16a2",
		"hlc_rifle_m4a1_carryhandle",
		"fwa_weap_colt_715_canada_c7",
		"amf_weap_famas_g2",
		"amf_weap_famas_f1",
		"CUP_arifle_TYPE_56_2_Early",
		"CUP_arifle_TYPE_56_2",
		"arifle_Katiba_F"
	};
	scope[] = 
	{""};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white"
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"rhs_weap_rpk74m"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("rhs_100Rnd_762x54mmR")
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
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("rhs_100Rnd_762x54mmR")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] =
	{
		"rhs_acc_pgo7v3"
	};
	backpack[] = {
		"rhs_rpg_6b3"
	};
	backpackItems[] += {
		LIST_3("rhs_rpg7_PG7VM_mag")
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_APILAS"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"hlc_rifle_g36a1_ag36",
		"CUP_arifle_M4A1_GL_carryhandle",
		"hlc_rifle_m16a2_m203",
		"CUP_arifle_HK416_AGL_Wood"
	};
	magazines[] += 
	{
		LIST_9("CUP_1Rnd_HE_M203"),
		LIST_2("CUP_1Rnd_Smoke_M203")
	};
};

class grengp : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"hlc_rifle_ak74m_gp25",
		LIST_3("hlc_rifle_akm_gp25"),
		"hlc_rifle_aks74_gp25",
		"CUP_arifle_AK74_GL_Early"
	};
	magazines[] += 
	{
		LIST_9("CUP_1Rnd_HE_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
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
	primaryWeapon[] = 
	{
		"hlc_rifle_aks74u",
		"hlc_rifle_aks74",
		"aegis_weap_vector_blk",
		"CUP_smg_M3A1",
		"hlc_smg_mp5a2"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white"
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
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};

class dmr : rm
{
	displayName = "Marksman";
	primaryWeapon[] = {
		"pca_weap_svd_wood"
	};
	scope[] = {
		"rhs_acc_pso1m21"
	};
};

class leader : rm
{
	linkedItems[] += {
		"ItemGPS",
		"Binocular"
	};

	headgear[] += {
		LIST_6("H_Beret_blk")
	};
};

class crew : rm
{
	displayName = "Crewman";
	primaryWeapon[] = {
		"CUP_smg_M3A1_blk",
		"hlc_smg_mp5a2"
	};
};

class demo : rm
{
	displayName = "Demoman";
	backpack[] = {
		"aegis_carryall_blk"
	};
	backpackItems[] += {
		LIST_2("CUP_PipeBomb_M"),
		"ACE_DeadManSwitch",
		"ACE_Clacker"
	};
};