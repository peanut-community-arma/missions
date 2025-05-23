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
		"CUP_U_I_GUE_Anorak_02",
		"CUP_U_I_GUE_Anorak_03",
		"CUP_U_I_GUE_Flecktarn2",
		"CUP_U_O_CHDKZ_Lopotev",
		"CUP_U_O_CHDKZ_Kam_04",
		"CUP_U_O_CHDKZ_Kam_05",
		"CUP_U_O_CHDKZ_Kam_07",
		"CUP_U_O_CHDKZ_Kam_08",
		"CUP_U_O_Partisan_TTsKO",
		"CUP_U_O_Partisan_TTsKO_Mixed",
		"CUP_U_O_Partisan_VSR_Mixed1",
		"CUP_U_O_Partisan_VSR_Mixed2",
		"CUP_U_C_Woodlander_03"
	};
	// vest[] =
	// {
	// 	"CUP_V_CDF_6B3_1_FST",
	// 	"CUP_V_CDF_6B3_1_MNT",
	// 	"CUP_V_CDF_6B3_1_Green",
	// 	"CUP_V_CDF_6B3_3_FST",
	// 	"CUP_V_CDF_6B3_3_MNT",
	// 	"CUP_V_CDF_6B3_3_Green",
	// 	"CUP_V_CDF_6B3_5_FST",
	// 	"CUP_V_CDF_6B3_5_MNT",
	// 	"CUP_V_CDF_6B3_5_Green"
	// };
	vest[] =
	{
		"rhsgref_6b23_ttsko_forest",
		"rhsgref_6b23_ttsko_mountain",
		"rhsgref_6b23_khaki",
		"rhsgref_6b23_ttsko_digi",
		"rhs_6b23_ML_engineer",
		"rhs_6b23_engineer",
		"bear_6b23_od_engineer"
	};
	headgear[] =
	{
		"CUP_H_C_Ushanka_01",
		"CUP_H_RUS_Bandana_GSSh_Headphones",

		"pca_m97_pasgt_cdf_plum",
		"pca_m97_pasgt_cdf_ttsko_autumn",
		"pca_m97_pasgt_cdf_ttsko_forest",
		"pca_m97_pasgt_cdf_wdl",
		"pca_m97_pasgt_cdf_ttsko_desert",
		"pca_m97_pasgt_cdf_ttsko_mountain"
	};
	backpack[] =
	{
		"CUP_B_AlicePack_Khaki",
		"CUP_B_AlicePack_OD",
		"CUP_B_CivPack_WDL"
	};
	primaryWeapon[] =
	{
		"CUP_arifle_AK47_Early",
		"CUP_arifle_AKM_Early",
		"CUP_arifle_AKMS_Early",
		"CUP_arifle_AKS",
		"CUP_arifle_TYPE_56_2_Early"
	};
	scope[] = {};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine")
	};
	magazines[] =
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_10("rhs_30Rnd_762x39mm")
	};
	backpackItems[] =
	{
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_splint"),
		LIST_4("rhs_30Rnd_762x39mm")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	// vest[] =
	// {
	// 	"rhsusf_spcs_ocp_saw"
	// };
	// backpack[] =
	// {
	// 	"rhs_rd54_flora2"
	// };
	primaryWeapon[] =
	{
		"fwa_weap_rpd"
	};
	bipod[] = {};
	sidearmWeapon[] =
	{
		"rhs_weap_makarov_pm"
	};
	magazines[] =
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_2("rhs_mag_9x18_8_57N181S"),
		LIST_2("fwa_100rnd_762x39mm_rpd_mixed")
	};
	backpackItems[] =
	{
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_splint"),
		LIST_5("fwa_100rnd_762x39mm_rpd_mixed")
	};
};

class aar : rm
{
	displayName = "Assistant Automatic Rifleman";
	// backpack[] =
	// {
	// 	"rhs_rd54_flora2"
	// };
	backpackItems[] +=
	{
		LIST_5("fwa_100rnd_762x39mm_rpd_mixed")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class rm_lat : rm
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] =
	{
		"rhs_weap_rpg26"
	};
	backpackItems[] +=
	{
		"rhs_weap_rpg26"
	};
};

class gren : rm
{
	displayName = "Grenadier";
	primaryWeapon[] =
	{
		"CUP_arifle_AKM_GL_Early"
	};
	backpackItems[] =
	{
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_splint"),
		LIST_21("rhs_VOG25"),
		LIST_4("rhs_GDM40")
	};
};

class tl : rm
{
	displayName = "Team Leader";
	primaryWeapon[] =
	{
		"CUP_arifle_AKM_GL_Early"
	};
	backpackItems[] =
	{
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_splint"),
		LIST_2("rhs_30Rnd_762x39mm_tracer"),
		LIST_21("rhs_VOG25"),
		LIST_6("rhs_GDM40"),
		LIST_2("rhs_GRD40_Green"),
		LIST_2("rhs_GRD40_Red")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class sl : tl
{
	displayName = "Squad Leader";
	items[] +=
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] =
	{
		"rhs_weap_makarov_pm"
	};
	magazines[] +=
	{
		LIST_2("rhs_mag_9x18_8_57N181S")
	};
};

class sgt : sl
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_splint"),
		LIST_13("rhs_VOG25"),
		LIST_4("rhs_GDM40"),
		LIST_2("rhs_GRD40_Green"),
		LIST_2("rhs_GRD40_Red"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class co : sl
{
	displayName = "Platoon Commander";
};

class fac : sl
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_11("rhs_VOG25"),
		LIST_4("rhs_GDM40"),
		LIST_4("rhs_GRD40_Green"),
		LIST_4("rhs_GRD40_Red"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
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
	// backpack[] =
	// {
	// 	"rhs_rd54_flora2"
	// };
	backpackItems[] =
	{
		LIST_15("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_10("ACE_elasticBandage"),
		LIST_8("ACE_epinephrine"),
		LIST_8("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	sidearmWeapon[] =
	{
		"rhs_weap_makarov_pm"
	};
	magazines[] +=
	{
		LIST_2("rhs_mag_9x18_8_57N181S"),
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_15("ACE_fieldDressing"),
		LIST_20("ACE_packingBandage"),
		LIST_20("ACE_elasticBandage"),
		LIST_15("ACE_epinephrine"),
		LIST_15("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_8("ACE_splint"),
		LIST_4("ACE_tourniquet")
	};
};

class mmg : rm
{
	displayName = "Medium Machine Gunner";
	// vest[] =
	// {
	// 	"rhsusf_spcs_ocp_saw"
	// };
	backpack[] =
	{
		"CUP_B_HikingPack_Civ"
	};
	primaryWeapon[] =
	{
		"rhs_weap_pkm"
	};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	sidearmWeapon[] =
	{
		"rhs_weap_makarov_pm"
	};
	magazines[] =
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_2("rhs_mag_9x18_8_57N181S"),
		LIST_3("rhs_100Rnd_762x54mmR_7N26")
	};
	backpackItems[] =
	{
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_splint"),
		LIST_5("rhs_100Rnd_762x54mmR_7N26")
	};
};

class ammg : rm
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] =
	{
		"CUP_B_HikingPack_Civ"
	};
	backpackItems[] =
	{
		LIST_5("ACE_tourniquet"),
		LIST_2("ACE_splint"),
		LIST_5("rhs_100Rnd_762x54mmR_7N26")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class mat : rm
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] =
	{
		"rhs_rd54_flora2"
	};
	sidearmWeapon[] =
	{
		"rhs_weap_makarov_pm"
	};
	secondaryWeapon[] =
	{
		"rhs_weap_maaws"
	};
	secondaryAttachments[] =
	{
		"rhs_optic_maaws"
	};
	magazines[] +=
	{
		LIST_2("rhs_mag_9x18_8_57N181S")
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_maaws_HEAT")
	};
};

class amat : rm
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] =
	{
		"rhs_rd54_flora2"
	};
	sidearmWeapon[] =
	{
		"rhs_weap_makarov_pm"
	};
	magazines[] +=
	{
		LIST_2("rhs_mag_9x18_8_57N181S")
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_maaws_HEAT"),
		"rhs_mag_maaws_HEDP",
		"rhs_mag_maaws_HE"
	};
	linkedItems[] +=
	{
		"Binocular"
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
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_9("rhs_30Rnd_762x39mm")
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
		"rhs_weap_makarov_pm"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] +=
	{
		LIST_3("rhs_mag_9x18_8_57N181S"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"Binocular"
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
		"rhs_weap_makarov_pm"
	};
	magazines[] =
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_7("rhs_30Rnd_762x39mm"),
		LIST_3("rhs_mag_9x18_8_57N181S"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class eng : rm
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	backpack[] =
	{
		"CUP_B_HikingPack_Civ"
	};
	backpackItems[] =
	{
		"ToolKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_6("rhsusf_m112_mag")
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
		"rhs_weap_makarov_pm"
	};
	magazines[] =
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_5("rhs_mag_9x18_8_57N181S"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
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
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_9("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	backpackItems[] =
	{
		LIST_12("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	linkedItems[] +=
	{
		"Binocular"
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
		LIST_2("rhs_mag_rdg2_white"),
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
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_9("rhs_30Rnd_762x39mm"),
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
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_9("rhs_30Rnd_762x39mm"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] =
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};
