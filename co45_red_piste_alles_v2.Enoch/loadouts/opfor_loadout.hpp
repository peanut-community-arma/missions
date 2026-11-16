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
		"usp_g3c_aor2",
		"usp_g3c_kp_aor2",
		"usp_g3c_kp_mx_aor2",
		"usp_g3c_kp_or_aor2",
		"usp_g3c_mx_aor2",
		"usp_g3c_or_aor2",
		"usp_g3c_rs_aor2",
		"usp_g3c_rs_kp_aor2",
		"usp_g3c_rs_kp_mx_aor2",
		"usp_g3c_rs_kp_or_aor2",
		"usp_g3c_rs_mx_aor2",
		"usp_g3c_rs_or_aor2",
		"usp_g3c_rs2_aor2",
		"usp_g3c_rs2_kp_aor2",
		"usp_g3c_rs2_kp_mx_aor2",
		"usp_g3c_rs2_kp_or_aor2",
		"usp_g3c_rs2_mx_aor2",
		"usp_g3c_rs2_or_aor2",
		"$NONE_wsx_uniform_combat_s4f$"
	};
	vest[] = 
	{
		LIST_2("pca_otv_greek_lizard"),
		LIST_2("$NONE_wsx_vest_combat_m84w$"),
		"V_TacVest_camo"
		// For later BLUFOR:
		//pca_iotv_grenadier_oefcp
		//pca_iotv_medic_oefcp
		//pca_iotv_repair_oefcp
		//pca_iotv_rifleman_oefcp
		//pca_iotv_saw_oefcp
		//pca_iotv_teamleader_oefcp
	};
	headgear[] = 
	{
		"pca_opscore_cover_aor2_alt",
		"pca_opscore_cover_ct_aor2_alt",
		"pca_opscore_cover_ct_cb_aor2_alt",
		"pca_opscore_cover_ct_cm_aor2_alt",
		"pca_opscore_cover_ct_cw_aor2_alt",
		"pca_opscore_cover_aor2",
		"pca_opscore_cover_ct_aor2",
		"pca_opscore_cover_ct_cb_aor2",
		"pca_opscore_cover_ct_cm_aor2",
		"pca_opscore_cover_ct_cw_aor2",
		"$REVIEW_wsx_helmet_combat_s4f$",
		"$REVIEW_wsx_helmet_combat_s4f_ess_bare$",
		"$REVIEW_wsx_helmet_combat_s4f_ess$"
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("pca_assaultpack_od"),
		"pca_eagle_a3_od",
		"pca_carryall_od"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G36A3"
	};
	scope[] = 
	{
		LIST_2(""),
		"cup_optic_eotech553_black",
		"cup_optic_ac11704_black"
	};
	attachment[] =
	{
		"cup_acc_flashlight"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_7("hlc_30Rnd_556x45_EPR_G36")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"rhs_weap_minimi_para_railed"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_3("rhsusf_200Rnd_556x45_box")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_FNMAG"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_3("rhsusf_100Rnd_762x51")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_M136"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"pca_carryall_od"
	};
	secondaryWeapon[] = 
	{
		"sp_fwa_m2_carlGustav_no78"
	};
	backpackItems[] = 
	{
		LIST_3("fwa_1rnd_m2_carlgustaf_HEAT")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_G36A3_AG36"
	};
	magazines[] += 
	{
		LIST_2("CUP_1Rnd_HEDP_M203"),
		LIST_2("1Rnd_Smoke_Grenade_shell"),
		LIST_2("ACE_40mm_Flare_white")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"pca_eagle_a3_od",
		"pca_carryall_od"
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
		LIST_2("ACE_bloodIV"),
		LIST_2("ACE_adenosine")
	};
};

class engineer : rm 
{
	displayName = "Engineer";
	backpack[] = 
	{
		"pca_carryall_od"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter",
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	headgear[] = 
	{
		"rhs_6b48"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_smg_mp5a2$"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("hlc_30Rnd_9x19_FMJ_MP5")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"rhs_zsh7a_mike_green",
		"rhs_zsh7a_mike_green_alt"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_smg_mp5a2$"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("hlc_30Rnd_9x19_FMJ_MP5")
	};
};