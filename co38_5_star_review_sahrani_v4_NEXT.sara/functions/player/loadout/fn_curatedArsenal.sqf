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
	"CUP_U_CRYE_V1_Full",
		"CUP_U_CRYE_V2_Full",
		"CUP_U_CRYE_V3_Full",
		"CUP_U_CRYE_V1_Roll",
		"CUP_U_CRYE_V2_Roll",
		"CUP_U_CRYE_V3_Roll",
		"CUP_U_CRYE_G3C_Tan_MC_US",
		"CUP_U_CRYE_G3C_RGR_MC_US",
		"CUP_U_CRYE_G3C_MC_US",
		"CUP_U_CRYE_G3C_MC_V2",
		"CUP_U_CRYE_G3C_MC_V3",
		"CUP_U_CRYE_G3C_MC",
		"CUP_U_CRYE_G3C_MC_US_V2"
];

private _itemUniformCrew = 
[
	"CUP_U_CRYE_V1_Full",
		"CUP_U_CRYE_V2_Full",
		"CUP_U_CRYE_V3_Full",
		"CUP_U_CRYE_V1_Roll",
		"CUP_U_CRYE_V2_Roll",
		"CUP_U_CRYE_V3_Roll",
		"CUP_U_CRYE_G3C_Tan_MC_US",
		"CUP_U_CRYE_G3C_RGR_MC_US",
		"CUP_U_CRYE_G3C_MC_US",
		"CUP_U_CRYE_G3C_MC_V2",
		"CUP_U_CRYE_G3C_MC_V3",
		"CUP_U_CRYE_G3C_MC",
		"CUP_U_CRYE_G3C_MC_US_V2"
];

private _itemUniformPilot = 
[
	"CUP_U_CRYE_V1_Full",
		"CUP_U_CRYE_V2_Full",
		"CUP_U_CRYE_V3_Full",
		"CUP_U_CRYE_V1_Roll",
		"CUP_U_CRYE_V2_Roll",
		"CUP_U_CRYE_V3_Roll",
		"CUP_U_CRYE_G3C_Tan_MC_US",
		"CUP_U_CRYE_G3C_RGR_MC_US",
		"USAF_Overalls_Ranger_5_w",
		"USAF_Overalls_Ranger_6_w",
		"USAF_Overalls_Ranger_4_w",
		"CUP_U_CRYE_G3C_MC_US",
		"CUP_U_CRYE_G3C_MC_V2",
		"CUP_U_CRYE_G3C_MC_V3",
		"CUP_U_CRYE_G3C_MC",
		"CUP_U_CRYE_G3C_MC_US_V2"
];

//Vest
private _itemVest = 
[
	"CUP_V_B_Ciras_MCam",
	"CUP_V_B_Ciras_MCam2",
	"CUP_V_B_Ciras_Mcam3",
	"CUP_V_B_Ciras_Mcam4",
	"CUP_V_CPC_communications_mc",
	"CUP_V_CPC_Fast_mc",
	"CUP_V_CPC_light_mc",
	"CUP_V_CPC_medical_mc",
	"CUP_V_CPC_tl_mc",
	"CUP_V_CPC_weapons_mc",
	"CUP_V_CPC_communicationsbelt_mc",
	"CUP_V_CPC_lightbelt_mc",
	"CUP_V_CPC_Fastbelt_mc",
	"CUP_V_CPC_medicalbelt_mc",
	"CUP_V_CPC_tlbelt_mc",
	"CUP_V_CPC_weaponsbelt_mc",
	"CUP_V_B_LBT_LBV_MCam",
	"CUP_V_JPC_communications_mc",
	"CUP_V_JPC_Fast_mc",
	"CUP_V_JPC_medical_mc",
	"CUP_V_JPC_tl_mc",
	"CUP_V_JPC_weapons_mc",
	"CUP_V_JPC_communicationsbelt_mc",
	"CUP_V_JPC_Fastbelt_mc",
	"CUP_V_JPC_lightbelt_mc",
	"CUP_V_JPC_medicalbelt_mc",
	"CUP_V_JPC_tlbelt_mc",
	"CUP_V_JPC_weaponsbelt_mc",
	"CUP_V_B_Armatus_BB_US_MCam",
	"CUP_V_B_Armatus_MCam",
	"CUP_V_B_Armatus_BB_MCam",
	"CUP_V_B_LBT_LBV_US_MCam",
	"V_thor2",
	"V_thor_rgr2",
	"V_thor03",
	"V_thor03_rgr",
	"V_thor_r",
	"V_thor_r_rgr",
	"V_thor_r2",
	"V_thor_r2_rgr",
	"V_thor",
	"V_thor_rgr",
	"V_thor02",
	"V_thor02_rgr",
	"CUP_V_JPC_communications_coy",
	"CUP_V_JPC_Fast_coy",
	"CUP_V_B_JPC_Tan_Light",
	"CUP_V_JPC_medical_coy",
	"CUP_V_JPC_tl_coy",
	"CUP_V_JPC_weapons_coy",
	"CUP_V_JPC_communicationsbelt_coy",
	"CUP_V_JPC_Fastbelt_coy",
	"CUP_V_JPC_lightbelt_coy",
	"CUP_V_JPC_medicalbelt_coy",
	"CUP_V_JPC_tlbelt_coy",
	"CUP_V_JPC_weaponsbelt_coy",
	"CUP_V_JPC_communications_rngr",
	"CUP_V_JPC_Fast_rngr",
	"CUP_V_B_JPC_OD_Light",
	"CUP_V_JPC_medical_rngr",
	"CUP_V_JPC_tl_rngr",
	"CUP_V_JPC_weapons_rngr",
	"CUP_V_JPC_communicationsbelt_rngr",
	"CUP_V_JPC_Fastbelt_rngr",
	"CUP_V_JPC_lightbelt_rngr",
	"CUP_V_JPC_medicalbelt_rngr",
	"CUP_V_JPC_tlbelt_rngr",
	"CUP_V_JPC_weaponsbelt_rngr",
	"CUP_V_B_Ciras_Khaki",
	"CUP_V_B_Ciras_Khaki2",
	"CUP_V_B_Ciras_Khaki3",
	"CUP_V_B_Ciras_Khaki4",
	"CUP_V_B_Ciras_Olive",
	"CUP_V_B_Ciras_Olive2",
	"CUP_V_B_Ciras_Olive3",
	"CUP_V_B_Ciras_Olive4",
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
	"CUP_V_B_Armatus_OD",
	"CUP_V_B_Armatus_BB_OD",
	"CUP_V_B_LBT_LBV_OD"
];

private _itemVestCrew = 
[
	"CUP_V_B_Ciras_MCam",
	"CUP_V_B_Ciras_MCam2",
	"CUP_V_B_Ciras_Mcam3",
	"CUP_V_B_Ciras_Mcam4",
	"CUP_V_CPC_communications_mc",
	"CUP_V_CPC_Fast_mc",
	"CUP_V_CPC_light_mc",
	"CUP_V_CPC_medical_mc",
	"CUP_V_CPC_tl_mc",
	"CUP_V_CPC_weapons_mc",
	"CUP_V_CPC_communicationsbelt_mc",
	"CUP_V_CPC_lightbelt_mc",
	"CUP_V_CPC_Fastbelt_mc",
	"CUP_V_CPC_medicalbelt_mc",
	"CUP_V_CPC_tlbelt_mc",
	"CUP_V_CPC_weaponsbelt_mc",
	"CUP_V_B_LBT_LBV_MCam",
	"CUP_V_JPC_communications_mc",
	"CUP_V_JPC_Fast_mc",
	"CUP_V_JPC_medical_mc",
	"CUP_V_JPC_tl_mc",
	"CUP_V_JPC_weapons_mc",
	"CUP_V_JPC_communicationsbelt_mc",
	"CUP_V_JPC_Fastbelt_mc",
	"CUP_V_JPC_lightbelt_mc",
	"CUP_V_JPC_medicalbelt_mc",
	"CUP_V_JPC_tlbelt_mc",
	"CUP_V_JPC_weaponsbelt_mc",
	"CUP_V_B_Armatus_BB_US_MCam",
	"CUP_V_B_Armatus_MCam",
	"CUP_V_B_Armatus_BB_MCam",
	"CUP_V_B_LBT_LBV_US_MCam",
	"V_thor2",
	"V_thor_rgr2",
	"V_thor03",
	"V_thor03_rgr",
	"V_thor_r",
	"V_thor_r_rgr",
	"V_thor_r2",
	"V_thor_r2_rgr",
	"V_thor",
	"V_thor_rgr",
	"V_thor02",
	"V_thor02_rgr",
	"CUP_V_JPC_communications_coy",
	"CUP_V_JPC_Fast_coy",
	"CUP_V_B_JPC_Tan_Light",
	"CUP_V_JPC_medical_coy",
	"CUP_V_JPC_tl_coy",
	"CUP_V_JPC_weapons_coy",
	"CUP_V_JPC_communicationsbelt_coy",
	"CUP_V_JPC_Fastbelt_coy",
	"CUP_V_JPC_lightbelt_coy",
	"CUP_V_JPC_medicalbelt_coy",
	"CUP_V_JPC_tlbelt_coy",
	"CUP_V_JPC_weaponsbelt_coy",
	"CUP_V_JPC_communications_rngr",
	"CUP_V_JPC_Fast_rngr",
	"CUP_V_B_JPC_OD_Light",
	"CUP_V_JPC_medical_rngr",
	"CUP_V_JPC_tl_rngr",
	"CUP_V_JPC_weapons_rngr",
	"CUP_V_JPC_communicationsbelt_rngr",
	"CUP_V_JPC_Fastbelt_rngr",
	"CUP_V_JPC_lightbelt_rngr",
	"CUP_V_JPC_medicalbelt_rngr",
	"CUP_V_JPC_tlbelt_rngr",
	"CUP_V_JPC_weaponsbelt_rngr",
	"CUP_V_B_Ciras_Khaki",
	"CUP_V_B_Ciras_Khaki2",
	"CUP_V_B_Ciras_Khaki3",
	"CUP_V_B_Ciras_Khaki4",
	"CUP_V_B_Ciras_Olive",
	"CUP_V_B_Ciras_Olive2",
	"CUP_V_B_Ciras_Olive3",
	"CUP_V_B_Ciras_Olive4",
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
	"CUP_V_B_Armatus_OD",
	"CUP_V_B_Armatus_BB_OD",
	"CUP_V_B_LBT_LBV_OD"
];

private _itemVestPilot = 
[
	"CUP_V_B_Ciras_MCam",
	"CUP_V_B_Ciras_MCam2",
	"CUP_V_B_Ciras_Mcam3",
	"CUP_V_B_Ciras_Mcam4",
	"CUP_V_CPC_communications_mc",
	"CUP_V_CPC_Fast_mc",
	"CUP_V_CPC_light_mc",
	"CUP_V_CPC_medical_mc",
	"CUP_V_CPC_tl_mc",
	"CUP_V_CPC_weapons_mc",
	"CUP_V_CPC_communicationsbelt_mc",
	"CUP_V_CPC_lightbelt_mc",
	"CUP_V_CPC_Fastbelt_mc",
	"CUP_V_CPC_medicalbelt_mc",
	"CUP_V_CPC_tlbelt_mc",
	"CUP_V_CPC_weaponsbelt_mc",
	"CUP_V_B_LBT_LBV_MCam",
	"CUP_V_JPC_communications_mc",
	"CUP_V_JPC_Fast_mc",
	"CUP_V_JPC_medical_mc",
	"CUP_V_JPC_tl_mc",
	"CUP_V_JPC_weapons_mc",
	"CUP_V_JPC_communicationsbelt_mc",
	"CUP_V_JPC_Fastbelt_mc",
	"CUP_V_JPC_lightbelt_mc",
	"CUP_V_JPC_medicalbelt_mc",
	"CUP_V_JPC_tlbelt_mc",
	"CUP_V_JPC_weaponsbelt_mc",
	"CUP_V_B_Armatus_BB_US_MCam",
	"CUP_V_B_Armatus_MCam",
	"CUP_V_B_Armatus_BB_MCam",
	"CUP_V_B_LBT_LBV_US_MCam",
	"V_thor2",
	"V_thor_rgr2",
	"V_thor03",
	"V_thor03_rgr",
	"V_thor_r",
	"V_thor_r_rgr",
	"V_thor_r2",
	"V_thor_r2_rgr",
	"V_thor",
	"V_thor_rgr",
	"V_thor02",
	"V_thor02_rgr",
	"CUP_V_JPC_communications_coy",
	"CUP_V_JPC_Fast_coy",
	"CUP_V_B_JPC_Tan_Light",
	"CUP_V_JPC_medical_coy",
	"CUP_V_JPC_tl_coy",
	"CUP_V_JPC_weapons_coy",
	"CUP_V_JPC_communicationsbelt_coy",
	"CUP_V_JPC_Fastbelt_coy",
	"CUP_V_JPC_lightbelt_coy",
	"CUP_V_JPC_medicalbelt_coy",
	"CUP_V_JPC_tlbelt_coy",
	"CUP_V_JPC_weaponsbelt_coy",
	"CUP_V_JPC_communications_rngr",
	"CUP_V_JPC_Fast_rngr",
	"CUP_V_B_JPC_OD_Light",
	"CUP_V_JPC_medical_rngr",
	"CUP_V_JPC_tl_rngr",
	"CUP_V_JPC_weapons_rngr",
	"CUP_V_JPC_communicationsbelt_rngr",
	"CUP_V_JPC_Fastbelt_rngr",
	"CUP_V_JPC_lightbelt_rngr",
	"CUP_V_JPC_medicalbelt_rngr",
	"CUP_V_JPC_tlbelt_rngr",
	"CUP_V_JPC_weaponsbelt_rngr",
	"CUP_V_B_Ciras_Khaki",
	"CUP_V_B_Ciras_Khaki2",
	"CUP_V_B_Ciras_Khaki3",
	"CUP_V_B_Ciras_Khaki4",
	"CUP_V_B_Ciras_Olive",
	"CUP_V_B_Ciras_Olive2",
	"CUP_V_B_Ciras_Olive3",
	"CUP_V_B_Ciras_Olive4",
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
	"CUP_V_B_Armatus_OD",
	"CUP_V_B_Armatus_BB_OD",
	"CUP_V_B_LBT_LBV_OD",
	"CUP_V_B_PilotVest",
	"Aircrew_vest_2_NH"
];

//Headgear 
private _itemHeadgear = 
[
	"CUP_H_OpsCore_Covered_MCAM_US",
	"CUP_H_OpsCore_Covered_MCAM",
	"CUP_H_OpsCore_Covered_MCAM_NoHS",
	"CUP_H_OpsCore_Covered_MCAM_US_SF",
	"CUP_H_OpsCore_Covered_MCAM_SF",
	"CUP_H_USA_Cap_Mcam_DEF",
	"CUP_H_USA_Cap_MCAM",
	"H_Booniehat_mcamo",
	"H_Booniehat_mcamo_hs",
	"Aegis_H_Helmet_FASTMT_Cover_rgr_F",
	"Aegis_H_Helmet_FASTMT_Cover_tan_F",
	"Aegis_H_Helmet_FASTMT_cbr_F",
	"Aegis_H_Helmet_FASTMT_rgr_F",
	"Aegis_H_Helmet_FASTMT_Headset_cbr_F",
	"Aegis_H_Helmet_FASTMT_Headset_rgr_F",
	"Aegis_H_Helmet_FASTMT_Headset_tan_F",
	"Aegis_H_Helmet_FASTMT_Cover_mtp_F",
	"H_Cap_usblack",
	"H_Cap_tan_specops_US",
	"H_Cap_usblack_hs",
	"H_Cap_tan_specops_US_hs",
	"CUP_H_OpsCore_Spray_US",
	"CUP_H_OpsCore_Spray_US_SF",
	"CUP_H_OpsCore_Spray",
	"CUP_H_OpsCore_Spray_NoHS",
	"CUP_H_OpsCore_Tan",
	"CUP_H_OpsCore_Tan_NoHS",
	"CUP_H_OpsCore_Spray_SF"
];

private _itemHeadgearCrew = 
[
	"CUP_H_CVC"
];

private _itemHeadgearPilot = 
[
	"H_CrewHelmetHeli_B",
	"H_CrewHelmetHeli_I_E",
	"H_CrewHelmetHeli_O",
	"H_PilotHelmetHeli_B",
	"H_PilotHelmetHeli_B_visor_up",
	"H_PilotHelmetHeli_I_E",
	"H_PilotHelmetHeli_I_E_visor_up",
	"H_PilotHelmetHeli_O",
	"H_PilotHelmetHeli_O_visor_up",
	"CUP_H_SPH4_green",
	"CUP_H_SPH4_green_visor",
	"CUP_H_SPH4_grey",
	"CUP_H_SPH4_grey_visor",
	"CUP_H_SPH4_khaki",
	"CUP_H_SPH4_khaki_visor",
	"CUP_H_SPH4",
	"CUP_H_SPH4_visor"
];

//Backpack 
private _itemBackpack = 
[
	"CUP_B_US_Assault_OCP",
	"CUP_B_US_IIID_OCP",
	"B_AssaultPack_cbr",
	"B_AssaultPack_rgr",
	"B_AssaultPack_khk",
	"B_AssaultPack_mcamo",
	"B_AssaultPack_sgg",
	"B_Carryall_cbr",
	"B_Carryall_khk",
	"B_Carryall_mcamo",
	"B_Carryall_oli",
	"B_FieldPack_cbr",
	"B_FieldPack_khk",
	"B_FieldPack_oli",
	"B_Kitbag_cbr",
	"B_Kitbag_rgr",
	"B_Kitbag_mcamo",
	"B_Kitbag_sgg",
	"B_Kitbag_tan",
	"B_TacticalPack_blk",
	"B_TacticalPack_rgr",
	"B_TacticalPack_mcamo",
	"B_TacticalPack_oli",
	"B_AssaultPackSpec_rgr",
	"B_AssaultPackSpec_mcamo",
	"B_Kitbag_khk",
	"Aegis_B_patrolBackpack_grn_F",
	"Aegis_B_patrolBackpack_khk_F",
	"Aegis_B_patrolBackpack_mcamo_F",
	"Aegis_B_patrolBackpack_oli_F",
	"B_RadioBag_01_coyote_F",
	"B_RadioBag_01_green_F",
	"B_RadioBag_01_sage_F",
	"B_FieldPack_green_F",
	"B_RadioBag_01_mtp_F",
	"CUP_B_US_Assault_OEFCP",
	"CUP_B_AssaultPack_Coyote",
	"CUP_B_USPack_Coyote",
	"pca_backpack_invisible"
];

private _itemBackpackCrew = 
[
	"CUP_B_US_Assault_OCP",
	"CUP_B_US_IIID_OCP",
	"B_AssaultPack_cbr",
	"B_AssaultPack_rgr",
	"B_AssaultPack_khk",
	"B_AssaultPack_mcamo",
	"B_AssaultPack_sgg",
	"B_Carryall_cbr",
	"B_Carryall_khk",
	"B_Carryall_mcamo",
	"B_Carryall_oli",
	"B_FieldPack_cbr",
	"B_FieldPack_khk",
	"B_FieldPack_oli",
	"B_Kitbag_cbr",
	"B_Kitbag_rgr",
	"B_Kitbag_mcamo",
	"B_Kitbag_sgg",
	"B_Kitbag_tan",
	"B_TacticalPack_blk",
	"B_TacticalPack_rgr",
	"B_TacticalPack_mcamo",
	"B_TacticalPack_oli",
	"B_AssaultPackSpec_rgr",
	"B_AssaultPackSpec_mcamo",
	"B_Kitbag_khk",
	"Aegis_B_patrolBackpack_grn_F",
	"Aegis_B_patrolBackpack_khk_F",
	"Aegis_B_patrolBackpack_mcamo_F",
	"Aegis_B_patrolBackpack_oli_F",
	"B_RadioBag_01_coyote_F",
	"B_RadioBag_01_green_F",
	"B_RadioBag_01_sage_F",
	"B_FieldPack_green_F",
	"B_RadioBag_01_mtp_F",
	"CUP_B_US_Assault_OEFCP",
	"CUP_B_AssaultPack_Coyote",
	"CUP_B_USPack_Coyote",
	"pca_backpack_invisible"
];

private _itemBackpackPilot = 
[
	"CUP_B_US_Assault_OCP",
	"CUP_B_US_IIID_OCP",
	"B_AssaultPack_cbr",
	"B_AssaultPack_rgr",
	"B_AssaultPack_khk",
	"B_AssaultPack_mcamo",
	"B_AssaultPack_sgg",
	"B_Carryall_cbr",
	"B_Carryall_khk",
	"B_Carryall_mcamo",
	"B_Carryall_oli",
	"B_FieldPack_cbr",
	"B_FieldPack_khk",
	"B_FieldPack_oli",
	"B_Kitbag_cbr",
	"B_Kitbag_rgr",
	"B_Kitbag_mcamo",
	"B_Kitbag_sgg",
	"B_Kitbag_tan",
	"B_TacticalPack_blk",
	"B_TacticalPack_rgr",
	"B_TacticalPack_mcamo",
	"B_TacticalPack_oli",
	"B_AssaultPackSpec_rgr",
	"B_AssaultPackSpec_mcamo",
	"B_Kitbag_khk",
	"Aegis_B_patrolBackpack_grn_F",
	"Aegis_B_patrolBackpack_khk_F",
	"Aegis_B_patrolBackpack_mcamo_F",
	"Aegis_B_patrolBackpack_oli_F",
	"B_RadioBag_01_coyote_F",
	"B_RadioBag_01_green_F",
	"B_RadioBag_01_sage_F",
	"B_FieldPack_green_F",
	"B_RadioBag_01_mtp_F",
	"CUP_B_US_Assault_OEFCP",
	"CUP_B_AssaultPack_Coyote",
	"CUP_B_USPack_Coyote",
	"pca_backpack_invisible"
];

//Cosmetic 
private _itemCosmetic = 
[
	"G_AirPurifyingRespirator_02_black_F",
	"G_AirPurifyingRespirator_01_F",
	"M40_Gas_mask_nbc_f2_d",
	"M40_Gas_mask_nbc_f4_d",
	"G_Cigarette",
"immersion_cigs_cigar0",
"murshun_cigs_cig0",
"immersion_pops_pop0",
"immersion_cigs_cigar0_nv",
"murshun_cigs_cig0_nv",
"G_Bandanna_beast",
"G_Bandanna_OrangeFlame1",
"G_Bandanna_Vampire_01",
"G_Balaclava_Skull1",
"G_Bandanna_BlueFlame1",
"G_Bandanna_BlueFlame2",
"G_Bandanna_CandySkull",
"G_Bandanna_RedFlame2",
"G_Bandanna_RedFlame1",
"G_Bandanna_Skull1",
"G_Bandanna_Skull1",
"G_Bandanna_Skull2",
"G_Bandanna_kawaii",
"G_Bandanna_TransPride",
"CUP_G_ESS_RGR_Facewrap_Skull",
"CUP_PMC_Facewrap_Skull",
"CUP_PMC_Facewrap_Smilie",
"G_Shemag_khk",
"G_Shemag_oli",
"G_Shemag_red",
"G_Shemag_tan",
"G_Shemag_white",
"G_Bandanna_shemag",
"CUP_TK_NeckScarf",
"CUP_G_Scarf_Face_Blk",
"CUP_G_Scarf_Face_Grn",
"CUP_G_Scarf_Face_Red",
"CUP_G_Scarf_Face_Tan",
"CUP_G_Scarf_Face_White",
"CUP_FR_NeckScarf3",
"CUP_FR_NeckScarf",
"CUP_FR_NeckScarf2",
"CUP_FR_NeckScarf5",
"CUP_FR_NeckScarf4",
"G_Shemag_shades",
"G_Shemag_tactical",
"CUP_G_Grn_Scarf_Shades",
"CUP_G_Tan_Scarf_Shades",
"CUP_G_White_Scarf_Shades",
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
"Aegis_G_scrimNet_black_F",
"Aegis_G_scrimNet_olive_F",
"Aegis_G_scrimNet_sand_F",
"Aegis_G_scrimNet_under_black_F",
"Aegis_G_scrimNet_under_olive_F",
"Aegis_G_scrimNet_under_sand_F",
"G_Balaclava_blk",
"G_Balaclava_light_blk_F",
"CUP_G_RUS_Ratnik_Balaclava_Green_1",
"CUP_G_RUS_Ratnik_Balaclava_Green_2",
"CUP_PMC_Facewrap_Black",
"CUP_PMC_Facewrap_Ranger",
"CUP_PMC_Facewrap_Red",
"CUP_PMC_Facewrap_Tan",
"CUP_PMC_Facewrap_Tropical",
"CUP_PMC_Facewrap_Winter",
"G_Bandanna_blk",
"G_Bandanna_khk",
"G_Bandanna_oli",
"G_Bandanna_tan",
"G_Balaclava_light_G_blk_F",
"G_Balaclava_lowprofile",
"G_Balaclava_combat",
"G_Balaclava_TI_G_blk_F",
"G_Balaclava_light_mtp_F",
"G_Balaclava_light_G_mtp_F",
"CUP_G_ESS_BLK_Facewrap_Black",
"CUP_G_ESS_RGR_Facewrap_Ranger",
"CUP_G_ESS_CBR_Facewrap_Red",
"CUP_G_ESS_KHK_Facewrap_Tan",
"CUP_G_ESS_RGR_Facewrap_Tropical",
"CUP_G_ESS_KHK_Facewrap_White",
"CUP_G_PMC_Facewrap_Black_Glasses_Dark",
"CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Black_Glasses_Ember",
"CUP_G_PMC_Facewrap_Tan_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Tan_Glasses_Dark",
"CUP_G_PMC_Facewrap_Tan_Glasses_Ember",
"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Tropical_Glasses_Ember",
"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark",
"CUP_G_PMC_Facewrap_Winter_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Winter_Glasses_Dark",
"CUP_G_PMC_Facewrap_Winter_Glasses_Ember",
"G_Bandanna_aviator",
"G_Bandanna_shades",
"G_Aviator",
"G_Squares",
"G_Spectacles_Tinted",
"Aegis_G_Condor_EyePro_F",
"G_Combat_lxWS",
"CUP_G_Oakleys_Clr",
"CUP_G_Oakleys_Drk",
"CUP_G_Oakleys_Embr",
"G_Shades_Black",
"G_Shades_Blue",
"G_Shades_Green",
"G_Shades_Red",
"G_Squares_Tinted",
"G_Shades_Yellowred",
"CUP_G_TK_RoundGlasses",
"CUP_G_TK_RoundGlasses_blk",
"CUP_G_ESS_BLK_Dark",
"CUP_G_ESS_BLK_Ember",
"CUP_G_ESS_BLK",
"G_SWDG",
"G_SWDG_low",
"G_Simc_tacticool",
"G_Tactical_Black",
"G_Tactical_Camo",
"G_Combat",
"G_Lowprofile",
"G_Tactical_Clear",
"G_Combat_Goggles_blk_F",
"G_Tactical_Yellow",
"G_Combat_Goggles_tna_F",
"G_Headset_light",
"G_Headset_Tactical",
"G_Headset_Tactical_grn",
"G_Headset_Tactical_khk",
"G_Headset_lxWS",
"CUP_G_PMC_RadioHeadset",
"JAM_G_Gloves_Leather_blk",
"JAM_G_Gloves_wool_blk",
"JAM_G_Gloves_wool_brn",
"JAM_G_Gloves_wool_cut_blk",
"JAM_G_Gloves_wool_cut_brn",
"JAM_G_Gloves_wool_cut_oli",
"JAM_G_Gloves_wool_oli",
"G_Nomex_1",
"G_Nomex_1_fold",
"G_Nomex_1_lang",
"G_Nomex_2",
"G_Nomex_2_fold",
"G_Nomex_2_lang",
"G_Nomex_2_cut",
"G_Nomex_2_fold_cut",
"G_Nomex_2_lang_cut",
"G_Nomex_1_cut",
"G_Nomex_1_fold_cut",
"G_Nomex_1_lang_cut",
"G_Nomex_desu",
"G_Nomex_desu_fold",
"G_Nomex_desu_lang",
"G_Nomex_desu_2",
"G_Nomex_desu_2_fold",
"G_Nomex_desu_2_lang",
"G_Nomex_desu_2_cut",
"G_Nomex_desu_2_fold_cut",
"G_Nomex_desu_2_lang_cut",
"G_Nomex_desu_cut",
"G_Nomex_desu_fold_cut",
"G_Nomex_desu_lang_cut",
"TC_G_NitrileGloves_1",
"G_Simc_tacticool",
"G_SWDG",
"G_SWDG_low",
"CUP_NVG_GPNVG_black_WP",
		"CUP_NVG_GPNVG_green_WP",
		"CUP_NVG_GPNVG_black",
		"CUP_NVG_GPNVG_green"

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
	"optic_Aco",
	"optic_Arco",
	"optic_Holosight",
	"optic_MRCO",
	"optic_Hamr",
	"Aegis_optic_ACOG",
	"Aegis_optic_ICO",
	"Aegis_optic_ICO_sand",
	"Aegis_optic_ROS",
	"optic_Arco_blk_F",
	"optic_Holosight_blk_F",
	"optic_ERCO_blk_F",
	"optic_LRCO_blk_F",
	"optic_Arco_AK_blk_F",
	"optic_r1_high_lxWS",
	"optic_r1_high_black_sand_lxWS",
	"optic_r1_high_sand_lxWS",
	"optic_r1_low_lxWS",
	"optic_r1_low_sand_lxWS",
	"optic_Hamr_sand_lxWS",
	"CUP_optic_CompM4",
	"CUP_optic_AIMM_COMPM4_BLK",
	"CUP_optic_MicroT1",
	"CUP_optic_MicroT1_low",
	"CUP_optic_AIMM_MICROT1_BLK",
	"CUP_optic_AC11704_Black",
	"CUP_optic_ElcanM145",
	"CUP_optic_Elcan_SpecterDR_black",
	"CUP_optic_Elcan_SpecterDR_coyote",
	"CUP_optic_Elcan_SpecterDR_KF_black",
	"CUP_optic_Elcan_SpecterDR_KF_coyote",
	"CUP_optic_Elcan_SpecterDR_KF",
	"CUP_optic_Elcan_SpecterDR_RMR_black",
	"CUP_optic_Elcan_SpecterDR_RMR_coyote",
	"CUP_optic_Elcan_SpecterDR_KF_RMR_black",
	"CUP_optic_Elcan_SpecterDR_KF_RMR_coyote",
	"CUP_optic_Elcan_SpecterDR_KF_RMR",
	"CUP_optic_Elcan_SpecterDR_RMR",
	"CUP_optic_Elcan_SpecterDR",
	"CUP_optic_Elcan",
	"CUP_optic_Elcan_Coyote",
	"CUP_optic_Elcan_reflex",
	"CUP_optic_Elcan_reflex_Coyote",
	"CUP_optic_HoloBlack",
	"CUP_optic_Eotech553_Black",
	"CUP_optic_Eotech553_Coyote",
	"CUP_optic_Eotech533",
	"CUP_optic_G33_HWS_BLK",
	"CUP_optic_G33_HWS_COYOTE",
	"CUP_optic_HensoldtZO",
	"CUP_optic_HensoldtZO_low",
	"CUP_optic_HensoldtZO_low_RDS",
	"CUP_optic_HensoldtZO_RDS",
	"CUP_optic_CompM2_Black",
	"CUP_optic_CompM2_Coyote",
	"CUP_optic_AIMM_COMPM2_BLK",
	"CUP_optic_AIMM_COMPM2_TAN",
	"CUP_optic_CompM2_low",
	"CUP_optic_CompM2_low_coyote",
	"CUP_optic_AIMM_M68_BLK",
	"CUP_optic_AIMM_M68_TAN",
	"CUP_optic_MARS",
	"CUP_optic_AIMM_MARS_BLK",
	"CUP_optic_MRad",
	"CUP_optic_ZDDot",
	"CUP_optic_AIMM_ZDDOT_BLK",
	"CUP_optic_ACOG2",
	"CUP_optic_ACOG_TA31_KF",
	"CUP_optic_ACOG",
	"CUP_optic_TrijiconRx01_black",
	"CUP_optic_TrijiconRx01_kf_black",
	"CUP_optic_VortexRazor_UH1_Black",
	"CUP_optic_TrijiconRx01_desert",
	"CUP_optic_TrijiconRx01_kf_desert",
	"CUP_optic_VortexRazor_UH1_Tan",
	"JCA_optic_MROS_black",
	"JCA_optic_MROS_black_magnifier",
	"JCA_optic_MROS_sand",
	"JCA_optic_MROS_sand_magnifier",
	
	//Grip
	"CUP_bipod_VLTOR_Modpod_black",
	"CUP_bipod_Harris_1A2_L_BLK",
	
	//Tactical Device
	"CUP_acc_ANPEQ_15_Black",
	"CUP_acc_ANPEQ_15_Flashlight_Black_L",
	"ACE_DBAL_A3_Red",
	"CUP_acc_Flashlight",
	"CUP_acc_ANPEQ_15_Black_Top",
	"CUP_acc_ANPEQ_15_Tan_Top",
	"CUP_acc_ANPEQ_15_Flashlight_Tan_L",
	"CUP_acc_ANPEQ_15_Top_Flashlight_Black_L",
	"CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L",
	"CUP_acc_LLM_black",
	"muzzle_snds_M",
	"ACE_muzzle_mzls_L",
	"muzzle_snds_m_snd_F",
	"suppressor_l_lxWS",
	"suppressor_l_sand_lxWS",
	"CUP_muzzle_mfsup_Flashhider_556x45_Black",
	"CUP_muzzle_mfsup_Flashhider_556x45_Tan",
	"CUP_muzzle_mfsup_SCAR_L",
	"CUP_muzzle_snds_SCAR_L",
	"CUP_muzzle_snds_M16",
	"CUP_muzzle_snds_M16_coyote",
	"ACE_muzzle_mzls_B",
	"muzzle_snds_B",
	"suppressor_h_lxWS",
	"CUP_muzzle_mfsup_Flashhider_762x51_Black",
	"CUP_muzzle_mfsup_SCAR_H",
	"CUP_muzzle_snds_socom762rc"
];

private _itemWeapRifle = 
[
	"CUP_arifle_M4A1_black",
	"CUP_arifle_M4A3_black",
	"CUP_arifle_M4A1_SOMMOD_black",
	"CUP_arifle_M4A1_SOMMOD_tan",
	"CUP_arifle_M4A1_SOMMOD_Grip_black",
	"CUP_arifle_M4A1_SOMMOD_Grip_tan",
	"arifle_SPAR_01_blk_F",
	"Aegis_arifle_SPAR_02_inf_blk_F",
	"CUP_arifle_HK416_Black",
	"CUP_arifle_HK416_CQB_Black"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_M4A1_BUIS_GL",
	"arifle_SPAR_01_GL_blk_F",
	"CUP_arifle_HK416_CQB_M203_Black",
	"CUP_arifle_HK416_CQB_AG36",
	"CUP_arifle_HK416_M203_Black",
	"CUP_arifle_HK416_AGL_Black",
	"ptv_hk69"
];

private _itemWeapAR = 
[
	"CUP_lmg_m249_pip3",
	"CUP_lmg_m249_pip1",
	"CUP_lmg_m249_pip2",
	"CUP_lmg_m249_pip4",
	"CUP_lmg_m249_SQuantoon",
	"arifle_SPAR_02_blk_F",
	"CUP_lmg_Mk48",
	"CUP_lmg_Mk48_nohg",
	"CUP_arifle_HK416_Black",
	"LMG_Mk200_F",
	"LMG_Mk200_plain_F",
	"SPS_KAC_LAMG_NHG_black_F",
	"SPS_KAC_LAMG_NHG_tan_F",
	"SPS_KAC_LAMG_black_F",
	"SPS_KAC_LAMG_Tan_F",
	"LMG_Mk200_black_F",
	"SPS_KAC_LWAMG_Black_F",
	"SPS_KAC_LWAMG_Tan_F"
];

private _itemWeapLAT = 
[
	"CUP_launch_M136",
	"CUP_sgun_M1014",
	"CUP_sgun_M1014_vfg",
	"CUP_sgun_M1014_Entry",
	"CUP_sgun_M1014_Entry_vfg"
];

private _itemWeapPistol = 
[
	"CUP_hgun_M17_Coyote",
	"CUP_hgun_M17_Black",
	"JCA_hgun_P226_black_F",
	"JCA_hgun_P226_sand_F",
	"CUP_hgun_M9A1",
	"CUP_hgun_Glock17",
	"CUP_hgun_Glock17_blk",
	"Aegis_hgun_P320_black_F",
	"Aegis_hgun_P320_sand_F",
	
	//Pistol Ammo
	"CUP_17Rnd_9x19_M17_Black",
	"JCA_15Rnd_9x19_P226_FMJ_Mag",
	"JCA_15Rnd_9x19_P226_JHP_Mag",
	"CUP_15Rnd_9x19_M9",
	"CUP_17Rnd_9x19_glock17",
	"17Rnd_9x21_Mag"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_M240_B",
	"SPS_KAC_LWAMG_Black_F",
	"SPS_KAC_LWAMG_Tan_F"
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
	"CUP_30Rnd_556x45_PMAG_BLACK",
	"CUP_30Rnd_556x45_PMAG_COYOTE",
	"CUP_6Rnd_12Gauge_Slug",
	"CUP_8Rnd_12Gauge_Slug"
];

private _itemAmmoTracer = 
[
	"CUP_30Rnd_556x45_Stanag_Tracer_Red",
	"CUP_30Rnd_556x45_PMAG_BLACK_Tracer_Red",
	"CUP_30Rnd_556x45_PMAG_COYOTE_Tracer_Red"
];

private _itemAmmoAR = 
[
	"CUP_200Rnd_TE1_Red_Tracer_556x45_M249",
	"CUP_200Rnd_TE4_Red_Tracer_556x45_M249",
	"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",
	"SPS_KAC_LAMG_M855A1_150rnd_M_Box_Tan",
	"SPS_KAC_LAMG_M855A1_150rnd_Box_Tan",
	"SPS_KAC_LAMG_M855A1_150rnd_Box",
	"SPS_KAC_LAMG_M855A1_150rnd_M_Box",
	"SPS_KAC_LAMG_M856A1_150rnd_T_Box_Tan",
	"SPS_KAC_LAMG_M856A1_150rnd_T_Box",
	"SPS_KAC_LAMG_M856A1_150rnd_IR_Box",
	"SPS_KAC_LAMG_M856A1_150rnd_IR_Box_Tan",
	"CUP_100Rnd_556x45_BetaCMag_ar15",
	"CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_ar15",
	"200Rnd_65x39_cased_Box",
	"ACE_200Rnd_65x39_cased_Box_red",
	"ACE_200Rnd_65x39_cased_Box_Tracer_Dim",
	"SPS_KAC_LWAMG_100rnd_Box_M80A1M62A1"
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
	"Chemlight_blue",
	"Chemlight_green",
	"ACE_Chemlight_HiBlue",
	"ACE_Chemlight_HiGreen",
	"ACE_Chemlight_HiRed",
	"Chemlight_red",
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",
	"ACE_HandFlare_Yellow",
	"Aegis_SignalFlare_Green",
	"Aegis_SignalFlare_Red",
	"Aegis_HandFlare_Green",
	"Aegis_HandFlare_Red"
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
	"SPS_KAC_LWAMG_100rnd_Box_M80A1",
	"SPS_KAC_LWAMG_100rnd_Box_M80A1M62A1"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier 
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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