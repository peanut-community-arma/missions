#define nades "rhs_mag_m67",LIST_2("rhs_mag_an_m8hc")

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
		LIST_5("ACE_fieldDressing"),
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

class r : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		LIST_2("CUP_U_B_BDUv2_Winter"),
		"CUP_U_B_BDUv2_dirty_Winter"
	};
	vest[] = 
	{
		LIST_4("CUP_V_B_PASGT_winter"),
		LIST_2("V_LegStrapBag_black_F"),
		"V_DeckCrew_white_F"
	};
	headgear[] = 
	{
		LIST_2("$NONE_aegis_mch_m05_snow$"),
		"CUP_H_PASGTv2_NVG_winter"
	};
	backpack[] = 
	{
		"B_Carryall_oucamo",
		LIST_2("B_FieldPack_oucamo"),
		LIST_4("B_CivilianBackpack_01_Everyday_Astra_F")
	};
	primaryWeapon[] = 
	{
		"amf_weap_famas_g2"
	};
	scope[] = {};
	magazines[] = 
	{
		nades,
		LIST_7("amf_30Rnd_556x45_M855_G2_Stanag")
	};
};

class ar : r 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		LIST_2("ptv_weap_m62mr_blk"),
		"ptv_m62mr_sf_blk"
	};
	magazines[] = 
	{
		nades,
		LIST_3("ptv_200Rnd_556x45_M855_mixed_m62_soft_pouch")
	};
};

class ammo : r
{
	displayName = "Ammo Bearer";

	magazines[] += 
	{
		LIST_3("ptv_200Rnd_556x45_M855_mixed_m62_soft_pouch")
	};
};

class cls : r
{
	displayName = "Combat Lifesaver";
	primaryWeapon[] = {
		LIST_2("$NONE_hlc_smg_mp5a3_tac$"),
		"CUP_smg_MP5A5_Rail_AFG"
	};
	magazines[] = {
		nades,
		LIST_5("hlc_30Rnd_9x19_FMJ_MP5")
	};
	items[] += 
	{
		LIST_10("ACE_elasticBandage"),
		LIST_5("ACE_epinephrine"),
		LIST_5("ACE_morphine"),
		LIST_4("ACE_tourniquet"),
		LIST_4("ACE_splint")
	};
	backpackItems[] += {
		"ACE_surgicalKit",
		"ACE_bloodIV",
		LIST_2("ACE_plasmaIV_500"),
		"ACE_personalAidKit"
	};
};

class leader : r
{
	displayName = "Team Lead";
	headgear[] = {
		"CUP_H_US_patrol_cap_winter"
	};
	linkedItems[] += {
		"ItemGPS",
		"Rangefinder"
	};
	sidearmWeapon[] = {
		"rhsusf_weap_glock17g4"
	};
	items[] += {
		LIST_2("SmokeShellRed"),
		LIST_2("SmokeShellBlue")
	};
	magazines[] += {
		LIST_3("rhsusf_mag_17Rnd_9x19_FMJ")
	};
};

class engineer : r
{
	displayName = "Engineer";
	primaryWeapon[] = {
		LIST_2("CUP_sgun_M1014_solidstock"),
		"CUP_sgun_M1014_Entry"
	};
	magazines[] = {
		nades,
		LIST_6("CUP_6Rnd_12Gauge_Slug")
	};
	backpack[] = {
		"B_Carryall_oucamo"
	};
	backpackItems[] += {
		LIST_5("ACE_CableTie"),
		"ACE_EntrenchingTool",
		"ACE_rope3",
		"ToolKit",
		"ACE_wirecutter"
	};	
};

class demoman : engineer
{
	displayName = "Explosives Expert";
	backpackItems[] = {
		LIST_4("APERSBoundingMine_Range_Mag"),
		LIST_4("DemoCharge_Remote_Mag"),
		"ACE_M26_Clacker",
		"ACE_DefusalKit",
		"MineDetector"
	};
};

class gren : r
{
	displayName = "Grenadier";
	primaryWeapon[] = {
		"$NONE_hlc_rifle_auga3_m203_gry$",
		LIST_2("$NONE_hlc_rifle_auga3_m203_blk$")
	};
	magazines[] = {
		nades,
		LIST_6("hlc_42Rnd_556x45_M_AUG"),
		LIST_6("rhs_mag_M397_HET"),
		LIST_6("rhs_mag_M433_HEDP"),
		LIST_6("rhs_mag_m714_White")
	};
};

class marksman : r
{
	displayName = "Marksman";
	primaryWeapon[] = {
		"amf_weap_famas_felin",
		"amf_weap_famas_valo"
	};
	scope[] = {
		"optic_ico_01_black_f"
	};
	magazines[] = {
		LIST_7("amf_25Rnd_556x45_M856A1_F1_Stanag"),
		nades
	};
	backpackItems[] += {
		"optic_mrco"
	};
};

class at : r
{
	displayName = "Antitank";
	secondaryWeapon[] = {
		"CUP_launch_APILAS"
	};
	primaryWeapon[] = {
		"CUP_CZ_BREN2_556_8"
	};
	silencer[] = {
		"$NONE_hlc_muzzle_aac_miter18t$",
		LIST_2("")
	};
	magazines[] = {
		nades,
		LIST_7("rhs_mag_30Rnd_556x45_M855_PMAG")
	};
};

class lat : r
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = {
		"rhs_weap_m72a7"
	};
};

class sharpshooter : r
{
	displayName = "Sniper";
	primaryWeapon[] = {
		"$NONE_hlc_rifle_scarh_ssr$"
	};
	sidearmWeapon[] = {
		"rhsusf_weap_glock17g4"
	};
	magazines[] = {
		nades,
		LIST_6("rhs_mag_20Rnd_SCAR_762x51_m80a1_epr_bk"),
		LIST_3("rhsusf_mag_17Rnd_9x19_FMJ")
	};
	scope[] = {
		LIST_2("$NONE_hlc_optic_atacr$"),
		"$NONE_hlc_optic_atacr_offset$"
	};
	silencer[] = {
		"$NONE_hlc_muzzle_fn_oem$"
	};
	bipod[] = {
		"$NONE_hlc_bipod_utgshooters$"
	};
};