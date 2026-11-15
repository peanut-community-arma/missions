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
		"ItemCompass",
		"ItemGPS"
	};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] =
	{
		"ptv_u_g3_trollmtp",
		"ptv_u_g3_trollmtp_rs",
		"ptv_u_g3cw_trollmtp_coy",
		"ptv_u_g3cw_trollmtp_apg"
	};
	vest[] =
	{
		"JCA_V_CarrierRigKBT_01_combat_sand_F",
		"JCA_V_CarrierRigKBT_01_compact_sand_F",
		"JCA_V_CarrierRigKBT_01_CQB_sand_F",
		// "JCA_V_CarrierRigKBT_01_heavy_sand_F",
		// "JCA_V_CarrierRigKBT_01_light_sand_F",
		"JCA_V_CarrierRigKBT_01_recon_sand_F",
		"JCA_V_CarrierRigKBT_01_tactical_sand_F"
	};
	headgear[] =
	{
		LIST_6("ptv_viper_tsd_cover2_1"),
		"ptv_viper_ts_cover",
		"ptv_viper_ts_cover2"
	};
	backpack[] =
	{
		LIST_4("pca_backpack_invisible_large"),
		"ptv_DeltaPack_Rgr",
		"B_Kitbag_cbr",
		"B_Carryall_cbr"
	};
	hmd[] = {
		"Aegis_NVG_IVAS_01_tan_F"
	};
	primaryWeapon[] =
	{
		"ptv_rs556_t"
	};
	scope[] =
	{
		"ptv_compm4s"
	};
	bipod[] = {
		"ptv_acc_grip1_t",
		"ptv_acc_grip2_t",
		"ptv_acc_grip3_t",
		LIST_3("ptv_acc_grip4_t")
	};
	attachment[] = {
		"ACE_DBAL_A3_Red"
	};
	silencer[] = {
		"ptv_rotex2"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_packingBandage"),
		LIST_5("ACE_quikclot"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_13("CUP_30Rnd_556x45_PMAG_COYOTE_RPL")
	};
	backpackItems[] =
	{
		LIST_4("CUP_30Rnd_556x45_PMAG_COYOTE_RPL")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	vest[] =
	{
		"JCA_V_CarrierRigKBT_01_combat_sand_F",
	};
	backpack[] =
	{
		"B_Carryall_cbr"
	};
	primaryWeapon[] =
	{
		"ptv_ng5_sf_des"
	};
	sidearmWeapon[] =
	{
		"ptv_l9a2t_t"
	};
	sidearmAttachments[] = {
		"RKSL_optic_RMR_HG_FDE"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("ptv_17Rnd_9mm_L9A2"),
		LIST_3("ptv_150Rnd_556x45_Negev_b")
	};
	backpackItems[] =
	{
		LIST_4("ptv_150Rnd_556x45_Negev_b")
	};
};

class aar : rm
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] =
	{
		"B_Carryall_cbr"
	};
	backpackItems[] +=
	{
		LIST_4("ptv_150Rnd_556x45_Negev_b")
	};
	linkedItems[] +=
	{
		"Rangefinder"
	};
};

class rm_lat : rm
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] =
	{
		"CUP_launch_M72A6"
	};
	backpackItems[] +=
	{
		"CUP_launch_M72A6",
		"CUP_launch_M72A6"
	};
};

class gren : rm
{
	displayName = "Grenadier";
	// vest[] =
	// {
	// 	"CUP_V_B_IOTV_OCP_Grenadier_USArmy",
	// };
	primaryWeapon[] =
	{
		"ptv_rs556_gl_t"
	};
	backpackItems[] =
	{
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_21("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm
{
	displayName = "Team Leader";
	primaryWeapon[] =
	{
		"ptv_rs556_gl_t"
	};
	backpackItems[] =
	{
		LIST_17("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("CUP_30Rnd_556x45_PMAG_COYOTE_RPL_Tracer_Red"),
		LIST_2("SmokeShell")
	};
	linkedItems[] +=
	{
		"Rangefinder"
	};
};

class sl : tl
{
	displayName = "Squad Leader";
	items[] +=
	{
		"ACRE_PRC148"
	};
	vest[] =
	{
		"JCA_V_CarrierRigKBT_01_command_sand_F"
	};
	primaryWeapon[] =
	{
		"ptv_rs556_gl_t"
	};
	backpackItems[] =
	{
		LIST_2("CUP_30Rnd_556x45_PMAG_COYOTE_RPL_Tracer_Red"),
		LIST_17("CUP_1Rnd_HE_M203"),
		LIST_8("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class sgt : sl
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_13("CUP_1Rnd_HE_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class co : sl
{
	displayName = "Platoon Commander";
	backpack[] =
	{
		"B_Kitbag_cbr"
	};
	backpackItems[] +=
	{
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_1("SmokeShellRed")
	};
};

class fac : sl
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_11("CUP_1Rnd_HE_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_4("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_4("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_4("1Rnd_SmokeRed_Grenade_shell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"Laserdesignator"
	};
};

class rm_fa : rm
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	vest[] =
	{
		"JCA_V_CarrierRigKBT_01_tactical_sand_F"
	};
	backpack[] =
	{
		"B_Kitbag_cbr"
	};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_quikclot"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		//LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit"),
		LIST_30("ACE_suture")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	sidearmWeapon[] =
	{
		"ptv_l9a2t_t"
	};
	sidearmAttachments[] = {
		"RKSL_optic_RMR_HG_FDE"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_11("CUP_30Rnd_556x45_PMAG_COYOTE_RPL"),
		LIST_2("ptv_17Rnd_9mm_L9A2")
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_10("ACE_quikclot"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		//LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit")
	};
};

class mmg : rm
{
	displayName = "Medium Machine Gunner";
	// vest[] =
	// {
	// 	"CUP_V_CPC_medicalbelt_mc"
	// };
	backpack[] =
	{
		"B_Kitbag_cbr"
	};
	primaryWeapon[] =
	{
		"SPS_KAC_LWAMG_Tan_F"
	};
	bipod[] = {
		"bipod_01_F_snd"
	};
	silencer[] = {
		"bnae_suppressor_covdrt_virtual"
	};
	sidearmWeapon[] =
	{
		"ptv_l9a2t_t"
	};
	sidearmAttachments[] = {
		"RKSL_optic_RMR_HG_FDE"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("ptv_17Rnd_9mm_L9A2"),
		LIST_2("SPS_KAC_LWAMG_100rnd_Box_M80A1M62A1")
	};
	backpackItems[] =
	{
		LIST_5("SPS_KAC_LWAMG_100rnd_Box_M80A1M62A1")
	};
};

class ammg : rm
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] =
	{
		"B_Kitbag_cbr"
	};
	sidearmWeapon[] =
	{
		"ptv_l9a2t_t"
	};
	sidearmAttachments[] = {
		"RKSL_optic_RMR_HG_FDE"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_11("CUP_30Rnd_556x45_PMAG_COYOTE_RPL"),
		LIST_2("ptv_17Rnd_9mm_L9A2")
	};
	backpackItems[] =
	{
		LIST_6("SPS_KAC_LWAMG_100rnd_Box_M80A1M62A1")
	};
	linkedItems[] +=
	{
		"Rangefinder"
	};
};

class mat : rm
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] =
	{
		"B_Carryall_cbr"
	};
	sidearmWeapon[] =
	{
		"ptv_l9a2t_t"
	};
	sidearmAttachments[] = {
		"RKSL_optic_RMR_HG_FDE"
	};
	secondaryWeapon[] =
	{
		"launch_MRAWS_olive_F"
	};
	secondaryAttachments[] = {};
	magazines[] +=
	{
		LIST_2("ptv_17Rnd_9mm_L9A2")
	};
	backpackItems[] =
	{
		LIST_2("MRAWS_HEAT_F")
	};
};

class amat : rm
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] =
	{
		"B_Carryall_cbr"
	};
	sidearmWeapon[] =
	{
		"ptv_l9a2t_t"
	};
	sidearmAttachments[] = {
		"RKSL_optic_RMR_HG_FDE"
	};
	magazines[] +=
	{
		LIST_2("ptv_17Rnd_9mm_L9A2")
	};
	backpackItems[] =
	{
		LIST_2("MRAWS_HEAT_F"),
		"MRAWS_HE_F"
	};
	linkedItems[] +=
	{
		"Rangefinder"
	};
};

class crew : rm
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	headgear[] =
	{
		"CUP_H_CVC"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_30Rnd_556x45_PMAG_COYOTE_RPL")
	};
	backpackItems[] =
	{
		"ToolKit"
	};
};

class crew_co : crew
{
	displayName = "Crewman Commander";
	sidearmWeapon[] =
	{
		"ptv_l9a2t_t"
	};
	sidearmAttachments[] = {
		"RKSL_optic_RMR_HG_FDE"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] +=
	{
		LIST_3("ptv_17Rnd_9mm_L9A2"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"Rangefinder"
	};
};

class hp : rm
{
	displayName = "Helicopter Pilot";
	headgear[] =
	{
		"H_PilotHelmetHeli_B"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	vest[] =
	{
		"JCA_V_CarrierRigKBT_01_crew_sand_F"
	};
	primaryWeapon[] =
	{
		"ptv_cbj_ms2"
	};
	scope[] =
	{
		"ptv_compm5s"
	};
	sidearmWeapon[] =
	{
		"ptv_l9a2t_t"
	};
	sidearmAttachments[] = {
		"RKSL_optic_RMR_HG_FDE"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_4("ptv_100Rnd_65x25_CBJ_Mag"),
		LIST_3("ptv_17Rnd_9mm_L9A2"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class eng : rm
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	backpack[] =
	{
		"B_Kitbag_cbr"
	};
	backpackItems[] =
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_4("DemoCharge_Remote_Mag")
	};
};

//********************************************************************************//
//Uncommon Roles - !!! CUSTOM ENTRIES NEEDED FOR CURATED ARSENAL !!!
//********************************************************************************//
class jp : rm
{
	displayName = "Jet Pilot";
	uniform[] =
	{
		"CUP_U_B_USArmy_PilotOverall"
	};
	vest[] =
	{
		"CUP_V_B_PilotVest"
	};
	headgear[] =
	{
		"H_PilotHelmetFighter_B"
	};
	backpack[] =
	{
		"B_Parachute"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = {};
	sidearmWeapon[] =
	{
		"ptv_l9a2t_t"
	};
	sidearmAttachments[] = {
		"RKSL_optic_RMR_HG_FDE"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_5("ptv_17Rnd_9mm_L9A2"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	backpackItems[] = {};
};

class dm : rm
{
	displayName = "Designated Marksman";
	primaryWeapon[] =
	{
		"CUP_srifle_M14_DMR"
	};
	scope[] =
	{
		"CUP_optic_ACOG_TA01B_Black"
	};
	attachment[] = {};
	bipod[] =
	{
		"CUP_bipod_Harris_1A2_L_BLK"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_20Rnd_762x51_DMR")
	};
	backpackItems[] =
	{
		LIST_12("CUP_20Rnd_762x51_DMR")
	};
	linkedItems[] +=
	{
		"Rangefinder"
	};
};

class spt : rm
{
	displayName = "Spotter";
	scope[] =
	{
		"CUP_optic_ACOG_TA01B_Black"
	};
	backpackItems[] +=
	{
		LIST_2("SmokeShell"),
		"ACE_SpottingScope",
		"ACE_Tripod"
	};
	linkedItems[] +=
	{
		"Rangefinder"
	};
};

class hmg : rm
{
	displayName = "Heavy Machine Gunner";
	backpack[] =
	{
		"CUP_B_M2_Gun_Bag"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_30Rnd_556x45_PMAG_COYOTE_RPL"),
		"ace_csw_100Rnd_127x99_mag"
	};
	backpackItems[] =
	{
		LIST_3("ace_csw_100Rnd_127x99_mag")
	};
};

class ahmg : rm
{
	displayName = "Assistant Heavy Machine Gunner";
	backpack[] =
	{
		"CUP_B_M2_Tripod_Bag"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_30Rnd_556x45_PMAG_COYOTE_RPL"),
		"ace_csw_100Rnd_127x99_mag"
	};
	backpackItems[] =
	{
		LIST_3("ace_csw_100Rnd_127x99_mag")
	};
	linkedItems[] +=
	{
		"Rangefinder"
	};
};
