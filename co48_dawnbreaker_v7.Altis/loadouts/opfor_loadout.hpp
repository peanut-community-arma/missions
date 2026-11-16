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
		"V_PlateCarrierIA1_dgtl",
		"V_PlateCarrierIA2_dgtl"
	};
	headgear[] = 
	{
		"pca_opscore_cover_aaf",
		"pca_opscore_cover_ct_aaf",
		"pca_opscore_cover_ct_cw_aaf"
	};
	backpack[] = 
	{
		"B_LegStrapBag_olive_F"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_ACR_wdl_68"
	};
	scope[] = 
	{
		"cup_optic_trijiconrx01_kf_od"
	};
	magazines[] = 
	{
		"SmokeShell",
		"HandGrenade",
		LIST_7("CUP_30Rnd_680x43_Stanag")
	};
	backpackItems[] =
	{
		LIST_1("FirstAidKit")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"LMG_Mk200_F"
	};
	scope[] = 
	{
		"cup_optic_compm2_low_coyote"
	};
	magazines[] = 
	{
		"200Rnd_65x39_cased_Box",
		LIST_3("ACE_200Rnd_65x39_cased_Box_green")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"LMG_Zafir_F"
	};
	sidearmWeapon[] = 
	{
		""
	};
	scope[] = 
	{
		"RKSL_optic_EOT552X_C"
	};
	magazines[] = 
	{
		"150Rnd_762x54_Box_tracer",
		LIST_3("150Rnd_762x54_Box")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_m72a7"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"B_AssaultPack_dgtl",
		"B_FieldPack_Oli"
	};
	secondaryWeapon[] = 
	{
		"sp_fwa_m67"
	};
	secondaryAttachments[] = 
	{
		""
	};
	backpackItems[] = 
	{
		LIST_2("sp_fwa_m67_1rnd_he"),
		"sp_fwa_m67_1rnd_heat"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_ACR_EGLM_wdl_68"
	};
	magazines[] += 
	{
		LIST_2("CUP_1Rnd_HE_M203"),
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : gren 
{
	displayName = "Team Leader";
	backpack[] = 
	{
		"B_RadioBag_01_digi_F"
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
};

class medic : rm 
{
	displayName = "Medic";
	vest[] = 
	{
		"V_PlateCarrierIAGL_dgtl"
	};
	backpack[] = 
	{
		"B_AssaultPack_dgtl",
		"B_FieldPack_Oli"
	};
	backpackItems[] = 
	{
		"Medikit",
		LIST_10("FirstAidKit")
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	vest[] = 
	{
		"V_TacVest_oli"
	};
	headgear[] = 
	{
		"H_HelmetCrew_I"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_acr68_sbr_grn$"
	};
	scope[] = 
	{
		"cup_optic_eotech553_black"
	};
	magazines[] = 
	{
		"SmokeShellGreen",
		"HandGrenade",
		LIST_4("CUP_30Rnd_680x43_Stanag")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	vest[] = 
	{
		"U_I_HeliPilotCoveralls"
	};
	headgear[] = 
	{
		"H_PilotHelmetHeli_I"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_acr68_sbr_grn$"
	};
	scope[] = 
	{
		"cup_optic_eotech553_black"
	};
	magazines[] = 
	{
		"SmokeShellGreen",
		"HandGrenade",
		LIST_4("CUP_30Rnd_680x43_Stanag")
	};
};

class aa : rm 
{
	displayName = "Missile Specialist (AA)";
	backpack[] = 
	{
		"B_Carryall_oli"
	};
	secondaryWeapon[] = 
	{
		"launch_i_Titan_F"
	};
	backpackItems[] = 
	{
		LIST_2("Titan_AA")
	};
};

class aaa : rm 
{
	displayName = "Assistant Missile Specialist (AA)";
	backpack[] = 
	{
		"B_Carryall_oli"
	};
	backpackItems[] = 
	{
		"Titan_AA"
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	primaryWeapon[] = 
	{
		"CUP_srifle_L129A1_w"
	};
	scope[] = 
	{
		"ptv_acc_shortdot"
	};
	attachment[] = 
	{
		"acc_pointer_ir"
	};
	bipod[] = 
	{
		"bipod_03_f_blk"
	};
	magazines[] = 
	{
		"SmokeShellGreen",
		"HandGrenade",
		LIST_6("CUP_20Rnd_762x51_L129_M")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};