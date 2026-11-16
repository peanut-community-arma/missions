/*
	* Example Enemy Loadout
	* Template for creating enemy loadouts.
	* Faction: Example Russian Army Loadout (EMR, 2020)
*/

// Weaponless Baseclass
class baseMan 
{
	displayName = "Unarmed";
	// All Randomized. Use LIST_X("className") for multiple items in an array. 
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {"default"};
	hmd[] = {};
	// Leave empty to not change faces and Insignias -> example: faces[] = {};
	faces[] = {"faceset:tanoan"};
	insignias[] = {};
	//All Randomized. Add Primary Weapon and attachments.
	//Leave Empty to remove all. {"Default"} for using original items the character start with.
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	// *WARNING* secondaryAttachments[] arrays are NOT randomized.
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	// These are added to the uniform or vest first - overflow goes to backpack if there's any.
	magazines[] = {};
	items[] = 
	{
		LIST_4("ACE_fieldDressing"),
		//"ACE_packingBandage",
		//"ACE_quikclot",
		//"ACE_tourniquet",
		//"ACE_morphine",
		"ACE_splint"
	};
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
		/*
		"rhsgref_uniform_TLA_1",
		"rhsgref_uniform_TLA_2"
		*/
		
		
		"U_I_C_Soldier_Para_1_F",
		"U_I_C_Soldier_Para_2_F",
		"U_I_C_Soldier_Para_3_F",
		"U_I_C_Soldier_Para_4_F",
		"U_I_C_Soldier_Para_5_F",
		"Atlas_U_B_H_Soldier_F",
		"U_I_C_Soldier_Camo_F"
		
		
	};
	vest[] = 
	{
		"rhs_6b3",
		"rhs_6b3_AK",
		"rhs_6b3_AK_2",
		"rhs_6b3_AK_3"
	};
	headgear[] = 
	{
		"rhsgref_helmet_M1_bare",
		"rhsgref_helmet_M1_bare_alt01",
		"rhsgref_helmet_M1_painted",
		"rhsgref_helmet_M1_painted_alt01",
		
	};
	backpack[] = 
	{
		
	};
	primaryWeapon[] = 
	{
		"rhs_weap_akm",
		"rhs_weap_akms",
		"rhs_weap_pm63",
		
	};
	attachment[] =  
	{
		"rhs_acc_2dpzenit"	
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_9("rhs_30Rnd_762x39mm")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[]={
		"rhs_6b3_RPK"
	};
	backpack[] = 
	{
		"pca_rd54_mgrn"
	};
	primaryWeapon[] = 
	{
		"arifle_RPK_F"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_5("rhs_75Rnd_762x39mm")
	};
	backpackItems[] = 
	{
		LIST_5("rhs_75Rnd_762x39mm")
	};
};

class mg : ar
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"rhs_weap_pkm"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_3("rhs_100Rnd_762x54mmR")
	};
	backpackItems[] = 
	{
		LIST_3("rhs_100Rnd_762x54mmR")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg75"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"rhs_rpg_6b3"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	backpackItems[] = 
	{
		LIST_4("rhs_rpg7_PG7VL_mag"),
		"rhs_rpg7_PG7VR_mag",
		"rhs_rpg7_OG7V_mag"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[]={
		"rhs_6b3_VOG",
		"rhs_6b3_VOG_2"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_akm_gp25",
		"rhs_weap_akms_gp25"
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
	headgear[] = 
	{
		"rhs_tsh4",
		"rhs_tsh4_bala",
		"rhs_tsh4_ess",
		"rhs_tsh4_ess_bala"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m92"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_7("rhs_30Rnd_762x39mm")
	};
};
class lead : rm
{
	displayName = "Cell Leader";
	headgear[] = 
	{
		"H_Beret_blk"
	};
	vest[]={
		"rhs_6b3_off",
		"rhs_6b3_R148"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_akmn"
	};
	scope[] = {
		"rhs_acc_pso1m2"
	};
	secondaryWeapon[] = {
		"rhs_weap_tt33"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_9("rhs_30Rnd_762x39mm")
	};
	
	
};