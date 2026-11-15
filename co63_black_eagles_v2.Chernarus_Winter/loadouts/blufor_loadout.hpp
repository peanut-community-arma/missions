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
		"Atlas_U_CombatUniformNCU_01_mcam_wdl_F",
		"Atlas_U_CombatUniformNCU_02_mcam_wdl_F"
	};
	vest[] = 
	{
		"CUP_V_CPC_communications_coy",
		"CUP_V_CPC_Fast_coy",
		"CUP_V_CPC_light_coy",
		"CUP_V_CPC_medical_coy",
		"CUP_V_CPC_tl_coy",
		"CUP_V_CPC_weapons_coy",
		"CUP_V_CPC_communicationsbelt_coy",
		"CUP_V_CPC_Fastbelt_coy",
		"CUP_V_CPC_lightbelt_coy",
		"CUP_V_CPC_medicalbelt_coy",
		"CUP_V_CPC_tlbelt_coy",
		"CUP_V_CPC_weaponsbelt_coy",
		"CUP_V_JPC_communications_coy",
		"CUP_V_JPC_Fast_coy",
		"CUP_V_B_JPC_Tan_Light",
		"CUP_V_JPC_medical_coy",
		"CUP_V_JPC_tl_coy",
		"CUP_V_JPC_weapons_coy",
		"CUP_V_JPC_communicationsbelt_coy",
		"CUP_V_JPC_Fastbelt_coy",
		"CUP_V_JPC_lightbelt_coy",
		"CUP_V_JPC_medicalbelt_coy",
		"CUP_V_JPC_tlbelt_coy",
		"CUP_V_JPC_weaponsbelt_coy"
	};
	headgear[] = 
	{
		"Aegis_H_Helmet_FASTMT_Cover_tan_F",
		"Aegis_H_Helmet_FASTMT_cbr_F",
		"Aegis_H_Helmet_FASTMT_Headset_cbr_F",
		"Aegis_H_Helmet_FASTMT_tan_F"
	};
	backpack[] = 
	{
		"B_Kitbag_cbr"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_ar18"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_packingBandage"),
		LIST_5("ACE_quikclot"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_13("sp_fwa_30Rnd_556_Ar18_Ball")
	};
	backpackItems[] = 
	{
		LIST_4("sp_fwa_30Rnd_556_Ar18_Ball")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_m1918a2_bar"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Colt1911"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_7Rnd_45ACP_1911"),
		LIST_3("sp_fwa_20Rnd_3006_BAR_Tracer")
	};
	backpackItems[] = 
	{
		LIST_4("sp_fwa_20Rnd_3006_BAR_Tracer")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	backpackItems[] += 
	{
		LIST_4("sp_fwa_20Rnd_3006_BAR_Tracer")
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
		"CUP_launch_M136"
	};
	backpackItems[] += 
	{
		"CUP_launch_M136"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A1GL"
	};
	backpackItems[] = 
	{
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_21("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A1GL"
	};
	backpackItems[] = 
	{
		LIST_17("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_3("CUP_30Rnd_556x45_Stanag_Tracer_Red"),
		LIST_2("SmokeShell")
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
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A1GL"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Colt1911"
	};
	magazines[] += 
	{
		LIST_2("CUP_7Rnd_45ACP_1911")
	};
	backpackItems[] =
	{
		LIST_3("CUP_30Rnd_556x45_Stanag_Tracer_Red"),
		LIST_17("CUP_1Rnd_HE_M203"),
		LIST_8("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_3("CUP_30Rnd_556x45_Stanag_Tracer_Red"),
		LIST_13("CUP_1Rnd_HE_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	backpack[] =
	{
		"B_Carryall_cbr"
	};
	backpackItems[] +=
	{
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_1("SmokeShellRed")
	};
};

class fac : sl 
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_11("CUP_1Rnd_HE_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_4("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_4("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_4("1Rnd_SmokeRed_Grenade_shell"),
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
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_quikclot"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		//LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit"),
		LIST_30("ACE_suture")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	sidearmWeapon[] = 
	{
		"CUP_hgun_Colt1911"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_11("sp_fwa_30Rnd_556_Ar18_Ball"),
		LIST_2("CUP_7Rnd_45ACP_1911")
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_10("ACE_quikclot"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		//LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit")
	};
};

class mmg : rm 
{
	displayName = "Medium Machine Gunner";
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_M240_B"
	};
	scope[] = 
	{
		"CUP_optic_ElcanM145"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Colt1911"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_7Rnd_45ACP_1911"),
		LIST_2("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
	backpackItems[] = 
	{
		LIST_5("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Colt1911"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_11("sp_fwa_30Rnd_556_Ar18_Ball"),
		LIST_2("CUP_7Rnd_45ACP_1911")
	};
	backpackItems[] = 
	{
		LIST_6("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
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
		"ptv_M3_Tan"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Colt1911"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_MAAWS"
	};
	secondaryAttachments[] = 
	{
		"CUP_optic_MAAWS_Scope"
	};
	magazines[] += 
	{
		LIST_2("CUP_7Rnd_45ACP_1911")
	};
	backpackItems[] = 
	{
		LIST_2("CUP_MAAWS_HEAT_M")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"ptv_M3_Tan"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Colt1911"
	};
	magazines[] += 
	{
		LIST_2("CUP_7Rnd_45ACP_1911")
	};
	backpackItems[] = 
	{
		LIST_2("CUP_MAAWS_HEAT_M"),
		"CUP_MAAWS_HEDP_M"
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
		"CUP_H_CVC"
	};
	primaryWeapon[] = 
	{
		"JCA_smg_UMP_black_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("JCA_25Rnd_45ACP_UMP_Mag")
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
		"CUP_hgun_Colt1911"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("CUP_7Rnd_45ACP_1911"),
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
		"H_PilotHelmetHeli_B"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Colt1911"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("sp_fwa_30Rnd_556_Ar18_Ball"),
		LIST_3("CUP_7Rnd_45ACP_1911"),
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
		"B_Carryall_cbr"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_4("DemoCharge_Remote_Mag")
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
		"H_PilotHelmetFighter_B"
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
		"CUP_hgun_Colt1911"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("CUP_7Rnd_45ACP_1911"),
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
		"CUP_srifle_M14_DMR"
	};
	scope[] = 
	{
		"CUP_optic_ACOG_TA01B_Black"
	};
	attachment[] = {};
	bipod[] = 
	{
		"CUP_bipod_Harris_1A2_L_BLK"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_20Rnd_762x51_DMR")
	};
	backpackItems[] = 
	{
		LIST_12("CUP_20Rnd_762x51_DMR")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class spt : rm 
{
	displayName = "Spotter";
	scope[] = 
	{
		"CUP_optic_ACOG_TA01B_Black"
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
		"CUP_B_M2_Gun_Bag"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("sp_fwa_30Rnd_556_Ar18_Ball"),
		"ace_csw_100Rnd_127x99_mag"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag")
	};
};

class ahmg : rm 
{
	displayName = "Assistant Heavy Machine Gunner";
	backpack[] = 
	{
		"CUP_B_M2_Tripod_Bag"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("sp_fwa_30Rnd_556_Ar18_Ball"),
		"ace_csw_100Rnd_127x99_mag"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};