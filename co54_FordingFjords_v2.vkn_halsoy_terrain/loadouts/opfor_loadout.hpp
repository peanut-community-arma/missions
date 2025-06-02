class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {"G_AirPurifyingRespirator_01_F"};
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
	sidearmWeapon[] = {
		"hgun_Pistol_heavy_01_black_F"
	};
	sidearmAttachments[] = {};
	// These are added to the uniform or vest first - overflow goes to backpack if there's any
	magazines[] = {
		LIST_2("11Rnd_45ACP_Mag")
	};
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
		"usp_g3c_or_blk"
	};
	vest[] = 
	{
		LIST_3("pca_spc_rifleman_alt_blk"),
		LIST_2("pca_spc_rifleman_blk")
	};
	headgear[] = 
	{
		LIST_3("Atlas_H_PASGT_Cover_alt_Black_F"),
		LIST_2("$NONE_usm_helmet_pasgt_ceswd_blk$")
	};
	backpack[] = 
	{
		"B_FieldPack_Blk"
	};
	primaryWeapon[] = 
	{
		LIST_3("CUP_arifle_XM8_Carbine"),
		"CUP_arifle_XM8_Compact"
	};
	scope[] = 
	{
		"$NONE_hlc_optic_rco_pcap$"
	};
	attachment[] = {
		"$NONE_hlc_acc_flashlight_pcap$"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_8("hlc_30Rnd_556x45_AP_G36")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"pca_spc_mg_blk"
	};
	primaryWeapon[] = 
	{
		"sps_weap_kac_lamg_blk"
	};
	attachment[] = {
		"acc_flashlight"
	};
	secondaryWeapon[] = 
	{
		LIST_4(""),
		"pca_weap_m136cs"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_4("sps_200Rnd_556x45_M855A1_KAC_Box")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] = 
	{
		"pca_spc_mg_blk"
	};
	primaryWeapon[] = 
	{
		"sps_weap_kac_amg_blk"
	};
	attachment[] = {
		"acc_flashlight"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("sps_100Rnd_762x51_m80A1_KAC_Box")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"pca_weap_m136cs"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"pca_spc_light_blk"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_XM8_Carbine_GL"
	};
	attachment[] = {
		"acc_flashlight"
	};
	secondaryWeapon[] = 
	{
		LIST_4(""),
		"pca_weap_m136cs"
	};
	magazines[] += 
	{
		LIST_9("rhs_mag_m441_HE"),
		LIST_2("rhs_mag_m714_White")
	};
};

class shot : rm 
{
	displayName = "Patrolman";
	vest[] = 
	{
		"pca_spc_light_blk"
	};
	primaryWeapon[] = 
	{
		"SMG_03C_TR_black"
	};
	attachment[] = {
		"acc_flashlight"
	};
	magazines[] += 
	{
		LIST_9("50Rnd_570x28_SMG_03")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		LIST_3("CUP_arifle_XM8_Carbine"),
		"CUP_arifle_XM8_Compact"
	};
	attachment[] = {
		"acc_flashlight"
	};
	headgear[] = 
	{
		"$NONE_usm_bdu_8point_blk$"
	};
};


class medic : rm 
{
	displayName = "Medic";
	vest[] = 
	{
		"pca_spc_medic_blk"
	};
	backpack[] = 
	{
		"rhs_rk_sht_30_emr",
		"rhs_tortila_emr"
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

class wwrm : rm 
{
	displayName = "Wet Works Rifleman";
	vest[] = 
	{
		"V_CarrierRigKBT_01_heavy_Black_F"
	};
	headgear[] = 
	{
		"$NONE_usm_helmet_pasgt_rm_blk$"
	};
	hmd[] = {
		"ACE_NVG_Gen4_Black"
	};
	primaryWeapon[] = 
	{
		"arifle_NCAR15_F"
	};
	scope[] = 
	{
		"rhsusf_acc_compm4"
	};
	attachment[] = {
		"cup_acc_anpeq_15_black"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_7("30Rnd_580x42_Mag_F")
	};
};

class wwar : wwrm 
{
	displayName = "Wet Works Auto Rifleman";
	primaryWeapon[] = 
	{
		"arifle_NCAR15_MG_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("100Rnd_580x42_Mag_F")
	};
};

class wwgrn : wwrm 
{
	displayName = "Wet Works Grenadier";
	primaryWeapon[] = 
	{
		"arifle_NCAR15_GL_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_7("30Rnd_580x42_Mag_F"),
		LIST_9("rhs_mag_m441_HE"),
		LIST_2("rhs_mag_m714_White")
	};
};