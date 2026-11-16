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
	displayName = "Rifleman (AKM)";
	uniform[] = 
	{
		"U_C_FormalSuit_01_tshirt_gray_F"
	};
	vest[] = 
	{
		"pca_vest_invisible"
	};
	headgear[] = 
	{
		""
	};
	goggles[] = 
	{
		LIST_10(""),
		"G_Shades_Blue",
		"G_Spectacles",
		"G_Squares_Tinted",
		"G_Aviator"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM",
		"CUP_arifle_AKMS"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_4("CUP_30Rnd_762x39_AK47_bakelite_M")
	};
};

class rm2 : rm
{
	displayName = "Rifleman (M16)";
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2",
		"CUP_arifle_Colt727"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_4("CUP_30Rnd_556x45_Stanag")
	};
};

class rm3 : rm
{
	displayName = "Pistol (UZI)";
	primaryWeapon[] = 
	{
		""
	};
	secondaryWeapon[] = 
	{
		"CUP_hgun_MicroUzi"
	};
	magazines[] = 
	{
		LIST_3("CUP_30Rnd_9x19_UZI")
	};
};

class rm4 : rm
{
	displayName = "Pistol (SCORPION)";
	primaryWeapon[] = 
	{
		""
	};
	secondaryWeapon[] = 
	{
		"CUP_hgun_SA61"
	};
	magazines[] = 
	{
		LIST_3("CUP_20Rnd_B_765x17_Ball_M")
	};
};

class rm5 : rm
{
	displayName = "Pistol (M9)";
	primaryWeapon[] = 
	{
		""
	};
	secondaryWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	magazines[] = 
	{
		LIST_3("CUP_15Rnd_9x19_M9")
	};
};

class rm6 : rm
{
	displayName = "Pistol (PM)";
	primaryWeapon[] = 
	{
		""
	};
	secondaryWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		LIST_3("CUP_8Rnd_9x18_Makarov_M")
	};
};

class rm7 : rm
{
	displayName = "Pistol (Taurus)";
	primaryWeapon[] = 
	{
		""
	};
	secondaryWeapon[] = 
	{
		"CUP_hgun_TaurusTracker455"
	};
	magazines[] = 
	{
		LIST_3("CUP_6Rnd_45ACP_M")
	};
};

class rm8 : rm
{
	displayName = "Rifleman (Police)";
	uniform[] = 
	{
		"U_B_GEN_Commander_F"
	};
	vest[] = 
	{
		"CUP_V_PMC_CIRAS_Black_Patrol"
	};
	headgear[] = 
	{
		"CUP_H_Ger_M92_Black",
		"CUP_H_Ger_M92_Black_GG",
		"CUP_H_Ger_M92_Black_GG_CB",
		"CUP_H_Ger_M92_Black_GG_CF"
	};
	goggles[] = 
	{
		LIST_10("")
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_4("CUP_30Rnd_556x45_Stanag"),
		"CUP_HandGrenade_M67",
		"SmokeShell"
	};
};

class rm9 : rm
{
	displayName = "Rifleman (Police + Shield)";
	uniform[] = 
	{
		"U_B_GEN_Commander_F"
	};
	vest[] = 
	{
		"CUP_V_PMC_CIRAS_Black_Patrol"
	};
	headgear[] = 
	{
		"CUP_H_Ger_M92_Black",
		"CUP_H_Ger_M92_Black_GG",
		"CUP_H_Ger_M92_Black_GG_CB",
		"CUP_H_Ger_M92_Black_GG_CF"
	};
	goggles[] = 
	{
		LIST_10("")
	};
	primaryWeapon[] = 
	{
		"CUP_hgun_BallisticShield_Armed_M9"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_4("CUP_15Rnd_9x19_M9"),
		"CUP_HandGrenade_M67",
		"SmokeShell"
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_M249_E2"
	};
	magazines[] = 
	{
		LIST_3("CUP_200Rnd_TE4_Green_Tracer_556x45_M249")
	};
};

class ar2 : rm 
{
	displayName = "Submachine Gunner (UZI)";
	primaryWeapon[] = 
	{
		"CUP_smg_UZI"
	};
	magazines[] = 
	{
		LIST_3("CUP_32Rnd_9x19_UZI_M")
	};
};

class ar3 : rm 
{
	displayName = "Submachine Gunner (MP5)";
	primaryWeapon[] = 
	{
		"CUP_smg_MP5A5"
	};
	magazines[] = 
	{
		LIST_3("CUP_30Rnd_9x19_MP5")
	};
};

class mg : rm 
{
	displayName = "Shotgunner";
	primaryWeapon[] = 
	{
		"CUP_sgun_M1014_Entry"
	};
	magazines[] = 
	{
		LIST_4("CUP_6Rnd_12Gauge_Pellets_No0_Buck")
	};
};

class mg2 : rm 
{
	displayName = "Shotgunner (Double Barrel)";
	primaryWeapon[] = 
	{
		"bnae_spr220_virtual"
	};
	magazines[] = 
	{
		LIST_4("2Rnd_00_Buckshot_Magazine")
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

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"hendrix_rpg_1"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	secondaryAttachments[] = 
	{
		""
	};
	backpackItems[] = 
	{
		LIST_3("CUP_PG7VL_M"),
		"CUP_OG7_M"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	magazines[] += 
	{
		LIST_3("CUP_HandGrenade_RGD5"),
		LIST_2("SmokeShell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_simc_pack_alice_0"
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
		//LIST_2("ACE_adenosine")
	};
};

class engineer : rm 
{
	displayName = "Engineer";
	backpack[] = 
	{
		"B_simc_pack_alice_0"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter",
		"CUP_MineE_M"
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	headgear[] = 
	{
		"CUP_H_SLA_TankerHelmet"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74U"
	};
	scope[] = {};
	magazines[] = 
	{
		LIST_5("CUP_30Rnd_545x39_AK_M")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"CUP_H_RUS_ZSH_Shield_Up",
		"CUP_H_RUS_ZSH_Shield_Down"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74U"
	};
	scope[] = {};
	magazines[] = 
	{
		LIST_5("CUP_30Rnd_545x39_AK_M")
	};
};