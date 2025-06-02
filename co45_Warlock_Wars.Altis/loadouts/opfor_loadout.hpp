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
		"U_C_E_LooterJacket_01_F",
		"U_I_L_Uniform_01_tshirt_black_F",
		"U_I_L_Uniform_01_tshirt_skull_F",
		"U_I_L_Uniform_01_tshirt_sport_F"
	};
	vest[] = 
	{
		"pca_vest_invisible"
	};
	headgear[] = 
	{
		"$NONE_TC_Helmet_HalloweenPumpkin$"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_UZI"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_10("fwa_32rnd_9x19_uzi")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"rhs_weap_M590_8RD"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_8("CUP_8Rnd_12Gauge_Pellets_No0_Buck")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"rhs_weap_m70b1"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_8("rhssaf_30Rnd_762x39mm_M67")
	};
};

class warlock : rm 
{
	displayName = "warlock";
	uniform[] = 
	{
		"U_O_R_Gorka_01_black_F"
	};
	vest[] = 
	{
		"V_CarrierRigKBT_01_light_Black_F"
	};
	headgear[] = 
	{
		"rhssaf_beret_black"
	};
	goggles[] = 
	{
		"G_Blindfold_01_black_F"
	};
	hmd[] = 
	{
		"$NONE_pca_nvg_face_shield_blk$"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12_GL_545_F"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_10("aegis_30Rnd_545x39_7N22_ak12"),
		LIST_3("CUP_1Rnd_HE_M203")
	};
};

class warlock_gunner : rm 
{
	displayName = "warlock_gunner";
	uniform[] = 
	{
		"U_C_CBRN_Suit_01_Black_F"
	};
	vest[] = 
	{
		"V_CarrierRigKBT_01_heavy_Black_F"
	};
	headgear[] = 
	{
		"CUP_H_RUS_Altyn_black"
	};
	goggles[] = 
	{
		"G_Blindfold_01_black_F"
	};
	hmd[] = 
	{
		"avon_sf12_nvg"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg_B50_vfg"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("rhs_100Rnd_762x54mmR_green")
	};
};

class warlock_shield : rm 
{
	displayName = "warlock_shield";
	uniform[] = 
	{
		"U_C_CBRN_Suit_01_Black_F"
	};
	vest[] = 
	{
		"V_CarrierRigKBT_01_heavy_Black_F"
	};
	headgear[] = 
	{
		"CUP_H_RUS_Altyn_black"
	};
	goggles[] = 
	{
		"G_Blindfold_01_black_F"
	};
	hmd[] = 
	{
		"avon_sf12_nvg"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_BallisticShield_Sa61"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_10("CUP_50Rnd_B_765x17_Ball_M")
	};
};

class warlock_basic : rm 
{
	displayName = "warlock_basic";
	uniform[] = 
	{
		"U_C_CBRN_Suit_01_Black_F"
	};
	vest[] = 
	{
		"V_CarrierRigKBT_01_heavy_Black_F"
	};
	headgear[] = 
	{
		"CUP_H_RUS_Altyn_black"
	};
	goggles[] = 
	{
		"G_Blindfold_01_black_F"
	};
	hmd[] = 
	{
		"avon_sf12_nvg"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12_545_F"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_10("aegis_30Rnd_545x39_7N22_ak12")
	};
};