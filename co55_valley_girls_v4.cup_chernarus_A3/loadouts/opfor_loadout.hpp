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
		"rhs_uniform_vkpo_gloves",
		"rhs_uniform_emr_patchless",
		"rhs_uniform_vkpo_gloves_alt"
	};
	vest[] = 
	{
		LIST_3("rhs_6b23_digi_6sh92"),
		"rhs_6b23_6sh116"
	};
	headgear[] = 
	{
		LIST_3("rhs_6b7_1m_emr"),
		LIST_2("rhs_6b7_1m_emr_ess")
	};
	backpack[] = 
	{
	};
	primaryWeapon[] = 
	{
		"rhs_weap_ak74m"
	};
	attachment[] =
	{
		"rhs_acc_2dpzenit"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("rhs_30Rnd_545x39_7N10_AK")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"rhs_weap_pkm"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg26"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	vest[] =
	{
		"rhs_6b23_digi_6sh92"
	};
	backpack[] = 
	{
		"rhs_rpg_empty"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_rpg7_PG7VL_mag"),
		"rhs_rpg7_PG7VR_mag",
		"rhs_rpg7_OG7V_mag"
	};
};

class mlt : rm 
{
	displayName = "Militia";
	uniform[] =
	{
		LIST_2("CUP_U_O_CHDKZ_Kam_05"),
		"CUP_U_O_CHDKZ_Kam_04",
		"CUP_U_O_CHDKZ_Kam_06"
	};
	vest[] =
	{
		LIST_3("CUP_V_O_Ins_Carrier_Rig_Light"),
		"CUP_V_O_Ins_Carrier_Rig_Com"
	};
	headgear[] = 
	{
		LIST_2("CUP_H_RUS_SSH68_cover_vsr98"),
		LIST_3("CUP_H_RUS_SSH68_green")
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
};

class mlt_ar : mlt 
{
	displayName = "Militia AR";
	vest[] = 
	{
		LIST_3("CUP_V_O_Ins_Carrier_Rig_Light"),
		"CUP_V_O_Ins_Carrier_Rig_MG"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_rpk74m"
	};
	scope[] = {};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("CUP_60Rnd_TE1_Yellow_Tracer_545x39_AK74M_M")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	vest[] = 
	{
		"rhs_6b23_digi_6sh92_spetsnaz2"
	};
	headgear[] = 
	{
		"rhs_zsh7a_mike_green",
		"rhs_zsh7a_mike_green_alt"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_aks74u"
	};
	scope[] = {};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};