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
		"rhs_uniform_gorka_r_y_gloves"
	};
	vest[] = 
	{
		"wsx_6b23_6sh116_blk"
	};
	headgear[] = 
	{
		LIST_3("rhs_6b28_green_bala"),
		LIST_2("rhs_6b28_green_ess_bala")
	};
	backpack[] = 
	{
	
	};
	primaryWeapon[] = 
	{
		"hlc_rifle_ak12"
	};
	scope[] = 
	{
		"rhs_acc_1p87"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("rhs_30Rnd_545x39_7N10_AK")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"hlc_rifle_rpk12"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_10("pca_mag_45Rnd_545X39_RPK_Black_Mixed_7N10")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg_top_rail_B50_vfg"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("rhs_100Rnd_762x54mmR")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	primaryWeapon[] = 
	{
		"hlc_rifle_aek971"
	};
	scope[] = 
	{
		"cup_optic_kobra"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg26"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"pca_rd54_blk"
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
		LIST_3("rhs_rpg7_PG7VL_mag"),
		"rhs_rpg7_OG7V_mag"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"wsx_6b23_6sh116_blk_vog"
	};
	backpack[] = 
	{
		"rhs_r148"
	};
	primaryWeapon[] = 
	{
		"hlc_rifle_ak12_gp25"
	};
	magazines[] += 
	{
		LIST_9("rhs_VOG25"),
		LIST_2("rhs_GRD40_White")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"rhs_medic_bag"
	};
	backpackItems[] = 
	{
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_packingBandage"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_1("ACE_bloodIV")
	};
};

class engineer : rm 
{
	displayName = "Engineer";
	backpack[] = 
	{
		"rhs_rk_sht_30_emr_engineer_empty"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter",
		LIST_2("rhs_ec400_sand_mag")
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	vest[] = 
	{
		"bear_6b23_od_crew"
	};
	headgear[] = 
	{
		"rhs_6b48"
	};
	primaryWeapon[] = 
	{
		"hlc_rifle_aku12"
	};
	scope[] = {};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};

class crewcomander : crewman 
{
	displayName = "Crew Commander";
	vest[] = 
	{
		"bear_6b23_od_crewofficer"
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	uniform[] = 
	{
		"rhs_uniform_df15_tan"
	};
	vest[] = 
	{
		"rhs_vydra_3m"
	};
	headgear[] = 
	{
		"rhs_zsh7a_mike_green",
		"rhs_zsh7a_mike_green_alt"
	};
	goggles[] = {};
	primaryWeapon[] = 
	{
		"rhs_weap_aks74un"
	};
	scope[] = {};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};
class hvt : rm 
{
	displayName = "HVT OPFOR";
	goggles[] = 
	{
		"milgp_f_face_shield_tactical_shemagh_blk"
	};
	uniform[] = 
	{
		"CUP_U_CRYE_BLK_Full"
	};
	vest[] = 
	{
		"aegis_tacvest_blk"
	};
	headgear[] = 
	{
		"CUP_H_RUS_Beret_Spetsnaz"
	};
	backpack[] = {};
	primaryWeapon[] = 
	{
		"hlc_rifle_aku12"
	};	
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};