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
	"U_B_CombatUniform_mcam",
	"U_B_CombatUniform_mcam_vest",
	"U_B_CombatUniform_mcam_tshirt"
];

//Vest
private _itemVest = 
[
	"V_PlateCarrier1_mtp",
	"V_PlateCarrier2_mtp"
];

//Headgear 
private _itemHeadgear = 
[
	"H_HelmetSpecB_mcamo",
	"H_MilCap_mcamo",
	"H_Bandanna_mcamo_hs",
	"H_Booniehat_mcamo_hs",
	"H_HelmetSpecB_light_mcamo"
];

private _itemHeadgearCrew = 
[
	"H_HelmetCrew_B"
];

//Backpack 
private _itemBackpack = 
[
	"B_AssaultPack_mcamo"
];

//Cosmetic 
private _itemCosmetic = 
[
	//also NVGs
	"ACE_NVG_Gen4",
	"ACE_NVG_Gen4_WP",
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_BlueStrips",
	"G_Balaclava_combat",
	"G_Balaclava_Halloween_01",
	"G_Balaclava_lowprofile",
	"G_Balaclava_oli",
	"G_Balaclava_Flames1",
	"G_Balaclava_Scarecrow_01",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_OrangeFlame1",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Bandanna_tan",
	"G_Bandanna_Vampire_01",
	"G_Combat",
	"G_Lady_Blue",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Sport_Red",
	"G_Sport_Blackyellow",
	"G_Sport_BlackWhite",
	"G_Sport_Checkered",
	"G_Sport_Blackred",
	"G_Sport_Greenblack",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Tactical_Clear",
	"G_Tactical_Black",
	"G_Spectacles_Tinted",
	"Aegis_G_Armband_Medic_F",
	"Aegis_G_Armband_Medic_alt_F",
	"G_Balaclava_Flecktarn",
	"G_Balaclava_Skull1",
	"G_Balaclava_Tropentarn",
	"G_Bandanna_BlueFlame1",
	"G_Bandanna_BlueFlame2",
	"G_Bandanna_CandySkull",
	"G_Bandanna_Germany",
	"G_Bandanna_RedFlame2",
	"G_Bandanna_RedFlame1",
	"G_Bandanna_shemag",
	"G_Bandanna_Skull1",
	"G_Bandanna_Syndikat1",
	"G_Bandanna_Skull2",
	"G_Bandanna_kawaii",
	"G_Bandanna_Syndikat2",
	"G_Cigarette",
	"G_Combat_Goggles_blk_F",
	"G_Headset_light",
	"Aegis_G_scrimNet_black_F",
	"Aegis_G_scrimNet_olive_F",
	"Aegis_G_scrimNet_sand_F",
	"Aegis_G_scrimNet_under_black_F",
	"Aegis_G_scrimNet_under_olive_F",
	"Aegis_G_scrimNet_under_sand_F",
	"G_Shades_Yellowred",
	"G_Shemag_khk",
	"G_Shemag_oli",
	"G_Shemag_red",
	"G_Shemag_shades",
	"G_Shemag_tactical",
	"G_Shemag_tan",
	"G_Shemag_white",
	"Aegis_G_Condor_EyePro_F",
	"G_Tactical_Yellow",
	"G_Headset_Tactical",
	"G_Headset_Tactical_grn",
	"G_Headset_Tactical_khk",
	"G_Tactical_Camo",
	"G_Bandanna_TransPride",
	"G_Balaclava_blk_lxWS",
	"G_Balaclava_oli_lxWS",
	"G_Balaclava_snd_lxWS",
	"CUP_RUS_Balaclava_blk",
	"CUP_RUS_Balaclava_emr",
	"CUP_RUS_Balaclava_grn",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	"CUP_G_RUS_Balaclava_Ratnik_winter",
	"CUP_G_RUS_Balaclava_Ratnik_winter_v2",
	"CUP_RUS_Balaclava_rgr",
	"CUP_RUS_Balaclava_tan",
	"CUP_G_RUS_Ratnik_Balaclava_A_Tacs_1",
	"CUP_G_RUS_Ratnik_Balaclava_A_Tacs_2",
	"CUP_G_RUS_Ratnik_Balaclava_A_Tacs_3",
	"CUP_G_RUS_Ratnik_Balaclava_A_Tacs_4",
	"CUP_G_RUS_Ratnik_Balaclava_Desert_1",
	"CUP_G_RUS_Ratnik_Balaclava_Desert_2",
	"CUP_G_RUS_Ratnik_Balaclava_Desert_3",
	"CUP_G_RUS_Ratnik_Balaclava_Desert_4",
	"CUP_G_RUS_Ratnik_Balaclava_EMR_Autumn_1",
	"CUP_G_RUS_Ratnik_Balaclava_EMR_Autumn_2",
	"CUP_G_RUS_Ratnik_Balaclava_EMR_Summer_1",
	"CUP_G_RUS_Ratnik_Balaclava_EMR_Summer_2",
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
	"CUP_G_RUS_Ratnik_Balaclava_Winter_1",
	"CUP_G_RUS_Ratnik_Balaclava_Winter_2",
	"CUP_G_RUS_Ratnik_Balaclava_Winter_3",
	"CUP_G_RUS_Ratnik_Balaclava_Winter_4",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_CBR_Dark",
	"CUP_G_ESS_CBR_Ember",
	"CUP_G_ESS_CBR",
	"CUP_G_ESS_RGR_Dark",
	"CUP_G_ESS_RGR_Ember",
	"CUP_G_ESS_RGR",
	"CUP_G_ESS_KHK_Dark",
	"CUP_G_ESS_KHK_Ember",
	"CUP_G_ESS_KHK",
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
	"CUP_G_ESS_BLK_Scarf_White_Beard",
	"CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",
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
	"CUP_G_TK_RoundGlasses_gold",
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
	"CUP_PMC_G_thug",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
//	"TC_G_NitrileGloves_1",
	
	//arm/headbands
	"G_Armband_Diamond_F",
	"G_Armband_Diamond_alt_F",
	"G_Armband_NATO_F",
	"G_Armband_NATO_alt_F",
	"G_Armband_NVG_Diamond_F",
	"G_Armband_NVG_Diamond_alt_F",
	"G_Armband_NVG_NATO_F",
	"G_Armband_NVG_NATO_alt_F",
	
	//Murshun cigpack and lighter
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter",
	"murshun_cigs_matches",
	
	//NVG slot
	"Aegis_NV_G_Armband_Medic_F",
	"Aegis_NV_G_Armband_Medic_alt_F",
	"Goggles",
	"Aegis_Goggles_Cover_grn_F",
	"Aegis_Goggles_Cover_F",
	"Goggles_grn_F",
	"Goggles_tna_F",
	"Aegis_NV_G_scrimNet_black_F",
	"Aegis_NV_G_scrimNet_olive_F",
	"Aegis_NV_G_scrimNet_sand_F",
	"Aegis_NV_G_scrimNet_under_black_F",
	"Aegis_NV_G_scrimNet_under_olive_F",
	"Aegis_NV_G_scrimNet_under_sand_F",
	"pca_nvg_cigarette",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
//	"TC_NVG_NitrileGloves_1",
	"sns_hair_long",
	"sns_hair_long_2"
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
	"ToolKit"
];

private _itemBino = 
[
	"Binocular",
	"Rangefinder",
	"ACE_Vector"
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

//Special

//********************************************************************************//
// Weapons
//********************************************************************************//

private _itemAcc = 
[
	//Optic
	"optic_Aco",
	"optic_Holosight",
	"Aegis_optic_ICO_sand",
	
	//Magnified
	"optic_Hamr",	
	
	//Muzzle
	"ACE_muzzle_mzls_H",
	
	//Tactical Device
	"acc_pointer_IR",
	"pca_flashlight_sf_tan",
	"acc_flashlight_pistol"
];

private _itemWeapRifle = 
[
	"arifle_MX_F"
];

private _itemWeapCarbine =
[
	"arifle_MXC_F"
];

private _itemWeapGL = 
[
	"arifle_MX_GL_F"
];

private _itemWeapAR = 
[
	"arifle_MX_SW_F",
	//Bipod
	"bipod_01_F_snd"
];

private _itemWeapAT = 
[
	"launch_MRAWS_green_rail_F",
	"launch_MRAWS_olive_rail_F",
	"launch_MRAWS_sand_rail_F"
];

private _itemWeapPistol = 
[
	"hgun_P07_F",
	"hgun_Pistol_heavy_01_F"
];

//Special

private _itemWeapDM =
[
	"arifle_MXM_F",
	"optic_SOS"
];
//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"30Rnd_65x39_caseless_mag",
	
	//Pistol Ammo
	"16Rnd_9x21_Mag_v2",
	"16Rnd_9x21_red_Mag_v2",
	"11Rnd_45ACP_Mag"
];

private _itemAmmoTracer = 
[
	"30Rnd_65x39_caseless_mag_Tracer",
	"ACE_30Rnd_65x39_caseless_mag_Tracer_Dim"
];

private _itemAmmoAR = 
[
	"100Rnd_65x39_caseless_mag",
	"100Rnd_65x39_caseless_mag_Tracer",
	"ACE_100Rnd_65x39_caseless_mag_Tracer_Dim"
];

private _itemAmmoAT =
[
	"MRAWS_HE_F",
	"MRAWS_HEAT55_F",
	"MRAWS_HEAT_F"
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
	"3Rnd_SmokeBlue_Grenade_shell",
	"3Rnd_SmokeGreen_Grenade_shell",
	"3Rnd_SmokeOrange_Grenade_shell",
	"3Rnd_SmokePurple_Grenade_shell",
	"3Rnd_SmokeRed_Grenade_shell",
	"3Rnd_SmokeYellow_Grenade_shell"
];

private _itemExplosive = 
[
	"1Rnd_HE_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",
	"3Rnd_HE_Grenade_shell",
	"3Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"HandGrenade",
	"DemoCharge_Remote_Mag"
];

//Special

private _itemAmmoDM =
[
	"ACE_30Rnd_65_Creedmor_mag",
	"ACE_30Rnd_65x47_Scenar_mag"
];
//********************************************************************************//
// DLC stuff
//********************************************************************************//

private _ownedDLCs = getDLCs 1; // DLC check, Credit to MajorDanvers
private _hasApex = 395180 in _ownedDLCs;
private _hasContact = 1021790 in _ownedDLCs;
private _hasMarksmen = 332350 in _ownedDLCs;
private _hasLoW = 571710 in _ownedDLCs;
private _hasWS = 1681170 in _ownedDLCs;

if (_hasApex) then 
{
    _itemCosmetic append 
	[
		"G_Combat_Goggles_blk_F",
		"G_Balaclava_light_blk_F",
		"G_Balaclava_light_G_blk_F",
		"G_Balaclava_light_eaf_F",
		"G_Balaclava_light_G_eaf_F",
		"G_Balaclava_light_mtp_F",
		"G_Balaclava_light_G_mtp_F",
		"G_Balaclava_light_tropic_F",
		"G_Balaclava_light_G_tropic_F",
		"G_Balaclava_light_wdl_F",
		"G_Balaclava_light_G_wdl_F",
		"G_Combat_Goggles_tna_F",
		"G_Balaclava_TI_alt_F",
		"G_Balaclava_TI_G_alt_F",
		"G_Balaclava_TI_blk_F",
		"G_Balaclava_TI_G_blk_F",
		"G_Balaclava_TI_tna_F",
		"G_Balaclava_TI_G_tna_F"
    ];

    _itemAcc append 
	[
        "optic_ERCO_blk_F"
    ];
	
};

if (_hasContact) then 
{
	_itemCosmetic append 
	[
		"G_Blindfold_01_black_F",
		"G_Blindfold_01_white_F"
	];
};

if (_hasLoW) then
{
	_itemCosmetic append
	[
		"G_Respirator_blue_F",
		"G_Respirator_white_F",
		"G_Respirator_yellow_F",
		"G_EyeProtectors_F",
		"G_EyeProtectors_Earpiece_F",
		"G_WirelessEarpiece_F"
	];
};

if (_hasWS) then
{
	_itemCosmetic append
	[
		"G_Combat_lxWS"
	];
};
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemWeapDM + _itemAmmo + _itemAmmoTracer + _itemAmmoDM + _itemBino + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemWeapAT + _itemAmmo + _itemAmmoTracer + _itemAmmoAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifle First-Aid
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgearCrew + _itemBackpack + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapCarbine + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgearCrew + _itemBackpack + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapCarbine + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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