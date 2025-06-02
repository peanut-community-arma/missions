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

private _itemGear =
[
	//Uniforms

	"pca_g3_m05w",
	//Vests
	"ptv_vest_m16_rifleman_rgr",
	
	//Helmets

	"pca_opscore_cover_ct_cw_tsw",
	//Backpacks
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"B_FieldPack_green_F",
	"amf_felin_tecpack_rgr",

	//Cosmetics
	//BIS
	"G_Aviator",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Bandanna_tan",
	"G_Goggles_VR",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Spectacles_Tinted",
	"G_Sport_Blackred",
	"G_Squares",
	"G_Squares_Tinted",
	"G_WirelessEarpiece_F",

	//RHS
	"rhs_balaclava",
	"rhs_ess_black",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_gogg_od",
	"rhsusf_shemagh2_gogg_od",
	"rhsusf_shemagh_tan",
	"rhsusf_shemagh2_tan",
	"rhsusf_shemagh_gogg_tan",
	"rhsusf_shemagh2_gogg_tan",
	"rhs_scarf",

	//Aegis
	"G_Bandanna_CandySkull",
	"G_Bandanna_kawaii",
	"G_Bandanna_shemag",
	"G_Bandanna_Skull2",
	"G_Bandanna_Syndikat1",
	"G_Bandanna_Syndikat2",
	"G_Headset_light",
	"G_Shades_Yellowred",
	"CUP_FR_NeckScarf2",
	"$NONE_aegis_shemag_shades_khk$",
	"$NONE_aegis_shemag_tactical_khk$",
	"CUP_FR_NeckScarf",
	"$NONE_aegis_shemag_shades_oli$",
	"G_Shemag_tactical",
	"G_Shemag_tan",
	"$NONE_aegis_shemag_shades_tan$",
	"G_Shemag_tan",

	//Bearskins
	"bear_bandana_atacs_fg",
	"bear_bandana_m81",

	//Military Gear Packs
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_cb",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_shemagh_blk",
	"milgp_f_face_shield_shemagh_cb",
	"milgp_f_face_shield_shemagh_khk",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_cb",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_blk",
	"milgp_f_face_shield_goggles_shemagh_cb",
	"milgp_f_face_shield_goggles_shemagh_khk",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_shades_blk",
	"milgp_f_face_shield_shades_cb",
	"milgp_f_face_shield_shades_khk",
	"milgp_f_face_shield_shades_rgr",
	"milgp_f_face_shield_shades_shemagh_blk",
	"milgp_f_face_shield_shades_shemagh_cb",
	"milgp_f_face_shield_shades_shemagh_khk",
	"milgp_f_face_shield_shades_shemagh_rgr",
	"milgp_f_face_shield_tactical_blk",
	"milgp_f_face_shield_tactical_cb",
	"milgp_f_face_shield_tactical_khk",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_shemagh_blk",
	"milgp_f_face_shield_tactical_shemagh_cb",
	"milgp_f_face_shield_tactical_shemagh_khk",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"milgp_f_goggles_khk",
	"milgp_f_tactical_khk",

	//DHI
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",

	//PCA
	"ccu_bandana_blk",

	//CUP
	//Bala
	"CUP_RUS_Balaclava_blk",
	"CUP_RUS_Balaclava_grn",
	"CUP_RUS_Balaclava_rgr",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	//ESS
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_CBR",
	"CUP_G_ESS_CBR_Dark",
	"CUP_G_ESS_CBR_Ember",
	"CUP_G_ESS_KHK",
	"CUP_G_ESS_KHK_Dark",
	"CUP_G_ESS_KHK_Ember",
	"CUP_G_ESS_RGR",
	"CUP_G_ESS_RGR_Dark",
	"CUP_G_ESS_RGR_Ember",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_RGR_Facewrap_Tropical",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Grn",
	"CUP_G_ESS_KHK_Scarf_Tan",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_G_ESS_KHK_Scarf_Face_Tan",
	//Glasses
	"CUP_G_Grn_Scarf_Shades",
	"CUP_G_Tan_Scarf_Shades",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Embr",
	"CUP_G_PMC_Facewrap_Black_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset",
	"CUP_G_PMC_Facewrap_Black_Glasses_Ember",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark_Headset",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Ember",
	"CUP_G_TK_RoundGlasses_blk",
	//Face Covers
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf3",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Tan",
	"CUP_PMC_Facewrap_Black",
	"CUP_PMC_Facewrap_Tropical",
	"CUP_TK_NeckScarf",

	//YM
	"YM_Balaclava1_blk",
	"YM_Balaclava2_blk",
	"YM_Balaclava3_blk",
	"YM_Balaclava4_blk",
	"YM_Balaclava4_ess_blk",
	"YM_Balaclava5_blk",
	"YM_Balaclava1_oli",
	"YM_Balaclava2_oli",
	"YM_Balaclava3_oli",
	"YM_Balaclava4_oli",
	"YM_Balaclava4_ess_oli",
	"YM_Balaclava5_oli",
	"YM_Bandana_blk",
	"YM_Bandana_oli",
	
	
	"G_Cigarette",
	"G_AirPurifyingRespirator_02_black_F",
	"G_AirPurifyingRespirator_02_sand_F",
	"G_AirPurifyingRespirator_01_F",
	"G_RegulatorMask_F",
	"G_Respirator_yellow_F",
	"CUP_Beard_Black",
	"CUP_Beard_Brown",
	"CUP_Beard_Blonde",
	"CUP_G_Grn_Scarf_GPS_Beard_Blonde",
	"CUP_G_Grn_Scarf_GPS_Beard",
	"CUP_G_Tan_Scarf_GPS_Beard_Blonde",
	"CUP_G_Tan_Scarf_GPS_Beard",
	"CUP_G_White_Scarf_GPS_Beard_Blonde",
	"CUP_G_White_Scarf_GPS_Beard",
	"CUP_G_ESS_BLK_Scarf_Red_Beard",
	"CUP_G_ESS_BLK_Scarf_Red_Beard_Blonde",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_White_Beard",
	"CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",

	//HMD
	"CUP_NVG_GPNVG_black",
	"CUP_NVG_GPNVG_green",
	
	//MISC
	//ACRE
	"ACRE_PRC343",
	
	//ACE
	"ACE_Flashlight_XL50",
	"ACE_MapTools",
	"ACE_RangeCard",
	"ACE_IR_Strobe_Item",
	
	//BIS
	"ItemCompass",
	"ItemMap",
	"ItemWatch",
	"Laserbatteries",
	"ToolKit"
];

private _itemGearGren = 
[

];

private _itemGearMedic = 
[

];

private _itemGearMG = 
[

];

private _itemGearLeader = 
[



];

private _itemGearCrew = 
[
];

private _itemGearPilot = 
[

];

private _itemCosmetic = 
[
	"rhs_ess_black",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_gogg_od",
	"rhsusf_shemagh2_gogg_od",
	"rhsusf_shemagh_tan",
	"rhsusf_shemagh2_tan",
	"rhsusf_shemagh_gogg_tan",
	"rhsusf_shemagh2_gogg_tan"
];

private _itemMed = 
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

private _itemMedSpec = 
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
	"ACE_personalAidKit",
	"ACE_surgicalKit"
];

private _itemMisc = 
[
	"ACRE_PRC343",
	"ACE_MapTools",
	"ACE_RangeCard",
	"ItemCompass",
	"ItemMap",
	"ItemWatch",
	"ToolKit"
];

private _itemBino = 
[
	"Binocular",
	"Laserdesignator",
	"Laserdesignator_03",
	"Laserdesignator_01_khk_F",
	
	
	//RHS
	"rhssaf_zrak_rd7j"
];

private _itemRadio = 
[
	"ACRE_PRC148",
	"ACRE_PRC152",
	"ACRE_PRC117F"
];

private _itemEng = 
[
	"ACE_Clacker",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"rhsusf_m112_mag",
	"rhsusf_m112x4_mag"
];

private _itemAcc = 
[
	//Optics
	"cup_optic_eotech553_od",
	"cup_optic_microt1_low_od",
	"cup_optic_vortexrazor_uh1_od",
	"rhsusf_acc_eotech_552_wd",
	//Muzzle Devices
	"sps_acc_gemtech_one_od",
	
	
	//Bipod & Foregrips
	"rhsusf_acc_grip2_wd",
	
	//Tactical Devices
	"cup_acc_anpeq_2_od_top",
	"cup_acc_anpeq_2_camo",
	"cup_acc_anpeq_2_flashlight_od_l",
	"rhsusf_acc_anpeq15a",
	"cup_acc_anpeq_15_od"
	
];

private _itemAccSpec = 
[
];

private _itemWeapRifle = 
[
	"CUP_arifle_ACRC_wdl_68",
	"$NONE_hlc_rifle_acr_dmr_grn$",
	"$NONE_hlc_rifle_acr_sbr_grn$"

];

private _itemWeapRifleUGL = 
[
	"$NONE_hlc_rifle_acr_sbr_m203_grn$",
	"$NONE_hlc_rifle_acr_dmr_m203_grn$",
	"CUP_arifle_ACRC_EGLM_wdl_68",
	"$NONE_hlc_rifle_acr_enh_m203_grn$"
];

private _itemWeapAR = 
[
	"ptv_m62mr_sf",
	"ptv_weap_m62mr"
];

private _itemWeapMG = 
[
	"rhs_weap_m240B"
];

private _itemWeapDMR = 
[

];

private _itemWeapLAT = 
[
"rhs_weap_M136"
];

private _itemWeapMAT = 
[
	"rhs_weap_smaw_green",
	"rhs_weap_optic_smaw"
];

private _itemWeapPistol = 
[
	"rhsusf_weap_m9",
	"hgun_ACPC2_F",
	"hgun_Pistol_heavy_01_F",
	"hgun_Pistol_heavy_01_green_F"
];

private _itemAmmo = 
[
	//Rifle Ammo
	//Rifle Ammo
	"rhs_mag_30Rnd_556x45_M855A1_Stanag",
	"rhs_mag_30Rnd_556x45_M856A1_Stanag_Tracer_Red",
	"pca_mag_30Rnd_556x45_M855A1_PMAG_OD",
	"9Rnd_45ACP_Mag",
	"11Rnd_45ACP_Mag",

	
	
	//Explosives
	//ACE
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",
	"ACE_HandFlare_Yellow",
	
	//BIS
	"1Rnd_HE_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",
	"HandGrenade",
	"SmokeShell",

	//RHS
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_an_m8hc",
	"rhs_mag_m67",
	"rhsusf_m112_mag",
	
	//Pistol Ammo
	"rhsusf_mag_15Rnd_9x19_JHP",
	
	//Explosives
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_an_m8hc",
	"rhs_mag_m67"
];

private _itemAmmoAR = 
[
	"ptv_200Rnd_556x45_M855A1_mixed_m62_soft_pouch",
	"ptv_200Rnd_556x45_M855A1_m62_soft_pouch",
	"ptv_200Rnd_556x45_M856A1_tracer_m62_soft_pouch"
];

private _itemAmmoMG = 
[
	"rhsusf_100Rnd_762x51_m80a1epr"
];

private _itemAmmoMAT = 
[
	"rhs_mag_smaw_HEAA",
	"rhs_mag_smaw_HEAA",
	"rhs_mag_smaw_SR"
];

private _itemAmmoDMR = 
[

];

private _itemAmmoSignal = 
[
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	"UGL_FlareGreen_F",
	"UGL_FlareRed_F",
	"UGL_FlareWhite_F",
	"UGL_FlareYellow_F",
	"ACE_40mm_Flare_ir"
];

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

switch (true) do 
{
	//Rifleman
	case (_unitRole == "rm") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (Light Anti-Tank)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifleman
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemGearMG + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemGearGren + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapMAT + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
	};
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemGearMG + _itemMisc + _itemCosmetic + _itemAcc + _itemWeapMG + _itemAmmoMG)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Machine Gunner
	case (_unitRole == "ammg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoMG)] call ace_arsenal_fnc_initBox;
	};
	
	////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////	ROLES NOT USED IN BASE TEMPLATE	////////////////////////////////////////////////////////
	
	//Designated Marksman
	case (_unitRole == "dm") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemAccSpec + _itemWeapDMR + _itemAmmoDMR)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemEng + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGearPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Heavy Machine Gunner
	case (_unitRole == "hmg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Heavy Machine Gunner
	case (_unitRole == "ahmg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	default 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
};

_action = 
[
	"personal_arsenal", "Personal Arsenal", "\A3\ui_f\data\igui\cfg\weaponicons\MG_ca.paa",
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