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
	goggles[] = {};
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
		LIST_1("Atlas_U_B_H_Soldier_commando_F"),
		LIST_1("Atlas_U_B_H_Soldier_commando_shortsleeve_F")
	};
	vest[] = 
	{
		"V_PlateCarrierIA1_oli",
		"V_PlateCarrierIA2_oli",
		"V_PlateCarrierIAGL_oli"
	
	};
	headgear[] = 
	{
		"CUP_H_PASGTv2_OD",
		"$NONE_usm_helmet_pasgt_ceswd_odg$",
		"CUP_H_PASGTv2_NVG_OD"
	};
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
	primaryWeapon[] = 
	{
		LIST_1("CUP_Famas_F1_Rail_Wood"),
		LIST_1("CUP_Famas_F1_Rail")
	};
	scope[] = 
	{
		"RKSL_optic_EOT552"
	};
	bipod[] = 
	{
		"rhsusf_acc_rvg_blk"
	};
	attachment[] = 
	{
		"pca_flashlight_sf"
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
		LIST_2("ACE_splint")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_13("CUP_25Rnd_556x45_Famas")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_25Rnd_556x45_Famas")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"pca_carryall_od"
	};
	primaryWeapon[] = 
	{
		LIST_2("CUP_lmg_M60E4"),
		LIST_2("CUP_lmg_M60E4_jungle")
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Colt1911"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("CUP_7Rnd_45ACP_1911"),
		LIST_3("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"pca_carryall_od"
	};
	backpackItems[] += 
	{
		LIST_4("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
	linkedItems[] = 
	{
		"rhssaf_zrak_rd7j",
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"pca_weap_m136cs"
	};
	backpackItems[] = 
	{
		"pca_weap_m136cs"
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	sidearmWeapon[] = 
	{
		"ptv_L2BPG"
	};
	backpackItems[] = 
	{
		LIST_13("CUP_1Rnd_HE_M203"),
		LIST_4("CUP_25Rnd_556x45_Famas_Tracer_Red"),
		LIST_2("SmokeShell"),
		LIST_1("DemoCharge_Remote_Mag"),
		LIST_1("ACE_Clacker")
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] =
	{
		LIST_2("CUP_25Rnd_556x45_Famas_Tracer_Red"),
		LIST_13("CUP_1Rnd_HE_M203"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell"),
		LIST_1("DemoCharge_Remote_Mag"),
		LIST_1("ACE_Clacker")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] =
	{
		LIST_2("CUP_25Rnd_556x45_Famas_Tracer_Red"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed"),
		LIST_13("CUP_1Rnd_HE_M203"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell"),
		LIST_1("DemoCharge_Remote_Mag"),
		LIST_1("ACE_Clacker")
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpackItems[] +=
	{
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_packingBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_16("ACE_bloodIV_500"),
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
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_personalAidKit"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class hp : rm 
{
	displayName = "Helicopter Pilot";
	headgear[] = 
	{
		"rhsusf_hgu56p_visor"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
	vest[] = 
	{
		"V_PlateCarrierIA1_oli"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_smg_mp5a3$"
	};
	attachment[] = 
	{
		"$NONE_hlc_acc_surefiregrip$"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("SmokeShellPurple"),
		LIST_2("SmokeShellBlue"),
		LIST_2("ACE_HandFlare_Green"),
		LIST_5("hlc_30Rnd_9x19_FMJ_MP5")
	};
};

class fac : sl 
{
	displayName = "FAC";
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] =
	{
		LIST_2("CUP_25Rnd_556x45_Famas_Tracer_Red"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed"),
		LIST_13("CUP_1Rnd_HE_M203"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};