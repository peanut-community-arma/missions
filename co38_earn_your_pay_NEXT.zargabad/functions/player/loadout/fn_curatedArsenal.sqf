/**
	Adds a curated personal arsenal that can be accessed via ACE Self Interact by the players.
	
	Parameters:
	0: unit <OBJECT>
	
	UNIT MUST BE LOCAL
	
	Example:
	[player] call pca_fnc_curatedArsenal;
	
	Returns: 
	NONE
*/

params ["_unit"];

if !(hasInterface) exitWith {};

private _unitRole = _unit getVariable ["tmf_assignGear_role", nil];

arsenal = "building" createVehicleLocal [0,0,0];
_unit setVariable ["startPos", getPosASL _unit];

//********************************************************************************//
// Unit Equipment
//********************************************************************************//
//Common
private _itemGear = [];

//Uniform
private _itemUniform = 
[
	"U_BG_Guerilla2_2",
		"U_BG_Guerilla2_1",
		"U_BG_Guerilla2_3",
		"U_Marshal",
		"U_Rangemaster",
		"U_C_Man_casual_8_F",
		"U_C_Man_casual_7_F",
		"U_C_Man_casual_9_F",
		"Aegis_U_lxWS_ION_Casual_Hawaiian_F",
		"Aegis_U_lxWS_ION_Casual_Hawaiian_2_F",
		"Aegis_U_lxWS_ION_Flanneltna_F",
		"U_C_Uniform_Formal_01_blue_F",
		"U_C_Uniform_Formal_01_striped_F",
		"U_C_Uniform_Formal_01_white_F",
		"U_B_ION_Uniform_01_poloshirt_blue_F",
		"U_B_ION_Uniform_01_tshirt_black_F",
		"U_C_Man_casual_2_F",
		"U_C_Man_casual_3_F",
		"U_C_Man_casual_1_F",
		"U_lxWS_ION_Casual3",
		"U_lxWS_ION_Casual5",
		"U_lxWS_ION_Casual2",
		"U_lxWS_ION_Casual4",
		"CUP_I_B_PMC_Unit_13",
		"CUP_I_B_PMC_Unit_15",
		"CUP_I_B_PMC_Unit_12",
		"CUP_I_B_PMC_Unit_3",
		"CUP_I_B_PMC_Unit_2",
		"CUP_I_B_PMC_Unit_1",
		"CUP_I_B_PMC_Unit_4",
		"CUP_I_B_PMC_Unit_7",
		"CUP_I_B_PMC_Unit_6",
		"CUP_I_B_PMC_Unit_5",
		"CUP_I_B_PMC_Unit_8",
		"CUP_I_B_PMC_Unit_11",
		"CUP_I_B_PMC_Unit_10",
		"CUP_I_B_PMC_Unit_9",
		"CUP_I_B_PMC_Unit_42",
		"CUP_I_B_PMC_Unit_41",
		"CUP_I_B_PMC_Unit_43",
		"CUP_I_B_PMC_Unit_40",
		"CUP_I_B_PMC_Unit_39",
		"CUP_I_B_PMC_Unit_36",
		"CUP_I_B_PMC_Unit_38",
		"CUP_I_B_PMC_Unit_37",
		"U_Simc_bdu_civ",
		"U_simc_bdu_civ_trop",
		"U_Simc_DCU_civ",
		"U_Simc_DCU_civ_trop",
		"U_simc_bdu_civ_surf",
		"U_simc_civ_jean_blau_dunkel_trop",
		"U_simc_civ_jean_blau_trop",
		"U_simc_civ_jean_grun_trop",
		"U_simc_civ_jean_rot_ligt_trop",
		"U_simc_civ_jean_rot_trop",
		"U_simc_civ_jean_weiss_dunkel_trop",
		"U_simc_civ_jean_weiss_trop",
		"U_simc_civ_jean_khk_trop",
		"U_simc_surf"
];

private _itemUniformCrew = 
[
	"U_BG_Guerilla2_2",
		"U_BG_Guerilla2_1",
		"U_BG_Guerilla2_3",
		"U_Marshal",
		"U_Rangemaster",
		"U_C_Man_casual_8_F",
		"U_C_Man_casual_7_F",
		"U_C_Man_casual_9_F",
		"Aegis_U_lxWS_ION_Casual_Hawaiian_F",
		"Aegis_U_lxWS_ION_Casual_Hawaiian_2_F",
		"Aegis_U_lxWS_ION_Flanneltna_F",
		"U_C_Uniform_Formal_01_blue_F",
		"U_C_Uniform_Formal_01_striped_F",
		"U_C_Uniform_Formal_01_white_F",
		"U_B_ION_Uniform_01_poloshirt_blue_F",
		"U_B_ION_Uniform_01_tshirt_black_F",
		"U_C_Man_casual_2_F",
		"U_C_Man_casual_3_F",
		"U_C_Man_casual_1_F",
		"U_lxWS_ION_Casual3",
		"U_lxWS_ION_Casual5",
		"U_lxWS_ION_Casual2",
		"U_lxWS_ION_Casual4",
		"CUP_I_B_PMC_Unit_13",
		"CUP_I_B_PMC_Unit_15",
		"CUP_I_B_PMC_Unit_12",
		"CUP_I_B_PMC_Unit_3",
		"CUP_I_B_PMC_Unit_2",
		"CUP_I_B_PMC_Unit_1",
		"CUP_I_B_PMC_Unit_4",
		"CUP_I_B_PMC_Unit_7",
		"CUP_I_B_PMC_Unit_6",
		"CUP_I_B_PMC_Unit_5",
		"CUP_I_B_PMC_Unit_8",
		"CUP_I_B_PMC_Unit_11",
		"CUP_I_B_PMC_Unit_10",
		"CUP_I_B_PMC_Unit_9",
		"CUP_I_B_PMC_Unit_42",
		"CUP_I_B_PMC_Unit_41",
		"CUP_I_B_PMC_Unit_43",
		"CUP_I_B_PMC_Unit_40",
		"CUP_I_B_PMC_Unit_39",
		"CUP_I_B_PMC_Unit_36",
		"CUP_I_B_PMC_Unit_38",
		"CUP_I_B_PMC_Unit_37",
		"U_Simc_bdu_civ",
		"U_simc_bdu_civ_trop",
		"U_Simc_DCU_civ",
		"U_Simc_DCU_civ_trop",
		"U_simc_bdu_civ_surf",
		"U_simc_civ_jean_blau_dunkel_trop",
		"U_simc_civ_jean_blau_trop",
		"U_simc_civ_jean_grun_trop",
		"U_simc_civ_jean_rot_ligt_trop",
		"U_simc_civ_jean_rot_trop",
		"U_simc_civ_jean_weiss_dunkel_trop",
		"U_simc_civ_jean_weiss_trop",
		"U_simc_civ_jean_khk_trop",
		"U_simc_surf"
];

private _itemUniformPilot = 
[
	"U_BG_Guerilla2_2",
		"U_BG_Guerilla2_1",
		"U_BG_Guerilla2_3",
		"U_Marshal",
		"U_Rangemaster",
		"U_C_Man_casual_8_F",
		"U_C_Man_casual_7_F",
		"U_C_Man_casual_9_F",
		"Aegis_U_lxWS_ION_Casual_Hawaiian_F",
		"Aegis_U_lxWS_ION_Casual_Hawaiian_2_F",
		"Aegis_U_lxWS_ION_Flanneltna_F",
		"U_C_Uniform_Formal_01_blue_F",
		"U_C_Uniform_Formal_01_striped_F",
		"U_C_Uniform_Formal_01_white_F",
		"U_B_ION_Uniform_01_poloshirt_blue_F",
		"U_B_ION_Uniform_01_tshirt_black_F",
		"U_C_Man_casual_2_F",
		"U_C_Man_casual_3_F",
		"U_C_Man_casual_1_F",
		"U_lxWS_ION_Casual3",
		"U_lxWS_ION_Casual5",
		"U_lxWS_ION_Casual2",
		"U_lxWS_ION_Casual4",
		"CUP_I_B_PMC_Unit_13",
		"CUP_I_B_PMC_Unit_15",
		"CUP_I_B_PMC_Unit_12",
		"CUP_I_B_PMC_Unit_3",
		"CUP_I_B_PMC_Unit_2",
		"CUP_I_B_PMC_Unit_1",
		"CUP_I_B_PMC_Unit_4",
		"CUP_I_B_PMC_Unit_7",
		"CUP_I_B_PMC_Unit_6",
		"CUP_I_B_PMC_Unit_5",
		"CUP_I_B_PMC_Unit_8",
		"CUP_I_B_PMC_Unit_11",
		"CUP_I_B_PMC_Unit_10",
		"CUP_I_B_PMC_Unit_9",
		"CUP_I_B_PMC_Unit_42",
		"CUP_I_B_PMC_Unit_41",
		"CUP_I_B_PMC_Unit_43",
		"CUP_I_B_PMC_Unit_40",
		"CUP_I_B_PMC_Unit_39",
		"CUP_I_B_PMC_Unit_36",
		"CUP_I_B_PMC_Unit_38",
		"CUP_I_B_PMC_Unit_37",
		"U_Simc_bdu_civ",
		"U_simc_bdu_civ_trop",
		"U_Simc_DCU_civ",
		"U_Simc_DCU_civ_trop",
		"U_simc_bdu_civ_surf",
		"U_simc_civ_jean_blau_dunkel_trop",
		"U_simc_civ_jean_blau_trop",
		"U_simc_civ_jean_grun_trop",
		"U_simc_civ_jean_rot_ligt_trop",
		"U_simc_civ_jean_rot_trop",
		"U_simc_civ_jean_weiss_dunkel_trop",
		"U_simc_civ_jean_weiss_trop",
		"U_simc_civ_jean_khk_trop",
		"U_simc_surf",
		"USAF_Overalls_Ranger_5_w",
		"USAF_Overalls_Ranger_6_w",
		"USAF_Overalls_Ranger_4_w"
];

//Vest
private _itemVest = 
[
	"CUP_V_CPC_communications_coy",
		"CUP_V_CPC_Fast_coy",
		"CUP_V_CPC_light_coy",
		"CUP_V_CPC_medical_coy",
		"CUP_V_CPC_tl_coy",
		"CUP_V_CPC_weapons_coy",
		"CUP_V_CPC_communicationsbelt_coy",
		"CUP_V_CPC_Fastbelt_coy",
		"CUP_V_CPC_lightbelt_coy",
		"CUP_V_CPC_medicalbelt_coy",
		"CUP_V_CPC_tlbelt_coy",
		"CUP_V_CPC_weaponsbelt_coy",
		"CUP_V_CPC_communications_rngr",
		"CUP_V_CPC_Fast_rngr",
		"CUP_V_CPC_light_rngr",
		"CUP_V_CPC_medical_rngr",
		"CUP_V_CPC_tl_rngr",
		"CUP_V_CPC_weapons_rngr",
		"CUP_V_CPC_communicationsbelt_rngr",
		"CUP_V_CPC_Fastbelt_rngr",
		"CUP_V_CPC_lightbelt_rngr",
		"CUP_V_CPC_medicalbelt_rngr",
		"CUP_V_CPC_tlbelt_rngr",
		"CUP_V_CPC_weaponsbelt_rngr",
		"CUP_V_B_Armatus_Black",
		"CUP_V_B_Armatus_BB_Black",
		"CUP_V_B_Armatus_Coyote",
		"CUP_V_B_Armatus_BB_Coyote",
		"CUP_V_B_Armatus_OD",
		"CUP_V_B_Armatus_BB_OD",
		"CUP_V_PMC_CIRAS_Khaki_Patrol",
		"CUP_V_PMC_CIRAS_OD_Patrol",
		"CUP_V_PMC_CIRAS_Black_Veh",
		"CUP_V_PMC_CIRAS_Coyote_Veh",
		"CUP_V_PMC_CIRAS_Khaki_Veh",
		"CUP_V_PMC_CIRAS_OD_Veh",
		"CUP_V_PMC_CIRAS_Black_Empty",
		"CUP_V_PMC_CIRAS_Coyote_Empty",
		"CUP_V_PMC_CIRAS_Khaki_Empty",
		"CUP_V_PMC_CIRAS_OD_Empty",
		"CUP_V_PMC_CIRAS_Black_Grenadier",
		"CUP_V_PMC_CIRAS_Coyote_Grenadier",
		"CUP_V_PMC_CIRAS_Khaki_Grenadier",
		"CUP_V_PMC_CIRAS_OD_Grenadier",
		"CUP_V_PMC_CIRAS_Black_Patrol",
		"CUP_V_PMC_CIRAS_Coyote_Patrol",
		"CUP_V_PMC_CIRAS_Black_TL",
		"CUP_V_PMC_CIRAS_Coyote_TL",
		"CUP_V_PMC_CIRAS_Khaki_TL",
		"CUP_V_PMC_CIRAS_OD_TL",
		"CUP_V_B_Ciras_Black",
		"CUP_V_B_Ciras_Black2",
		"CUP_V_B_Ciras_Black3",
		"CUP_V_B_Ciras_Black4",
		"CUP_V_B_Ciras_Khaki2",
		"CUP_V_B_Ciras_Khaki",
		"CUP_V_B_Ciras_Khaki3",
		"CUP_V_B_Ciras_Khaki4",
		"CUP_V_B_Ciras_MCam",
		"CUP_V_B_Ciras_MCam2",
		"CUP_V_B_Ciras_Mcam3",
		"CUP_V_B_Ciras_Mcam4",
		"CUP_V_B_Ciras_Olive",
		"CUP_V_B_Ciras_Olive2",
		"CUP_V_B_Ciras_Olive3",
		"CUP_V_B_Ciras_Olive4",
		"CUP_V_B_Ciras_Olive_USSF",
		"CUP_V_CPC_communications_mc",
		"CUP_V_CPC_Fast_mc",
		"CUP_V_CPC_light_mc",
		"CUP_V_CPC_medical_mc",
		"CUP_V_CPC_tl_mc",
		"CUP_V_CPC_weapons_mc",
		"CUP_V_CPC_communicationsbelt_mc",
		"CUP_V_CPC_Fastbelt_mc",
		"CUP_V_CPC_lightbelt_mc",
		"CUP_V_CPC_medicalbelt_mc",
		"CUP_V_CPC_tlbelt_mc",
		"CUP_V_CPC_weaponsbelt_mc",
		"CUP_V_B_Armatus_US_MCam",
		"CUP_V_B_Armatus_BB_US_MCam",
		"CUP_V_B_Armatus_MCam",
		"CUP_V_B_Armatus_BB_MCam",
		"CUP_V_B_LBT_LBV_US_MCam",
		"JCA_V_CarrierRigKBT_01_combat_black_F",
		"JCA_V_CarrierRigKBT_01_combat_olive_F",
		"JCA_V_CarrierRigKBT_01_combat_sand_F",
		"JCA_V_CarrierRigKBT_01_command_black_F",
		"JCA_V_CarrierRigKBT_01_command_olive_F",
		"JCA_V_CarrierRigKBT_01_command_sand_F",
		"JCA_V_CarrierRigKBT_01_compact_black_F",
		"JCA_V_CarrierRigKBT_01_compact_olive_F",
		"JCA_V_CarrierRigKBT_01_compact_sand_F",
		"JCA_V_CarrierRigKBT_01_CQB_black_F",
		"JCA_V_CarrierRigKBT_01_CQB_olive_F",
		"JCA_V_CarrierRigKBT_01_CQB_sand_F",
		"JCA_V_CarrierRigKBT_01_crew_black_F",
		"JCA_V_CarrierRigKBT_01_crew_olive_F",
		"JCA_V_CarrierRigKBT_01_crew_sand_F",
		"JCA_V_CarrierRigKBT_01_heavy_black_F",
		"JCA_V_CarrierRigKBT_01_heavy_olive_F",
		"JCA_V_CarrierRigKBT_01_heavy_sand_F",
		"JCA_V_CarrierRigKBT_01_light_black_F",
		"JCA_V_CarrierRigKBT_01_light_olive_F",
		"JCA_V_CarrierRigKBT_01_light_sand_F",
		"JCA_V_CarrierRigKBT_01_recon_black_F",
		"JCA_V_CarrierRigKBT_01_recon_olive_F",
		"JCA_V_CarrierRigKBT_01_recon_sand_F",
		"JCA_V_CarrierRigKBT_01_tactical_black_F",
		"JCA_V_CarrierRigKBT_01_tactical_olive_F",
		"JCA_V_CarrierRigKBT_01_tactical_sand_F",
		"JCA_V_CarrierRigKBT_01_black_F",
		"JCA_V_CarrierRigKBT_01_olive_F",
		"JCA_V_CarrierRigKBT_01_sand_F",
		"pca_vest_invisible_kevlar"
];

private _itemVestCrew = 
[
	"CUP_V_CPC_communications_coy",
		"CUP_V_CPC_Fast_coy",
		"CUP_V_CPC_light_coy",
		"CUP_V_CPC_medical_coy",
		"CUP_V_CPC_tl_coy",
		"CUP_V_CPC_weapons_coy",
		"CUP_V_CPC_communicationsbelt_coy",
		"CUP_V_CPC_Fastbelt_coy",
		"CUP_V_CPC_lightbelt_coy",
		"CUP_V_CPC_medicalbelt_coy",
		"CUP_V_CPC_tlbelt_coy",
		"CUP_V_CPC_weaponsbelt_coy",
		"CUP_V_CPC_communications_rngr",
		"CUP_V_CPC_Fast_rngr",
		"CUP_V_CPC_light_rngr",
		"CUP_V_CPC_medical_rngr",
		"CUP_V_CPC_tl_rngr",
		"CUP_V_CPC_weapons_rngr",
		"CUP_V_CPC_communicationsbelt_rngr",
		"CUP_V_CPC_Fastbelt_rngr",
		"CUP_V_CPC_lightbelt_rngr",
		"CUP_V_CPC_medicalbelt_rngr",
		"CUP_V_CPC_tlbelt_rngr",
		"CUP_V_CPC_weaponsbelt_rngr",
		"CUP_V_B_Armatus_Black",
		"CUP_V_B_Armatus_BB_Black",
		"CUP_V_B_Armatus_Coyote",
		"CUP_V_B_Armatus_BB_Coyote",
		"CUP_V_B_Armatus_OD",
		"CUP_V_B_Armatus_BB_OD",
		"CUP_V_PMC_CIRAS_Khaki_Patrol",
		"CUP_V_PMC_CIRAS_OD_Patrol",
		"CUP_V_PMC_CIRAS_Black_Veh",
		"CUP_V_PMC_CIRAS_Coyote_Veh",
		"CUP_V_PMC_CIRAS_Khaki_Veh",
		"CUP_V_PMC_CIRAS_OD_Veh",
		"CUP_V_PMC_CIRAS_Black_Empty",
		"CUP_V_PMC_CIRAS_Coyote_Empty",
		"CUP_V_PMC_CIRAS_Khaki_Empty",
		"CUP_V_PMC_CIRAS_OD_Empty",
		"CUP_V_PMC_CIRAS_Black_Grenadier",
		"CUP_V_PMC_CIRAS_Coyote_Grenadier",
		"CUP_V_PMC_CIRAS_Khaki_Grenadier",
		"CUP_V_PMC_CIRAS_OD_Grenadier",
		"CUP_V_PMC_CIRAS_Black_Patrol",
		"CUP_V_PMC_CIRAS_Coyote_Patrol",
		"CUP_V_PMC_CIRAS_Black_TL",
		"CUP_V_PMC_CIRAS_Coyote_TL",
		"CUP_V_PMC_CIRAS_Khaki_TL",
		"CUP_V_PMC_CIRAS_OD_TL",
		"CUP_V_B_Ciras_Black",
		"CUP_V_B_Ciras_Black2",
		"CUP_V_B_Ciras_Black3",
		"CUP_V_B_Ciras_Black4",
		"CUP_V_B_Ciras_Khaki2",
		"CUP_V_B_Ciras_Khaki",
		"CUP_V_B_Ciras_Khaki3",
		"CUP_V_B_Ciras_Khaki4",
		"CUP_V_B_Ciras_MCam",
		"CUP_V_B_Ciras_MCam2",
		"CUP_V_B_Ciras_Mcam3",
		"CUP_V_B_Ciras_Mcam4",
		"CUP_V_B_Ciras_Olive",
		"CUP_V_B_Ciras_Olive2",
		"CUP_V_B_Ciras_Olive3",
		"CUP_V_B_Ciras_Olive4",
		"CUP_V_B_Ciras_Olive_USSF",
		"CUP_V_CPC_communications_mc",
		"CUP_V_CPC_Fast_mc",
		"CUP_V_CPC_light_mc",
		"CUP_V_CPC_medical_mc",
		"CUP_V_CPC_tl_mc",
		"CUP_V_CPC_weapons_mc",
		"CUP_V_CPC_communicationsbelt_mc",
		"CUP_V_CPC_Fastbelt_mc",
		"CUP_V_CPC_lightbelt_mc",
		"CUP_V_CPC_medicalbelt_mc",
		"CUP_V_CPC_tlbelt_mc",
		"CUP_V_CPC_weaponsbelt_mc",
		"CUP_V_B_Armatus_US_MCam",
		"CUP_V_B_Armatus_BB_US_MCam",
		"CUP_V_B_Armatus_MCam",
		"CUP_V_B_Armatus_BB_MCam",
		"CUP_V_B_LBT_LBV_US_MCam",
		"JCA_V_CarrierRigKBT_01_combat_black_F",
		"JCA_V_CarrierRigKBT_01_combat_olive_F",
		"JCA_V_CarrierRigKBT_01_combat_sand_F",
		"JCA_V_CarrierRigKBT_01_command_black_F",
		"JCA_V_CarrierRigKBT_01_command_olive_F",
		"JCA_V_CarrierRigKBT_01_command_sand_F",
		"JCA_V_CarrierRigKBT_01_compact_black_F",
		"JCA_V_CarrierRigKBT_01_compact_olive_F",
		"JCA_V_CarrierRigKBT_01_compact_sand_F",
		"JCA_V_CarrierRigKBT_01_CQB_black_F",
		"JCA_V_CarrierRigKBT_01_CQB_olive_F",
		"JCA_V_CarrierRigKBT_01_CQB_sand_F",
		"JCA_V_CarrierRigKBT_01_crew_black_F",
		"JCA_V_CarrierRigKBT_01_crew_olive_F",
		"JCA_V_CarrierRigKBT_01_crew_sand_F",
		"JCA_V_CarrierRigKBT_01_heavy_black_F",
		"JCA_V_CarrierRigKBT_01_heavy_olive_F",
		"JCA_V_CarrierRigKBT_01_heavy_sand_F",
		"JCA_V_CarrierRigKBT_01_light_black_F",
		"JCA_V_CarrierRigKBT_01_light_olive_F",
		"JCA_V_CarrierRigKBT_01_light_sand_F",
		"JCA_V_CarrierRigKBT_01_recon_black_F",
		"JCA_V_CarrierRigKBT_01_recon_olive_F",
		"JCA_V_CarrierRigKBT_01_recon_sand_F",
		"JCA_V_CarrierRigKBT_01_tactical_black_F",
		"JCA_V_CarrierRigKBT_01_tactical_olive_F",
		"JCA_V_CarrierRigKBT_01_tactical_sand_F",
		"JCA_V_CarrierRigKBT_01_black_F",
		"JCA_V_CarrierRigKBT_01_olive_F",
		"JCA_V_CarrierRigKBT_01_sand_F",
		"pca_vest_invisible_kevlar"
];

private _itemVestPilot = 
[
	"CUP_V_CPC_communications_coy",
		"CUP_V_CPC_Fast_coy",
		"CUP_V_CPC_light_coy",
		"CUP_V_CPC_medical_coy",
		"CUP_V_CPC_tl_coy",
		"CUP_V_CPC_weapons_coy",
		"CUP_V_CPC_communicationsbelt_coy",
		"CUP_V_CPC_Fastbelt_coy",
		"CUP_V_CPC_lightbelt_coy",
		"CUP_V_CPC_medicalbelt_coy",
		"CUP_V_CPC_tlbelt_coy",
		"CUP_V_CPC_weaponsbelt_coy",
		"CUP_V_CPC_communications_rngr",
		"CUP_V_CPC_Fast_rngr",
		"CUP_V_CPC_light_rngr",
		"CUP_V_CPC_medical_rngr",
		"CUP_V_CPC_tl_rngr",
		"CUP_V_CPC_weapons_rngr",
		"CUP_V_CPC_communicationsbelt_rngr",
		"CUP_V_CPC_Fastbelt_rngr",
		"CUP_V_CPC_lightbelt_rngr",
		"CUP_V_CPC_medicalbelt_rngr",
		"CUP_V_CPC_tlbelt_rngr",
		"CUP_V_CPC_weaponsbelt_rngr",
		"CUP_V_B_Armatus_Black",
		"CUP_V_B_Armatus_BB_Black",
		"CUP_V_B_Armatus_Coyote",
		"CUP_V_B_Armatus_BB_Coyote",
		"CUP_V_B_Armatus_OD",
		"CUP_V_B_Armatus_BB_OD",
		"CUP_V_PMC_CIRAS_Khaki_Patrol",
		"CUP_V_PMC_CIRAS_OD_Patrol",
		"CUP_V_PMC_CIRAS_Black_Veh",
		"CUP_V_PMC_CIRAS_Coyote_Veh",
		"CUP_V_PMC_CIRAS_Khaki_Veh",
		"CUP_V_PMC_CIRAS_OD_Veh",
		"CUP_V_PMC_CIRAS_Black_Empty",
		"CUP_V_PMC_CIRAS_Coyote_Empty",
		"CUP_V_PMC_CIRAS_Khaki_Empty",
		"CUP_V_PMC_CIRAS_OD_Empty",
		"CUP_V_PMC_CIRAS_Black_Grenadier",
		"CUP_V_PMC_CIRAS_Coyote_Grenadier",
		"CUP_V_PMC_CIRAS_Khaki_Grenadier",
		"CUP_V_PMC_CIRAS_OD_Grenadier",
		"CUP_V_PMC_CIRAS_Black_Patrol",
		"CUP_V_PMC_CIRAS_Coyote_Patrol",
		"CUP_V_PMC_CIRAS_Black_TL",
		"CUP_V_PMC_CIRAS_Coyote_TL",
		"CUP_V_PMC_CIRAS_Khaki_TL",
		"CUP_V_PMC_CIRAS_OD_TL",
		"CUP_V_B_Ciras_Black",
		"CUP_V_B_Ciras_Black2",
		"CUP_V_B_Ciras_Black3",
		"CUP_V_B_Ciras_Black4",
		"CUP_V_B_Ciras_Khaki2",
		"CUP_V_B_Ciras_Khaki",
		"CUP_V_B_Ciras_Khaki3",
		"CUP_V_B_Ciras_Khaki4",
		"CUP_V_B_Ciras_MCam",
		"CUP_V_B_Ciras_MCam2",
		"CUP_V_B_Ciras_Mcam3",
		"CUP_V_B_Ciras_Mcam4",
		"CUP_V_B_Ciras_Olive",
		"CUP_V_B_Ciras_Olive2",
		"CUP_V_B_Ciras_Olive3",
		"CUP_V_B_Ciras_Olive4",
		"CUP_V_B_Ciras_Olive_USSF",
		"CUP_V_CPC_communications_mc",
		"CUP_V_CPC_Fast_mc",
		"CUP_V_CPC_light_mc",
		"CUP_V_CPC_medical_mc",
		"CUP_V_CPC_tl_mc",
		"CUP_V_CPC_weapons_mc",
		"CUP_V_CPC_communicationsbelt_mc",
		"CUP_V_CPC_Fastbelt_mc",
		"CUP_V_CPC_lightbelt_mc",
		"CUP_V_CPC_medicalbelt_mc",
		"CUP_V_CPC_tlbelt_mc",
		"CUP_V_CPC_weaponsbelt_mc",
		"CUP_V_B_Armatus_US_MCam",
		"CUP_V_B_Armatus_BB_US_MCam",
		"CUP_V_B_Armatus_MCam",
		"CUP_V_B_Armatus_BB_MCam",
		"CUP_V_B_LBT_LBV_US_MCam",
		"JCA_V_CarrierRigKBT_01_combat_black_F",
		"JCA_V_CarrierRigKBT_01_combat_olive_F",
		"JCA_V_CarrierRigKBT_01_combat_sand_F",
		"JCA_V_CarrierRigKBT_01_command_black_F",
		"JCA_V_CarrierRigKBT_01_command_olive_F",
		"JCA_V_CarrierRigKBT_01_command_sand_F",
		"JCA_V_CarrierRigKBT_01_compact_black_F",
		"JCA_V_CarrierRigKBT_01_compact_olive_F",
		"JCA_V_CarrierRigKBT_01_compact_sand_F",
		"JCA_V_CarrierRigKBT_01_CQB_black_F",
		"JCA_V_CarrierRigKBT_01_CQB_olive_F",
		"JCA_V_CarrierRigKBT_01_CQB_sand_F",
		"JCA_V_CarrierRigKBT_01_crew_black_F",
		"JCA_V_CarrierRigKBT_01_crew_olive_F",
		"JCA_V_CarrierRigKBT_01_crew_sand_F",
		"JCA_V_CarrierRigKBT_01_heavy_black_F",
		"JCA_V_CarrierRigKBT_01_heavy_olive_F",
		"JCA_V_CarrierRigKBT_01_heavy_sand_F",
		"JCA_V_CarrierRigKBT_01_light_black_F",
		"JCA_V_CarrierRigKBT_01_light_olive_F",
		"JCA_V_CarrierRigKBT_01_light_sand_F",
		"JCA_V_CarrierRigKBT_01_recon_black_F",
		"JCA_V_CarrierRigKBT_01_recon_olive_F",
		"JCA_V_CarrierRigKBT_01_recon_sand_F",
		"JCA_V_CarrierRigKBT_01_tactical_black_F",
		"JCA_V_CarrierRigKBT_01_tactical_olive_F",
		"JCA_V_CarrierRigKBT_01_tactical_sand_F",
		"JCA_V_CarrierRigKBT_01_black_F",
		"JCA_V_CarrierRigKBT_01_olive_F",
		"JCA_V_CarrierRigKBT_01_sand_F",
		"pca_vest_invisible_kevlar"
];

//Headgear 
private _itemHeadgear = 
[
	"H_Bandanna_gry",
		"H_Bandanna_cbr",
		"H_Bandanna_khk",
		"H_Bandanna_khk_hs",
		"H_Watchcap_blk",
		"H_Watchcap_cbr",
		"H_Booniehat_khk",
		"H_Booniehat_khk_hs",
		"H_Booniehat_oli",
		"H_Booniehat_tan",
		"H_Cap_blk",
		"H_Cap_blu",
		"H_Cap_grn",
		"H_Cap_blk_ION",
		"H_Cap_oli",
		"H_Cap_oli_hs",
		"H_Cap_red",
		"H_Cap_surfer",
		"H_Cap_tan",
		"H_Cap_khaki_specops_UK",
		"H_Cap_usblack",
		"H_Cap_tan_specops_US",
		"H_HelmetB_light_black",
		"H_Cap_headphones",
		"H_Shemag_khk",
		"H_Shemag_olive",
		"H_Shemag_olive_hs",
		"H_ShemagOpen_tan",
		"H_ShemagOpen_khk",
		"Aegis_lxWS_H_bmask_UwU",
		"H_Watchcap_cbr_hs",
		"H_Watchcap_camo_hs",
		"H_Watchcap_blk_hs",
		"H_Watchcap_khk_hs",
		"H_Watchcap_red",
		"H_Booniehat_blk",
		"H_Booniehat_mgrn_hs",
		"H_Booniehat_oli_hs",
		"H_Cap_blk_ION_hs",
		"H_Cap_usblack_hs",
		"H_Cap_khaki_specops_UK_hs",
		"H_Cap_UK_mtp",
		"H_HeadSet_olive_F",
		"H_HeadSet_sand_F",
		"H_Headset_light",
		"Aegis_H_Helmet_FASTMT_blk_F",
		"Aegis_H_Helmet_FASTMT_Cover_blk_F",
		"Aegis_H_Helmet_FASTMT_Cover_rgr_F",
		"Aegis_H_Helmet_FASTMT_Cover_tan_F",
		"Aegis_H_Helmet_FASTMT_cbr_F",
		"Aegis_H_Helmet_FASTMT_rgr_F",
		"Aegis_H_Helmet_FASTMT_Headset_blk_F",
		"Aegis_H_Helmet_FASTMT_Headset_cbr_F",
		"Aegis_H_Helmet_FASTMT_Headset_rgr_F",
		"Aegis_H_Helmet_FASTMT_Headset_tan_F",
		"Aegis_H_Helmet_FASTMT_tan_F",
		"H_Cap_headphones_blk",
		"H_Cap_headphones_gry",
		"H_Cap_headphones_blk_ION",
		"H_Cap_headphones_tan",
		"H_Hat_Pakol_brn_F",
		"H_Hat_Pakol_gry_F",
		"H_Hat_Pakol_tan_F",
		"lxWS_H_bmask_base",
		"H_Cap_headphones_ion_lxws",
		"lxWS_H_CapB_rvs_blk_ION",
		"lxWS_H_Headset",
		"H_Hat_Safari_sand_F",
		"CUP_H_RUS_Ratnik_Balaclava_6M2_Green_1",
		"CUP_H_RUS_Ratnik_Balaclava_6M2_Green_2",
		"CUP_H_RUS_Ratnik_Balaclava_6M2_Green_3",
		"CUP_H_RUS_Ratnik_Balaclava_6M2_Green_4",
		"CUP_H_RUS_Ratnik_Balaclava_6M21_Green_1",
		"CUP_H_RUS_Ratnik_Balaclava_6M21_Green_2",
		"CUP_H_RUS_Ratnik_Balaclava_6M21_Green_3",
		"CUP_H_RUS_Ratnik_Balaclava_6M21_Green_4",
		"CUP_H_RUS_Bandana_GSSh_Headphones",
		"CUP_H_PMC_Beanie_Headphones_Black",
		"CUP_H_PMC_Cap_Burberry",
		"CUP_H_PMC_Cap_Back_Burberry",
		"CUP_H_PMC_Cap_Back_PRR_Burberry",
		"CUP_H_PMC_Cap_PRR_Burberry",
		"CUP_H_PMC_Cap_Grey",
		"CUP_H_PMC_Cap_Back_Grey",
		"CUP_H_PMC_Cap_Back_EP_Grey",
		"CUP_H_PMC_Cap_Back_PRR_Grey",
		"CUP_H_PMC_Cap_EP_Grey",
		"CUP_H_PMC_Cap_PRR_Grey",
		"CUP_H_PMC_Cap_Back_Tan",
		"CUP_H_PMC_Cap_Back_EP_Tan",
		"CUP_H_PMC_Cap_Back_PRR_Tan",
		"CUP_H_PMC_Cap_EP_Tan",
		"CUP_H_PMC_Cap_PRR_Tan",
		"CUP_H_USArmy_Helmet_ECH2_Black",
		"CUP_H_USArmy_Helmet_ECH1_Black",
		"CUP_H_FR_ECH",
		"CUP_H_USArmy_Helmet_ECH1_Sand",
		"CUP_H_RUS_Ratnik_6M2_Desert",
		"CUP_H_RUS_Ratnik_6M2_Summer",
		"CUP_H_RUS_Ratnik_6M21_Desert",
		"CUP_H_RUS_Ratnik_6M21_Summer",
		"CUP_H_Ger_M92_Black",
		"CUP_H_Ger_M92_Black_GG",
		"CUP_H_Ger_M92_Black_GG_CB",
		"CUP_H_Ger_M92_Black_GG_CF",
		"CUP_H_CZ_Helmet07",
		"CUP_H_CZ_Helmet08",
		"CUP_H_CZ_Helmet10",
		"CUP_H_CZ_Helmet09",
		"CUP_H_OpsCore_Black",
		"CUP_H_OpsCore_Black_NoHS",
		"CUP_H_OpsCore_Green",
		"CUP_H_OpsCore_Green_NoHS",
		"CUP_H_OpsCore_Covered_MTP",
		"CUP_H_OpsCore_Covered_MTP_NoHS",
		"CUP_H_OpsCore_Covered_MCAM",
		"CUP_H_OpsCore_Covered_MCAM_NoHS",
		"CUP_H_OpsCore_Black_SF",
		"CUP_H_OpsCore_Green_SF",
		"CUP_H_OpsCore_Covered_MTP_SF",
		"CUP_H_OpsCore_Covered_MCAM_US_SF",
		"CUP_H_OpsCore_Covered_MCAM_SF",
		"CUP_H_CZ_Pakol_headset_f_brown",
		"CUP_H_CZ_Pakol_headset_b_grey",
		"CUP_H_PMC_PRR_Headset",
		"JCA_H_HelmetHBK_black_F",
		"JCA_H_HelmetHBK_chops_black_F",
		"JCA_H_HelmetHBK_ear_black_F",
		"JCA_H_HelmetHBK_headset_black_F",
		"JCA_H_HelmetHBK_olive_F",
		"JCA_H_HelmetHBK_chops_olive_F",
		"JCA_H_HelmetHBK_ear_olive_F",
		"JCA_H_HelmetHBK_headset_olive_F",
		"JCA_H_HelmetHBK_sand_F",
		"JCA_H_HelmetHBK_chops_sand_F",
		"JCA_H_HelmetHBK_ear_sand_F",
		"JCA_H_HelmetHBK_headset_sand_F",
		"TC_Helmet_CowboyHat1",
		"TC_Helmet_Invisible_Medium"
];

private _itemHeadgearCrew = 
[
	"CUP_H_CVC",
	"CUP_H_CVCH_des",
	"H_HelmetCrew_I",
	"H_HelmetCrew_I_I",
	"lxWS_H_HelmetCrew_I",
	"lxWS_H_Tank_tan_F",
	"H_Tank_black_F",
	"CUP_H_CZ_Helmet05"
];

private _itemHeadgearPilot = 
[
	"H_PilotHelmetHeli_B",
		"H_PilotHelmetHeli_O",
		"H_PilotHelmetHeli_B_visor_up",
		"H_PilotHelmetHeli_I_E_visor_up",
		"CUP_H_SPH4_green",
		"CUP_H_SPH4_green_visor",
		"CUP_H_SPH4_grey",
		"CUP_H_SPH4_grey_visor",
		"CUP_H_SPH4_khaki",
		"CUP_H_SPH4_khaki_visor",
		"CUP_H_SPH4",
		"CUP_H_SPH4_visor",
		"H_CrewHelmetHeli_B",
		"H_CrewHelmetHeli_O",
		"H_CrewHelmetHeli_I_E"
];

//Backpack 
private _itemBackpack = 
[
	"B_Carryall_blk",
		"B_Carryall_cbr",
		"B_Carryall_mcamo",
		"B_Carryall_oli",
		"B_Kitbag_cbr",
		"B_Kitbag_rgr",
		"B_Kitbag_mcamo",
		"B_Kitbag_sgg",
		"B_Kitbag_tan",
		"B_Kitbag_blk",
		"B_TacticalPack_khk",
		"B_TacticalPack_sgg",
		"B_CivilianBackpack_01_Everyday_Black_F",
		"pca_backpack_invisible_large",
		"B_AssaultPack_blk",
		"B_AssaultPack_cbr",
		"B_AssaultPack_rgr",
		"B_AssaultPack_khk",
		"B_AssaultPack_mcamo",
		"B_AssaultPack_sgg",
		"B_FieldPack_blk",
		"B_FieldPack_cbr",
		"B_FieldPack_khk",
		"B_FieldPack_oli",
		"B_AssaultPackSpec_blk",
		"B_AssaultPackSpec_cbr",
		"B_AssaultPackSpec_rgr",
		"B_AssaultPackSpec_mcamo",
		"B_AssaultPack_tan",
		"B_AssaultPackSpec_wdl_F",
		"B_RadioBag_01_coyote_F",
		"B_RadioBag_01_green_F",
		"B_RadioBag_01_sage_F",
		"B_RadioBag_01_black_F",
		"B_shield_backpack_lxWS",
		"B_LegStrapBag_black_F",
		"B_LegStrapBag_coyote_F",
		"B_LegStrapBag_olive_F",
		"B_Messenger_Black_F",
		"B_Messenger_Coyote_F",
		"B_Messenger_Gray_F",
		"B_Messenger_Olive_F"
];

private _itemBackpackCrew = 
[
	"B_Carryall_blk",
		"B_Carryall_cbr",
		"B_Carryall_mcamo",
		"B_Carryall_oli",
		"B_Kitbag_cbr",
		"B_Kitbag_rgr",
		"B_Kitbag_mcamo",
		"B_Kitbag_sgg",
		"B_Kitbag_tan",
		"B_Kitbag_blk",
		"B_TacticalPack_khk",
		"B_TacticalPack_sgg",
		"B_CivilianBackpack_01_Everyday_Black_F",
		"pca_backpack_invisible_large",
		"B_AssaultPack_blk",
		"B_AssaultPack_cbr",
		"B_AssaultPack_rgr",
		"B_AssaultPack_khk",
		"B_AssaultPack_mcamo",
		"B_AssaultPack_sgg",
		"B_FieldPack_blk",
		"B_FieldPack_cbr",
		"B_FieldPack_khk",
		"B_FieldPack_oli",
		"B_AssaultPackSpec_blk",
		"B_AssaultPackSpec_cbr",
		"B_AssaultPackSpec_rgr",
		"B_AssaultPackSpec_mcamo",
		"B_AssaultPack_tan",
		"B_AssaultPackSpec_wdl_F",
		"B_RadioBag_01_coyote_F",
		"B_RadioBag_01_green_F",
		"B_RadioBag_01_sage_F",
		"B_RadioBag_01_black_F",
		"B_shield_backpack_lxWS",
		"B_LegStrapBag_black_F",
		"B_LegStrapBag_coyote_F",
		"B_LegStrapBag_olive_F",
		"B_Messenger_Black_F",
		"B_Messenger_Coyote_F",
		"B_Messenger_Gray_F",
		"B_Messenger_Olive_F"
];

private _itemBackpackPilot = 
[
	"B_Carryall_blk",
		"B_Carryall_cbr",
		"B_Carryall_mcamo",
		"B_Carryall_oli",
		"B_Kitbag_cbr",
		"B_Kitbag_rgr",
		"B_Kitbag_mcamo",
		"B_Kitbag_sgg",
		"B_Kitbag_tan",
		"B_Kitbag_blk",
		"B_TacticalPack_khk",
		"B_TacticalPack_sgg",
		"B_CivilianBackpack_01_Everyday_Black_F",
		"pca_backpack_invisible_large",
		"B_AssaultPack_blk",
		"B_AssaultPack_cbr",
		"B_AssaultPack_rgr",
		"B_AssaultPack_khk",
		"B_AssaultPack_mcamo",
		"B_AssaultPack_sgg",
		"B_FieldPack_blk",
		"B_FieldPack_cbr",
		"B_FieldPack_khk",
		"B_FieldPack_oli",
		"B_AssaultPackSpec_blk",
		"B_AssaultPackSpec_cbr",
		"B_AssaultPackSpec_rgr",
		"B_AssaultPackSpec_mcamo",
		"B_AssaultPack_tan",
		"B_AssaultPackSpec_wdl_F",
		"B_RadioBag_01_coyote_F",
		"B_RadioBag_01_green_F",
		"B_RadioBag_01_sage_F",
		"B_RadioBag_01_black_F",
		"B_shield_backpack_lxWS",
		"B_LegStrapBag_black_F",
		"B_LegStrapBag_coyote_F",
		"B_LegStrapBag_olive_F",
		"B_Messenger_Black_F",
		"B_Messenger_Coyote_F",
		"B_Messenger_Gray_F",
		"B_Messenger_Olive_F"
];

//Cosmetic 
private _itemCosmetic = 
[
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_BlueStrips",
	"G_Balaclava_combat",
	"G_Balaclava_Halloween_01",
	"G_Balaclava_lowprofile",
	"G_Balaclava_oli",
	"G_Balaclava_Flames1",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_OrangeFlame1",
	"G_Bandanna_shades",
	"G_Bandanna_tan",
	"G_Bandanna_Vampire_01",
	"G_Combat",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Tactical_Clear",
	"G_Tactical_Black",
	"G_Spectacles_Tinted",
	"G_Balaclava_Skull1",
	"G_Bandanna_BlueFlame1",
	"G_Bandanna_BlueFlame2",
	"G_Bandanna_CandySkull",
	"G_Bandanna_Germany",
	"G_Bandanna_RedFlame2",
	"G_Bandanna_RedFlame1",
	"G_Bandanna_shemag",
	"G_Bandanna_Skull1",
	"G_Bandanna_Skull2",
	"G_Bandanna_kawaii",
	"G_Cigarette",
	"G_Combat_Goggles_blk_F",
	"Aegis_G_Headset_black_F",
	"Aegis_G_Headset_Olive_F",
	"Aegis_G_Headset_orange_F",
	"Aegis_G_Headset_red_F",
	"Aegis_G_Headset_Sand_F",
	"Aegis_G_Headset_white_F",
	"Aegis_G_Headset_Yellow_F",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
	"G_Headset_light",
	"G_Shades_Yellowred",
	"G_Shemag_khk",
	"G_Shemag_oli",
	"G_Shemag_red",
	"G_Shemag_shades",
	"G_Shemag_tactical",
	"G_Shemag_tan",
	"G_Shemag_white",
	"Aegis_G_Condor_EyePro_F",
	"G_Headset_Tactical",
	"G_Balaclava_TI_blk_F",
	"G_Balaclava_TI_G_blk_F",
	"G_Bandanna_TransPride",
	"G_AirPurifyingRespirator_01_F",
	"G_AirPurifyingRespirator_02_black_F",
	"G_AirPurifyingRespirator_02_olive_F",
	"G_AirPurifyingRespirator_02_sand_F",
	"G_Balaclava_blk_lxWS",
	"G_Balaclava_oli_lxWS",
	"G_Balaclava_snd_lxWS",
	"G_Combat_lxWS",
	"G_Headset_lxWS",
	"CUP_RUS_Balaclava_blk",
	"CUP_RUS_Balaclava_grn",
	"CUP_RUS_Balaclava_rgr",
	"CUP_RUS_Balaclava_tan",
	"CUP_G_RUS_Ratnik_Balaclava_Desert_1",
	"CUP_G_RUS_Ratnik_Balaclava_Desert_2",
	"CUP_G_RUS_Ratnik_Balaclava_Desert_3",
	"CUP_G_RUS_Ratnik_Balaclava_Desert_4",
	"CUP_G_RUS_Ratnik_Balaclava_Green_1",
	"CUP_G_RUS_Ratnik_Balaclava_Green_2",
	"CUP_G_RUS_Ratnik_Balaclava_Green_3",
	"CUP_G_RUS_Ratnik_Balaclava_Green_4",
	"CUP_G_RUS_Ratnik_Balaclava_Olive_1",
	"CUP_G_RUS_Ratnik_Balaclava_Olive_2",
	"CUP_G_RUS_Ratnik_Balaclava_Sage_1",
	"CUP_G_RUS_Ratnik_Balaclava_Sage_2",
	"CUP_G_RUS_Ratnik_Balaclava_Winter_Green_1",
	"CUP_G_RUS_Ratnik_Balaclava_Winter_Green_2",
	"CUP_G_RUS_Ratnik_Balaclava_Winter_3",
	"CUP_G_RUS_Ratnik_Balaclava_Winter_4",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_RGR_Facewrap_Ranger",
	"CUP_G_ESS_CBR_Facewrap_Red",
	"CUP_G_ESS_RGR_Facewrap_Skull",
	"CUP_G_ESS_KHK_Facewrap_Tan",
	"CUP_G_ESS_RGR_Facewrap_Tropical",
	"CUP_G_ESS_KHK_Facewrap_White",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Grn",
	"CUP_G_ESS_BLK_Scarf_Red",
	"CUP_G_ESS_KHK_Scarf_Tan",
	"CUP_G_ESS_BLK_Scarf_White",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_G_ESS_BLK_Scarf_Face_Red",
	"CUP_G_ESS_KHK_Scarf_Face_Tan",
	"CUP_G_ESS_BLK_Scarf_Face_White",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Red_Beard",
	"CUP_G_ESS_BLK_Scarf_Red_Beard_Blonde",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard_Blonde",
	"CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset",
	"CUP_G_PMC_Facewrap_Black_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Black_Glasses_Ember",
	"CUP_PMC_Facewrap_Black",
	"CUP_PMC_Facewrap_Ranger",
	"CUP_PMC_Facewrap_Red",
	"CUP_PMC_Facewrap_Skull",
	"CUP_PMC_Facewrap_Smilie",
	"CUP_G_PMC_Facewrap_Tan_Glasses_Dark_Headset",
	"CUP_G_PMC_Facewrap_Tan_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Tan_Glasses_Ember",
	"CUP_PMC_Facewrap_Tan",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark_Headset",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Ember",
	"CUP_PMC_Facewrap_Tropical",
	"CUP_G_PMC_Facewrap_Winter_Glasses_Dark_Headset",
	"CUP_G_PMC_Facewrap_Winter_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Winter_Glasses_Ember",
	"CUP_PMC_Facewrap_Winter",
	"CUP_G_RUS_Ratnik_6M2_Desert",
	"CUP_G_RUS_Ratnik_6M2_Summer",
	"CUP_G_RUS_Ratnik_6M21_Desert",
	"CUP_G_RUS_Ratnik_6M21_Summer",
	"CUP_G_PMC_RadioHeadset_Glasses_Dark",
	"CUP_G_PMC_RadioHeadset_Glasses_Ember",
	"CUP_G_PMC_RadioHeadset_Glasses",
	"CUP_G_PMC_RadioHeadset",
	"CUP_TK_NeckScarf",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Tan",
	"CUP_G_Scarf_Face_White",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Embr",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_Grn_Scarf_Shades",
	"CUP_G_Tan_Scarf_Shades",
	"CUP_G_White_Scarf_Shades",
	"CUP_G_Grn_Scarf_Shades_Beard",
	"CUP_G_Grn_Scarf_Shades_Beard_Blonde",
	"CUP_G_Tan_Scarf_Shades_Beard",
	"CUP_G_Tan_Scarf_Shades_Beard_Blonde",
	"CUP_G_White_Scarf_Shades_Beard",
	"CUP_G_White_Scarf_Shades_Beard_Blonde",
	"CUP_G_Beard_Shades_Black",
	"CUP_G_Beard_Shades_Blonde",
	"CUP_FR_NeckScarf3",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf5",
	"CUP_FR_NeckScarf4",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"JAM_G_Gloves_Leather_blk",
	"JAM_G_Glasses_Spamton",
	"JAM_G_Gloves_wool_blk",
	"JAM_G_Gloves_wool_brn",
	"JAM_G_Gloves_wool_cut_blk",
	"JAM_G_Gloves_wool_cut_brn",
	"JAM_G_Gloves_wool_cut_oli",
	"JAM_G_Gloves_wool_oli",
	"JCA_G_AirPurifyingRespirator_04_black_clear_F",
	"JCA_G_AirPurifyingRespirator_04_black_tinted_F",
	"M40_Gas_mask_nbc_f2_d",
	"M40_Gas_mask_nbc_f4_d",
	"G_SWDG",
	"G_SWDG_low",
	"G_Nomex_1",
	"G_Nomex_1_fold",
	"G_Nomex_1_lang",
	"TC_G_NitrileGloves_1",
	"ACE_NVG_Gen4_Black",
	"ACE_NVG_Gen4_Black_WP"
];

//********************************************************************************//
// Miscellaneous Items
//********************************************************************************//

private _itemMisc = 
[
	"ACRE_PRC343",
	"ACE_MapTools",
	"ACE_RangeCard",
	"ItemCompass",
	"ItemMap",
	"ItemWatch",
	"ToolKit",
	"ACE_CableTie",
	"ACE_IR_Strobe_Item",
	"Laserbatteries",
	"ACE_wirecutter",
	"murshun_cigs_lighter",
	"murshun_cigs_cigpack"
	
	//Removed AT4 open sight and Adapter for AKs (both from RHS)
];

private _itemBino = 
[
	"Binocular",
	"Laserdesignator"
];

private _itemRadio = 
[
	"ACRE_PRC148",
	"ACRE_PRC152",
	"ACRE_PRC117F"
];

private _itemMedBasic = 
[
	//Bandages
	"ACE_fieldDressing",
	"ACE_elasticBandage",
	"ACE_packingBandage",
	"ACE_quikclot",
	//Specialized Equipments
	"ACE_splint",
	"ACE_tourniquet"
];

private _itemMedAdv = 
[
	//Fluids
	"ACE_bloodIV",
	"ACE_bloodIV_250",
	"ACE_bloodIV_500",
	"ACE_plasmaIV",
	"ACE_plasmaIV_250",
	"ACE_plasmaIV_500",
	"ACE_salineIV",
	"ACE_salineIV_250",
	"ACE_salineIV_500",
	//Medications
	"ACE_adenosine",
	"ACE_epinephrine",
	"ACE_morphine",
	//Specialized Equipments
	"ACE_surgicalKit",
	"ACE_suture",
	"ACE_personalAidKit"
];

//********************************************************************************//
// Weapons
//********************************************************************************//

private _itemAcc = 
[
	//Optic
	"CUP_optic_CompM4",
	"CUP_optic_CompM2_Black",
	"CUP_optic_HoloBlack",
	"CUP_optic_Eotech553_Black",
	"CUP_optic_MicroT1",
	"CUP_optic_MicroT1_low",
	"optic_Yorris",
	"optic_Aco",
	"optic_MRCO",
	"optic_Hamr",
	"Aegis_optic_ACOG",
	"Aegis_optic_1p87",
	"Aegis_optic_ICO",
	"Aegis_optic_ROS",
	"optic_Arco_blk_F",
	"optic_Holosight_blk_F",
	"optic_ERCO_blk_F",
	"optic_LRCO_blk_F",
	"optic_r1_high_lxWS",
	"optic_r1_low_lxWS",
	"CUP_optic_Aimpoint_5000",
	"CUP_optic_AC11704_Black",
	"CUP_optic_ElcanM145",
	"CUP_optic_HensoldtZO",
	"CUP_optic_HensoldtZO_low",
	"CUP_optic_HensoldtZO_low_RDS",
	"CUP_optic_HensoldtZO_RDS",
	"CUP_optic_ISM1400A7",
	"CUP_optic_CompM2_Black",
	"CUP_optic_CompM2_low",
	"CUP_optic_MARS",
	"CUP_optic_MRad",
	"CUP_optic_ACOG_TA01B_Black",
	"CUP_optic_ACOG2",
	"CUP_optic_ACOG",
	"CUP_optic_TrijiconRx01_black",
	"CUP_optic_VortexRazor_UH1_Black",
	"CUP_optic_ZeissZPoint",
	"JCA_optic_MROS_black",
	"CUP_optic_RCO_PCAP",
	
	//Grip
	"CUP_bipod_VLTOR_Modpod_black",
	"CUP_bipod_Harris_1A2_L_BLK",
	
	//Tactical Device
	"CUP_acc_ANPEQ_15_Black",
	"CUP_acc_ANPEQ_15_Flashlight_Black_L",
	"ACE_DBAL_A3_Red",
	"CUP_acc_Flashlight",
	"muzzle_snds_M",
	"ACE_muzzle_mzls_L",
	"CUP_muzzle_snds_XM8"
];

private _itemWeapRifle = 
[
	"CUP_arifle_XM8_Carbine",
	"CUP_arifle_XM8_Carbine_FG",
	"CUP_arifle_XM8_Compact",
	"CUP_arifle_XM8_Compact_FG",
	"Aegis_arifle_M16A4_F",
	"Aegis_arifle_M16A4_FG_F",
	"Aegis_arifle_M4A1_F",
	"Aegis_arifle_M4A1_grip_F",
	"Aegis_arifle_M4A1_short_F",
	"CUP_CZ_BREN2_556_11",
	"CUP_CZ_BREN2_556_14",
	"CUP_CZ_BREN2_556_8",
	"CUP_arifle_G36KA3",
	"CUP_arifle_G36KA3_afg",
	"CUP_arifle_G36KA3_grip",
	"arifle_SPAR_01_blk_F",
	"CUP_arifle_Mk16_CQC",
	"CUP_arifle_Mk16_CQC_AFG",
	"CUP_arifle_Mk16_CQC_AFG_black",
	"CUP_arifle_Mk16_CQC_FG",
	"CUP_arifle_Mk16_CQC_FG_black",
	"CUP_arifle_Mk16_STD",
	"CUP_arifle_Mk16_STD_AFG",
	"CUP_arifle_Mk16_STD_AFG_black",
	"CUP_arifle_Mk16_STD_black",
	"CUP_arifle_Mk16_STD_FG",
	"CUP_arifle_Mk16_STD_FG_black",
	"CUP_arifle_ACR_blk_556",
	"CUP_arifle_ACR_tan_556",
	"CUP_arifle_ACRC_blk_556",
	"CUP_arifle_ACRC_tan_556",
	"arifle_Mk20_black_F",
	"arifle_Mk20C_black_F",
	"CUP_smg_MP5A5_Rail",
	"CUP_smg_MP5A5_Rail_AFG",
	"CUP_smg_MP5A5_Rail_VFG",
	"CUP_smg_MP7",
	"CUP_smg_p90_black",
	"CUP_arifle_XM8_Railed",
	"CUP_arifle_XM8_Carbine_FG_Rail",
	"CUP_arifle_XM8_Compact_Rail",
	"CUP_arifle_XM8_Compact_FG_Rail",
	"JCA_smg_UMP_black_F",
	"JCA_smg_UMP_AFG_black_F",
	"JCA_smg_UMP_VFG_black_F"
	
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_XM8_Carbine_GL",
	"Aegis_arifle_M16A4_GL_F",
	"Aegis_arifle_M4A1_GL_F",
	"CUP_CZ_BREN2_556_11_GL",
	"CUP_CZ_BREN2_556_14_GL",
	"arifle_SPAR_01_GL_blk_F",
	"CUP_arifle_Mk16_CQC_EGLM",
	"CUP_arifle_Mk16_CQC_EGLM_black",
	"CUP_arifle_Mk16_STD_EGLM",
	"CUP_arifle_Mk16_STD_EGLM_black",
	"CUP_arifle_ACR_EGLM_blk_556",
	"CUP_arifle_ACR_EGLM_tan_556",
	"CUP_arifle_ACRC_EGLM_blk_556",
	"CUP_arifle_ACRC_EGLM_tan_556",
	"arifle_Mk20_GL_black_F",
	"CUP_arifle_XM8_Carbine_GL_Rail"
];

private _itemWeapAR = 
[
	"CUP_arifle_XM8_SAW",
	"CUP_arifle_XM8_SAW_FG",
	"SPS_KAC_LAMG_NHG_black_F",
	"ptv_m60e4",
	"CUP_lmg_minimi_railed",
	"CUP_lmg_m249_pip2",
	"LMG_S77_lxWS",
	"LMG_Mk200_plain_F",
	"Atlas_LMG_Negev_black_F",
	"LMG_Mk200_F",
	"arifle_SPAR_02_blk_F",
	"CUP_arifle_XM8_SAW_Rail",
	"CUP_arifle_XM8_SAW_FG_Rail"
];

private _itemWeapLAT = 
[
	"ptv_m72a7",
	"CUP_sgun_AA12",
	"sgun_aa40_lxWS",
	"CUP_sgun_M1014",
	"CUP_sgun_M1014_vfg",
	"CUP_sgun_M1014_Entry",
	"CUP_sgun_M1014_Entry_vfg"
];

private _itemWeapPistol = 
[
	"CUP_hgun_M17_Black",
	"CUP_hgun_Glock17_blk",
	"CUP_hgun_Browning_HP",
	"CUP_hgun_Colt1911",
	"CUP_hgun_M9A1",
	"JCA_hgun_P226_black_F",
	
	
	//Pistol Ammo
	"CUP_17Rnd_9x19_M17_Black",
	"CUP_17Rnd_9x19_glock17",
	"CUP_13Rnd_9x19_Browning_HP",
	"CUP_7Rnd_45ACP_1911",
	"CUP_15Rnd_9x19_M9",
	"JCA_15Rnd_9x19_P226_Mag",
	"JCA_15Rnd_9x19_P226_JHP_Mag"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_M240_B",
	"MMG_01_tan_F",
	"CUP_lmg_FNMAG_RIS_modern"
	
];

private _itemWeapMAT = 
[
	"CUP_launch_MAAWS",
	"CUP_optic_MAAWS_Scope"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_30Rnd_556x45_Stanag",
	"CUP_30Rnd_556x45_XM8",
	"8Rnd_12Gauge_Slug",
	"CUP_20Rnd_B_AA12_Slug",
	"20Rnd_12Gauge_AA40_Slug_lxWS",
	"8Rnd_12Gauge_AA40_Slug_lxWS",
	"CUP_8Rnd_12Gauge_Slug",
	"CUP_6Rnd_12Gauge_Slug",
	"CUP_30Rnd_9x19_MP5",
	"CUP_40Rnd_46x30_MP7",
	"50Rnd_570x28_SMG_03",
	"JCA_25Rnd_45ACP_UMP_Mag"
];

private _itemAmmoTracer = 
[
	"CUP_30Rnd_556x45_Stanag_Tracer_Red",
	"CUP_30Rnd_TE1_Red_Tracer_556x45_XM8",
	"CUP_30Rnd_Red_Tracer_9x19_MP5",
	"CUP_40Rnd_46x30_MP7_Red_Tracer",
	"CUP_50Rnd_570x28_Red_Tracer_P90_M",
	"JCA_25Rnd_45ACP_UMP_Red_Mag",
	"JCA_25Rnd_45ACP_UMP_Tracer_Red_Mag"
];

private _itemAmmoAR = 
[
	"CUP_200Rnd_TE1_Red_Tracer_556x45_M249",
	"CUP_200Rnd_TE4_Red_Tracer_556x45_M249",
	"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",
	"SPS_KAC_LAMG_M855A1_150rnd_Box",
	"SPS_KAC_LAMG_M855A1_150rnd_M_Box",
	"SPS_KAC_LAMG_M856A1_150rnd_T_Box",
	"Atlas_150Rnd_762x51_Box_Red",
	"Atlas_150Rnd_762x51_Box_Tracer_Red",
	"200Rnd_556x45_Box_Red_F",
	"200Rnd_556x45_Box_Tracer_Red_F",
	"200Rnd_65x39_cased_Box",
	"ACE_200Rnd_65x39_cased_Box_red",
	"ACE_200Rnd_65x39_cased_Box_tracer_red",
	"CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_ar15",
	"CUP_100Rnd_556x45_BetaCMag_ar15",
	"CUP_100Rnd_556x45_BetaCMag"
];

private _itemAmmoSignal = 
[
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",
	"CUP_1Rnd_SmokeGreen_M203",
	"CUP_1Rnd_SmokeRed_M203",
	"CUP_1Rnd_SmokeYellow_M203",
	"ACE_40mm_Flare_red",
	"ACE_40mm_Flare_green",
	"ACE_40mm_Flare_white",
	"UGL_FlareGreen_Illumination_F",
	"UGL_FlareRed_Illumination_F",
	"UGL_FlareWhite_Illumination_F",
	"Chemlight_blue",
	"Chemlight_green",
	"ACE_Chemlight_HiBlue",
	"ACE_Chemlight_HiGreen",
	"ACE_Chemlight_HiRed",
	"Chemlight_red",
	"Aegis_HandFlare_Green",
	"Aegis_HandFlare_Red",
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",
	"Aegis_SignalFlare_Green",
	"Aegis_SignalFlare_Red"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"CUP_1Rnd_Smoke_M203",
	"SmokeShell",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"CUP_HandGrenade_M67",
	"ACE_M84"
];

//Special
private _itemAmmoMG = 
[
	"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",
	"150Rnd_93x64_Mag_Red",
	"ACE_150Rnd_93x64_Mag_red"
];

private _itemAmmoMAT = 
[
	"CUP_MAAWS_HEAT_M",
	"CUP_MAAWS_HEDP_M"
];

private _itemEngineer = 
[
	"ACE_Clacker",
	"ACE_DefusalKit",
	"ACE_EntrenchingTool",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"DemoCharge_Remote_Mag",
	"MineDetector",
	"ToolKit"
];

//********************************************************************************//
// Add Current Gear
//********************************************************************************//

{
	_itemGear pushBackUnique _x;
} forEach (primaryWeaponItems _unit);

{
	_itemGear pushBackUnique _x;
} forEach (handgunItems _unit);

{
	_itemGear pushBackUnique _x;
} forEach (assignedItems _unit);

_itemGear pushBack uniform _unit;
_itemGear pushBack vest _unit;
_itemGear pushBack headgear _unit;
_itemGear pushBack backpack _unit;

//********************************************************************************//
// Add Items
//********************************************************************************//

switch (true) do 
{
	//Rifleman
	case (_unitRole == "rm") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier 
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Forward Air Controller
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifle First-Aid
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapMG + _itemWeapPistol + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapMAT + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGear + _itemUniformPilot + _itemVestPilot + _itemHeadgearPilot + _itemBackpackPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive + _itemEngineer)] call ace_arsenal_fnc_initBox;
	};
	default 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
};

//********************************************************************************//
// Add Actions
//********************************************************************************//

_action = 
[
	"personal_arsenal", "Personal Arsenal", "\a3\ui_f\data\igui\cfg\weaponicons\mg_ca.paa",
	{
		[arsenal, _player] call ace_arsenal_fnc_openBox
	},
	{
		(player distance2D (player getVariable ["startPos", [0,0,0]])) < 100
	},
	{},
	[],
	[0,0,0],
	3
] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;