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
	displayName = "Rifleman";
	uniform[] = 
	{
		"$REMOVE_usm_bdum65_erdl$",
		"CUP_U_B_BDUv2_ERDL_highland",
		"CUP_U_B_BDUv2_roll_ERDL_highland",
		"CUP_U_B_BDUv2_roll2_ERDL_highland",
		"$NONE_usm_bdu_bti_erdl$",
		"$NONE_usm_bdu_btisrl_erdl$",
		"CUP_U_B_BDUv2_ERDL_highland",
	};
	vest[] = 
	{
		"rhs_6b3_od_ak_1",
		"rhs_6b3_od_ak_2",
		"rhs_6b3_od_ak_3"
	};
	headgear[] = 
	{
		"$NONE_usm_helmet_m1v2_erdl$",
		"H_Simc_M1_erdl_ns"
	};
	backpack[] = 
	{
		"pca_rd54_od"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74_Early",
		"CUP_arifle_AKS74_Early"
	};
	attachment[] = 
	{
		"cup_acc_zenit_2ds"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_2("rhs_grenade_mki_mag"),
		LIST_13("rhs_30Rnd_545x39_7N6M_AK")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_30Rnd_545x39_7N6M_AK")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"rhs_6b3_od_rpk"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_45"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_PMM"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_2("CUP_12Rnd_9x18_PMM_M"),
		LIST_20("pca_mag_45Rnd_545X39_RPK_Bakelite_Mixed_7N6M")
	};
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
	backpackItems[] = 
	{
		LIST_5("pca_mag_45Rnd_545X39_RPK_Bakelite_Mixed_7N6M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_5("pca_mag_45Rnd_545X39_RPK_Bakelite_Mixed_7N6M")
	};
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	backpack[] = 
	{
		"rhs_rpg_6b3"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_rpg7_PG7V_mag"),
		LIST_2("rhs_rpg7_OG7V_mag")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74_GL_Early",
		"CUP_arifle_AKS74_GL_Early"
	};
	vest[] = 
	{
		"rhs_6b3_od_vog_1",
		"rhs_6b3_od_vog_2"
	};
	backpackItems[] = 
	{
		LIST_21("CUP_1Rnd_HE_GP25_M"),
		LIST_8("CUP_IlumFlareWhite_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class tl : gren
{
	displayName = "Team Leader";
	vest[] = 
	{
		"rhs_6b3_od_officer"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_PMM"
	};
	magazines[] += 
	{
		LIST_2("CUP_12Rnd_9x18_PMM_M")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class sl : rm 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74_GL_Early",
		"CUP_arifle_AKS74_GL_Early"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_PMM"
	};
	magazines[] += 
	{
		LIST_2("CUP_12Rnd_9x18_PMM_M")
	};
	backpackItems[] =
	{
		LIST_2("rhs_30Rnd_545x39_AK_green"),
		LIST_21("CUP_1Rnd_HE_GP25_M"),
		LIST_8("CUP_IlumFlareWhite_GP25_M"),
		LIST_6("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_2("rhs_GRD40_Green"),
		LIST_2("rhs_GRD40_Red")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_13("CUP_1Rnd_HE_GP25_M"),
		LIST_8("CUP_IlumFlareWhite_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_2("rhs_GRD40_Green"),
		LIST_2("rhs_GRD40_Red"),
		LIST_2("rhs_mag_rdg2_black")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74_Early",
		"CUP_arifle_AKS74_Early"
	};
	vest[] = 
	{
		"rhs_6b3_od_officer"
	};
	backpackItems[] =
	{
		LIST_2("rhs_30Rnd_545x39_AK_green"),
		LIST_2("rhs_mag_rdg2_black")
	};
};

class fac : sl 
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_11("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_4("rhs_GRD40_Green"),
		LIST_4("rhs_GRD40_Red"),
		LIST_2("rhs_mag_rdg2_black")
	};
	linkedItems[] += 
	{
		"Laserdesignator"
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	sidearmWeapon[] = 
	{
		"CUP_hgun_PMM"
	};
	magazines[] += 
	{
		LIST_2("CUP_12Rnd_9x18_PMM_M")
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class mmg : rm 
{
	displayName = "Medium Machine Gunner";
	vest[] = 
	{
		"rhs_6b3_od_rpk"
	};
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_mg3"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_PMM"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_2("CUP_12Rnd_9x18_PMM_M"),
		LIST_3("hlc_250Rnd_762x51_M_MG3")
	};
	backpackItems[] = 
	{
		LIST_6("hlc_250Rnd_762x51_M_MG3")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_PMM"
	};
	magazines[] += 
	{
		LIST_2("CUP_12Rnd_9x18_PMM_M")
	};
	backpackItems[] = 
	{
		LIST_8("hlc_250Rnd_762x51_M_MG3")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_PMM"
	};
	secondaryWeapon[] = 
	{
		"sp_fwa_m67"
	};
	magazines[] += 
	{
		LIST_2("CUP_12Rnd_9x18_PMM_M")
	};
	backpackItems[] = 
	{
		LIST_2("sp_fwa_m67_1rnd_heat")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_PMM"
	};
	magazines[] += 
	{
		LIST_2("CUP_12Rnd_9x18_PMM_M")
	};
	backpackItems[] = 
	{
		LIST_2("sp_fwa_m67_1rnd_heat"),
		"sp_fwa_m67_1rnd_he"
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	vest[] = 
	{
		"rhsusf_spcs_ocp_crewman"
	};
	headgear[] = 
	{
		"rhsusf_cvc_helmet",
		"rhsusf_cvc_alt_helmet",
		"rhsusf_cvc_ess"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_9("rhs_30Rnd_545x39_7N6M_AK")
	};
	backpackItems[] = 
	{
		"ToolKit"
	};
};

class crew_co : crew 
{
	displayName = "Crewman Commander";
	sidearmWeapon[] = 
	{
		"CUP_hgun_PMM"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("CUP_12Rnd_9x18_PMM_M"),
		LIST_2("rhs_mag_rdg2_black")
	};
	linkedItems[] +=
	{
		"rhssaf_zrak_rd7j"
	};
};

class hp : rm 
{
	displayName = "Helicopter Pilot";
	vest[] = 
	{
		"rhsusf_spcs_ocp_crewman"
	};
	headgear[] = 
	{
		"rhsusf_ihadss"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_PMM"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("rhs_30Rnd_545x39_7N6M_AK"),
		LIST_3("CUP_12Rnd_9x18_PMM_M"),
		LIST_2("rhs_mag_rdg2_black")
	};
};

class eng : rm 
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_4("DemoCharge_Remote_Mag"),
		LIST_2("SatchelCharge_Remote_Mag")
	};
};

//********************************************************************************//
//Uncommon Roles - !!! CUSTOM ENTRIES NEEDED FOR CURATED ARSENAL !!!
//********************************************************************************//
class jp : rm 
{
	displayName = "Jet Pilot";
	uniform[] = 
	{
		"CUP_U_B_USArmy_PilotOverall"
	};
	vest[] = 
	{
		"CUP_V_B_PilotVest"
	};
	headgear[] = 
	{
		"rhsusf_hgu56p_visor_mask"
	};
	backpack[] = 
	{
		"B_Parachute"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_PMM"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("CUP_12Rnd_9x18_PMM_M"),
		LIST_2("rhs_mag_rdg2_black")
	};
	backpackItems[] = {};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	vest[] = 
	{
		"rhsusf_spcs_ocp_sniper"
	};
	headgear[] = 
	{
		"rhsusf_ach_helmet_camo_ocp"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m14ebrri"
	};
	scope[] = 
	{
		"rhsusf_acc_ACOG"
	};
	attachment[] = {};
	bipod[] = 
	{
		"rhsusf_acc_harris_bipod"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_9("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	backpackItems[] = 
	{
		LIST_12("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class spt : rm 
{
	displayName = "Spotter";
	headgear[] = 
	{
		"rhsusf_ach_helmet_camo_ocp"
	};
	scope[] = 
	{
		"rhsusf_acc_ACOG"
	};
	backpackItems[] += 
	{
		LIST_2("SmokeShell"),
		"ACE_SpottingScope",
		"ACE_Tripod"
	};
	linkedItems[] += 
	{
		"Rangefinder"
	};
};

class hmg : rm 
{
	displayName = "Heavy Machine Gunner";
	backpack[] = 
	{
		"ace_compat_rhs_usf3_m2_carry"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_9("rhs_30Rnd_545x39_7N6M_AK"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
};

class ahmg : rm 
{
	displayName = "Assistant Heavy Machine Gunner";
	backpack[] = 
	{
		"ace_csw_m3CarryTripodLow"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_9("rhs_30Rnd_545x39_7N6M_AK"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};