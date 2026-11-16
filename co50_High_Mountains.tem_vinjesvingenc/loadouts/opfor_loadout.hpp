/*
	* Faction: Finnish criminals+army (EMR, 2020)
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
	faces[] = {};
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
		LIST_1("Rev_U_B_FRR_Uniform_02_F"),
		LIST_1("Rev_U_B_FRR_Uniform_01_F"),
		LIST_1("Opf_U_O_S_Uniform_01_sweater_F"),
		LIST_1("Rev_U_B_FRR_Uniform_03_F"),
		LIST_1("U_I_C_Soldier_Para_2_F"),
		LIST_1("U_I_C_Soldier_Para_3_F"),
		LIST_1("U_I_C_Soldier_Para_4_F")
	};
	hmd[] = 
	{
		LIST_15(""),
		LIST_1("murshun_cigs_cig0_nv")
	};
	vest[] = 
	{
		LIST_1("V_TacVest_grn"),
		LIST_1("V_TacVest_brn"),
		LIST_1("bear_tactical_vest_oakleaf"),
		LIST_4("V_BandollierB_rgr")
	};
	headgear[] = 
	{
		LIST_1("H_Bandanna_gry"),
		LIST_1("H_Bandanna_cbr"),
		LIST_1("H_Bandanna_khk"),
		LIST_1("H_Cap_blk"),
		LIST_1("H_Cap_grn"),
		LIST_1("H_Cap_tan"),
		LIST_1("H_Watchcap_blk"),
		LIST_1("H_Watchcap_cbr")
	};
	backpack[] = 
	{
		LIST_7("pca_backpack_invisible"),
		LIST_2("B_TacticalPack_blk")
	};
	primaryWeapon[] = 
	{
		"rhs_weap_ak103_1"
	};
	magazines[] = 
	{
		"SmokeShell",
		LIST_7("CUP_30Rnd_762x39_AK47_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74"
	};
	magazines[] = 
	{
		"SmokeShell",
		LIST_7("pca_mag_40Rnd_762x39_Polymer_Mixed")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74U"
	};
	magazines[] = 
	{
		"SmokeShell",
		LIST_5("CUP_60Rnd_TE1_Green_Tracer_545x39_AK74M_M")
	};
};

class  Mi : rm 
{
	displayName = "Milita Mosin";
	primaryWeapon[] = 
	{
		"CUP_srifle_Mosin_Nagant"
	};
	vest[] = 
	{
		"bear_tactical_vest_oakleaf"
	};
	magazines[] = 
	{
		"SmokeShell",
		LIST_10("CUP_5Rnd_762x54_Mosin_M")
	};
};

class  Sh : rm 
{
	displayName = "Sharpshooter";
	uniform[] =
	{
		LIST_1("Atlas_U_C_CommonerJacket_01_blue_F"),
		LIST_1("Atlas_U_C_CommonerJacket_01_grey_F"),
		LIST_1("Atlas_U_C_CommonerJacket_01_marroon_F")
	};
	vest[] = 
	{
		"V_BandollierB_blk"
	};
	primaryWeapon[] = 
	{
		"CUP_srifle_Mosin_Nagant"
	};
	scope[] = 
	{
		"cup_optic_pem"
	};
	magazines[] = 
	{
		"SmokeShell",
		LIST_10("CUP_5Rnd_762x54_Mosin_M")
	};
};

class frm : baseMan
{
	displayName = "F Rifleman";
	uniform[] = 
	{
		LIST_1("$NONE_wsx_uniform_combat_m05w$")
	};
	vest[] = 
	{
		"rhs_6b23_6sh116_od"
	};
	headgear[] = 
	{
		LIST_5("$REVIEW_wsx_helmet_combat_m05w$"),
		LIST_1("$REVIEW_wsx_helmet_combat_m05w_ess_bare$"),
		LIST_1("$REVIEW_wsx_helmet_combat_m05w_ess$")
	};
	backpack[] = 
	{
		LIST_7("pca_backpack_invisible"),
		LIST_2("B_TacticalPack_blk")
	};
	primaryWeapon[] = 
	{
		"bnae_weap_rk95"
	};
	magazines[] = 
	{
		"SmokeShell",
		LIST_7("CUP_30Rnd_762x39_AK103_bakelite_M")
	};
};

class far : frm 
{
	displayName = "F Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg"
	};
	magazines[] = 
	{
		"SmokeShell",
		LIST_7("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};