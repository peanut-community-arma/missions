class baseMan 
{
	displayName = "Civilian";
	// All Randomized
	uniform[] = {
        LIST_12("U_BG_Guerilla3_1"),
        LIST_16("CUP_U_C_Citizen_04"),
        LIST_10("CUP_U_C_Labcoat_02"),
        LIST_8("CUP_U_O_CHDKZ_Lopotev"),
        "U_C_FormalSuit_01_tshirt_black_F",
        LIST_2("U_O_R_Gorka_01_black_F"),
        LIST_4("U_C_E_LooterJacket_01_F")
    };
	vest[] = {};
	backpack[] = {
        LIST_8(""),
        LIST_4("B_CivilianBackpack_01_Everyday_Black_F"),
        LIST_2("B_Messenger_Black_F"),
        "B_CivilianBackpack_01_Everyday_Vrana_F"
    };
	headgear[] = {
        LIST_8(""),
        LIST_4("bear_beanie_brown"),
        LIST_2("aegis_cap_tourist"),
        "H_Hat_grey"
    };
	goggles[] = {
        LIST_8(""),
        LIST_4("G_Spectacles"),
        LIST_2("CUP_G_TK_RoundGlasses_blk"),
        "immersion_pops_pop0"
    };
	hmd[] = {
        LIST_8(""),
        "usm_nvg_scarf2"
    };
	// Leave empty to not change faces and Insignias
	faces[] = {"faceset:caucasian","B_female_bun_01","B_female_bun_03"};
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
	{};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch"
	};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "";
};