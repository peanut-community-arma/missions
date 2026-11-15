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
		"U_I_CombatUniform",
		"U_I_CombatUniform_shortsleeve"
	};
	vest[] =
	{
		LIST_2("V_PlateCarrierIA1_dgtl"),
		"V_PlateCarrierIA2_dgtl"
	};
	headgear[] =
	{
		"H_HelmetIA"
	};
	primaryWeapon[] =
	{
		"arifle_Mk20_F"
	};
	scope[] =
	{
		"acc_o_FMS"
	};
	magazines[] =
	{
		"HandGrenade",
		"SmokeShell",
		LIST_11("30Rnd_556x45_Stanag")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] =
	{
		"CUP_arifle_RPK74M"
	};
	magazines[] =
	{
		"HandGrenade",
		"SmokeShell",
		LIST_9("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M")
	};
};

class mg : rm
{
	displayName = "Machine Gunner";
	// vest[] =
	// {
	// 	"CUP_Vest_RUS_6B45_Sh117_PKP"
	// };
	primaryWeapon[] =
	{
		"LMG_Mk200_F"
	};
	scope[] =
	{
		"optic_Aco"
	};
	backpack[] =
	{
		"B_Kitbag_dgtl"
	};
	magazines[] =
	{
		"HandGrenade",
		"SmokeShell",
		LIST_4("200Rnd_65x39_cased_Box")
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
		"B_Kitbag_dgtl"
	};
	secondaryWeapon[] =
	{
		"CUP_launch_RPG7V"
	};
	secondaryAttachments[] =
	{
		"CUP_optic_PGO7V3"
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
	primaryWeapon[] =
	{
		"arifle_Mk20_GL_F"
	};
	magazines[] +=
	{
		LIST_1("1Rnd_HE_Grenade_shell")
		// LIST_2("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class medic : rm
{
	displayName = "Medic";
	backpack[] =
	{
		"B_Kitbag_dgtl"
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
		"B_Kitbag_dgtl"
	};
	backpackItems[] =
	{
		"ToolKit",
		"ACE_wirecutter",
		LIST_2("CUP_MineE_M")
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
		"CUP_arifle_AK105"
	};
	scope[] = {};
	magazines[] =
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("30Rnd_556x45_Stanag")
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
		"CUP_arifle_AK105"
	};
	scope[] = {};
	magazines[] =
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("30Rnd_556x45_Stanag")
	};
};
