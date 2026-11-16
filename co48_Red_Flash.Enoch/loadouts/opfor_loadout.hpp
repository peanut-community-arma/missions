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
	faces[] = 
	{
		LIST_2("WhiteHead_03"),
		LIST_2("WhiteHead_04"),
		LIST_2("WhiteHead_05"),
		LIST_2("WhiteHead_06"),
		LIST_2("WhiteHead_07"),
		LIST_2("WhiteHead_08"),
		LIST_2("WhiteHead_09"),
		LIST_2("WhiteHead_10"),
		LIST_2("WhiteHead_11"),
		LIST_2("WhiteHead_12"),
		LIST_2("WhiteHead_13")
	};
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
		"simc_bdu_roll_m81_eto",
		"simc_bdu_m81_eto"
	};
	vest[] = 
	{
		LIST_4("simc_vest_pasgt_lbv_alt_od3"),
		"simc_vest_pasgt_lbv_lc2_od3"
	};
	headgear[] = 
	{
		LIST_3("simc_pasgt_m81_band"),
		LIST_2("simc_pasgt_m81_swdg_cover_band"),
		LIST_1("H_Simc_pasgt_m81_SWDG_low")
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("simc_lw_ruck_light"),
		"simc_lw_ruck"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_7("rhs_mag_30Rnd_556x45_M855_Stanag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_M249_E1"
	};
	vest[] = 
	{
		"simc_vest_pasgt_lc2_saw_od3"
	};
	backpack[] = 
	{
		LIST_2("simc_lw_ruck_light"),
		"simc_lw_ruck"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("rhsusf_200Rnd_556x45_M855_mixed_soft_pouch")
	};
};

class mg : rm 
{
	displayName = "mmg";
	primaryWeapon[] = 
	{
		"CUP_lmg_M60"
	};
	vest[] = 
	{
		"simc_vest_pasgt_lc2_saw_od3"
	};
	backpack[] = 
	{
		LIST_2("simc_lw_ruck_light"),
		"simc_lw_ruck"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("rhsusf_100Rnd_762x51_m62_tracer")
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

class off : rm 
{
	displayName = "officer";
	vest[] = 
	{
		"simc_vest_pasgt_lbv_holster_alt_od3"
	};
	headgear[] = 
	{
		"H_Beret_02"
	};
	primaryWeapon[] = 
	{
		""
	};
	secondaryWeapon[] = 
	{
		"CUP_hgun_Colt1911"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_7Rnd_45ACP_1911")
	};
};