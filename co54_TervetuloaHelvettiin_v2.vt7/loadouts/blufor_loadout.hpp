// ~1989 Soviet ~Marines

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
		"pca_uniform_m88_field_oli"
	};
	vest[] = 
	{
		"pca_6b5_rifleman_oli"
	};
	headgear[] = 
	{
		"CUP_H_RUS_SSH68_cover_berezka",
        LIST_2("CUP_H_SLA_Helmet")
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		LIST_8("CUP_arifle_AK74_Early"),
		LIST_4("$NONE_hlc_rifle_ak74_worn$"),
		"$NONE_hlc_rifle_ak74_dirty$",
		LIST_2("CUP_arifle_AKS74_Early")
	};
	items[] =
	{
		LIST_8("ACE_fieldDressing"),
		LIST_8("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_13("rhs_30Rnd_545x39_7N6M_plum_AK")
	};
	backpackItems[] = 
	{};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"rhs_6b3_od_rpk"
	};
	backpack[] = 
	{
		"rhs_tortila_olive"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_45"
	};
	bipod[] = {};
	attachment[] = {};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_3("pca_mag_45Rnd_545x39_Bakelite_Mixed_7N6M")
	};
	backpackItems[] = 
	{
		LIST_4("pca_mag_45Rnd_545x39_Bakelite_Mixed_7N6M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"rhs_tortila_olive"
	};
	backpackItems[] += 
	{
		LIST_4("pca_mag_45Rnd_545x39_Bakelite_Mixed_7N6M")
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
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"rhs_6b3_brn_vog_1"
	};
	primaryWeapon[] = 
	{
		LIST_2("CUP_arifle_AKS74_GL_Early"),
		"CUP_arifle_AK74M_GL"
	};
	backpackItems[] = 
	{
		LIST_21("rhs_VOG25"),
		LIST_4("rhs_GRD40_White")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	vest[] = 
	{
		"pca_6b5_officer_oli"
	};
	headgear[] = 
	{
		"pca_m88_fieldcap_ogrn"
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
		"CUP_arifle_AKS74_GL_Early"
	};
	backpackItems[] =
	{};
};

class co : sl 
{
	displayName = "Platoon Commander";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74_Early"
	};
};

class commissar : co
{
	displayName = "Commissar";
	headgear[] = {"rhs_beret_mvd"};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpackItems[] +=
	{
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_12("ACE_epinephrine"),
		LIST_8("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet")
	};
	vest[] = {
		LIST_2("pca_6b5_medic_oli"),
		"pca_6b5_medic_plum"
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	backpack[] = {"rhs_tortila_olive"};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_40("ACE_elasticBandage"),
		LIST_10("ACE_fieldDressing"),
		LIST_20("ACE_packingBandage"),
		LIST_20("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class mmg : ar
{
	displayName = "Medium Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_PKMN"
	};
	scope[] = {
		"cup_optic_pechenegscope"
	};
	bipod[] = {};
	attachment[] = {};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
	backpackItems[] = 
	{
		LIST_6("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class ammg : aar
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = {"rhs_tortila_olive"};
	backpackItems[] = 
	{
		LIST_7("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"rhs_rpg_6b3"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] = 
	{
		"rhs_acc_pgo7v3"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_rpg7_PG7VL_mag"),
		LIST_2("rhs_rpg7_PG7VS_mag")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"rhs_rpg_6b3"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_rpg7_PG7VL_mag"),
		LIST_2("rhs_rpg7_PG7VS_mag")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class eng : rm 
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	backpack[] = 
	{
		"rhsusf_assault_eagleaiii_ocp"
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

class dm : rm 
{
	displayName = "Designated Marksman";
	attachment[] = {};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	primaryWeapon[] = {"CUP_arifle_AKS74U"};
	vest[] = 
	{
		"rhs_6b2"
	};
	headgear[] = 
	{
		"rhs_tsh4"
	};
	magazines[] = 
	{
		LIST_9("rhs_30Rnd_545x39_7N6M_plum_AK")
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
		LIST_3("CUP_8Rnd_9x18_Makarov_M")
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
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
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