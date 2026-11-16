/*
	DESC: Guerilla Warlord, c.20XX
	CAMO: Paramilitary
	VEST: Storage Only
	AMMO: 7.62x39 57-N-231
*/

class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"pca_uniform_m88_field_kamysh_mixed_1",
		"pca_uniform_m88_field_kamysh_mixed_2",
		"pca_uniform_m88_field_kamysh_wdl",
		"pca_uniform_m88_field_vsr_1",
		"pca_uniform_m88_field_vsr_2"
	};
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
	// Ths is executed after the unit init is complete. Argument: _this = _unit
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	vest[] = 
	{
		"V_TacVest_blk",
		"V_TacVest_khk",
		"V_TacVest_oli"
	};
	headgear[] = 
	{
		"pca_beanie_blk",
		"pca_beanie_mgrn",
		"pca_beanie_tan",
		"pca_headband_red",
		"H_Bandanna_gry",
		"H_Bandanna_sgg",
		"rhssaf_bandana_digital",
		"rhssaf_bandana_oakleaf",
		"H_Booniehat_oli",
		"H_Booniehat_wdl_hs",
		"$NONE_usm_bdu_boonie_ubntgrstp$",
		"CUP_H_SLA_BeretRed",
		"H_Cap_blk",
		"H_Cap_grn",
		"pca_ssh68_helmet"
	};
	goggles[] = 
	{
		"G_Bandanna_aviator",
		"G_Bandanna_shades",
		"G_Bandanna_sport",
		"G_Bandanna_blk",
		"G_Bandanna_beast",
		"G_Bandanna_CandySkull",
		"G_Bandanna_Skull2",
		"G_Bandanna_Syndikat1",
		"CUP_Beard_Black"
	};
	backpack[] = 
	{
		"bear_sidor_strichtarn"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_akm",
		"rhs_weap_akms",
		"rhs_weap_m70ab2",
		"rhs_weap_m70b3n",
		"rhs_weap_m92",
		"rhs_weap_m305a"
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
		LIST_2("rhs_mag_f1"),
		LIST_4("rhs_30Rnd_762x39mm_bakelite")
	};
	backpackItems[] = 
	{
		//LIST_13("rhs_30Rnd_762x39mm_bakelite")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"$NONE_fwa_weap_rpd$"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_2("CUP_8Rnd_9x18_Makarov_M"),
		LIST_3("fwa_100rnd_762x39mm_rpd_mixed")
	};
	backpackItems[] = 
	{
		//LIST_4("fwa_100rnd_762x39mm_rpd_mixed")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_4("fwa_100rnd_762x39mm_rpd_mixed")
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
		"CUP_launch_RPG26"
	};
	backpackItems[] += 
	{
		//"rhs_weap_rpg26"
	};
};

class manpad : rm 
{
	displayName = "Rifleman (MANPAD)";
	secondaryWeapon[] = 
	{
		"rhs_weap_igla"
	};
	backpackItems[] += 
	{
		//"rhs_weap_igla"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"rhs_weap_akms_gp25"
	};
	backpackItems[] = 
	{
		LIST_6("rhs_VOG25"),
		LIST_1("rhs_GRD40_White")
	};
};

class tl : gren 
{
	displayName = "Team Leader";
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
	primaryWeapon[] = 
	{
		"rhs_weap_akms_gp25"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] += 
	{
		LIST_2("CUP_8Rnd_9x18_Makarov_M")
	};
	backpackItems[] =
	{
		LIST_2("rhs_30Rnd_762x39mm_bakelite_Tracer_Red"),
		LIST_21("rhs_VOG25"),
		LIST_6("rhs_GRD40_White"),
		LIST_2("rhs_GRD40_Green"),
		LIST_2("rhs_GRD40_Red")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_13("rhs_VOG25"),
		LIST_4("rhs_GRD40_White"),
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
	primaryWeapon[] = 
	{
		"rhs_weap_akm"
	};
	backpackItems[] =
	{
		LIST_2("rhs_30Rnd_762x39mm_bakelite_Tracer_Red"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class fac : sl 
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_11("rhs_VOG25"),
		LIST_4("rhs_GRD40_White"),
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
		"CUP_hgun_Makarov"
	};
	magazines[] += 
	{
		LIST_2("CUP_8Rnd_9x18_Makarov_M")
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
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_2("CUP_8Rnd_9x18_Makarov_M"),
		LIST_3("rhs_100Rnd_762x54mmR_green")
	};
	backpackItems[] = 
	{
		//LIST_6("rhs_100Rnd_762x54mmR_green")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	magazines[] += 
	{
		LIST_2("CUP_8Rnd_9x18_Makarov_M")
	};
	backpackItems[] = 
	{
		LIST_8("rhs_100Rnd_762x54mmR_green")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	sidearmWeapon[] = 
	{
		//"rhs_weap_makarov_pm"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] = 
	{
		//"rhs_acc_pgo7v"
	};
	magazines[] += 
	{
		//LIST_2("rhs_mag_9x18_8_57N181S")
	};
	backpackItems[] = 
	{
		LIST_2("rhs_rpg7_PG7VL_mag")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] += 
	{
		LIST_2("CUP_8Rnd_9x18_Makarov_M")
	};
	backpackItems[] = 
	{
		LIST_2("rhs_rpg7_PG7VL_mag"),
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
	headgear[] = 
	{
		"rhs_tsh4",
		"rhs_tsh4_bala",
		"rhs_tsh4_ess"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_9("rhs_30Rnd_762x39mm_bakelite")
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
		"CUP_hgun_Makarov"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("CUP_8Rnd_9x18_Makarov_M"),
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
	headgear[] = 
	{
		"CUP_H_RUS_Bandana_GSSh_Headphones",
		"CUP_H_PMC_EP_Headset",
		"H_Cap_headphones_gry"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("rhs_30Rnd_762x39mm_bakelite"),
		LIST_3("CUP_8Rnd_9x18_Makarov_M"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class eng : rm 
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
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
		"CUP_U_O_SLA_Overalls_Pilot"
	};
	vest[] = 
	{
		"CUP_V_CZ_vest20"
	};
	headgear[] = 
	{
		"rhs_zsh7a_alt"
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
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("CUP_8Rnd_9x18_Makarov_M"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	backpackItems[] = {};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	primaryWeapon[] = 
	{
		"CUP_srifle_Mosin_Nagant"
	};
	attachment[] = {};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_9("rhsgref_5Rnd_762x54_m38")
	};
	backpackItems[] = 
	{
		LIST_12("rhsgref_5Rnd_762x54_m38")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class spt : rm 
{
	displayName = "Spotter";
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
		LIST_2("rhs_mag_f1"),
		LIST_9("rhs_30Rnd_762x39mm_bakelite"),
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
		LIST_2("rhs_mag_f1"),
		LIST_9("rhs_30Rnd_762x39mm_bakelite"),
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

class atgm : rm 
{
	displayName = "Antitank Guided Missile Operator";
	backpack[] = 
	{
	};
	magazines[] = 
	{
	};
	backpackItems[] = 
	{
	};
};

class aatgm : rm 
{
	displayName = "Assistant Antitank Guided Missile Operator";
	backpack[] = 
	{
	};
	magazines[] = 
	{
	};
	backpackItems[] = 
	{
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};