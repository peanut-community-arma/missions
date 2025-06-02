class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = {
		"$NONE_usm_bdu_bnu_tan$",
		"CUP_U_B_BDUv2_roll_DCU_US",
		"$NONE_usm_bdu_srl_dcu2$",
		"$NONE_usm_bdu_srh_dcu2$",
		"$NONE_usm_bdu_bti_dcu2$"
	};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {};
	hmd[] = 
	{
		"NVGoggles"
	};
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
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
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
	code = "";
};

class crew : baseMan 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	primaryWeapon[] = {"sp_fwa_ar15_646_a3"};
	vest[] = 
	{
		"usm_vest_pasgtdcu_lbe_mg"
	};
	headgear[] = 
	{
		"rhsusf_cvc_helmet",
		"rhsusf_cvc_alt_helmet",
		"rhsusf_cvc_ess"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_7("rhs_mag_30Rnd_556x45_M855_Stanag")
	};
	items[] = 
	{
		"ToolKit"
	};
};

class cls : crew
{
	displayName = "Combat Life Saver";
	traits[] += {"medic"};
	items[] +=
	{
		LIST_15("ACE_elasticBandage"),
		"ACE_surgicalKit",
		LIST_4("ACE_bloodIV")
	};
};


class crew_co : crew 
{
	displayName = "Crewman Commander";
	primaryWeapon[] = 
	{
		"sp_fwa_ar15_646_m16a3_m203"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"CUP_Vector21Nite"
	};
};

class sgt : crew
{
	displayName = "Drone Operator";
	backpack[] = {
		"B_UAV_01_backpack_F"
	};
	linkedItems[] +=
	{
		"B_UavTerminal"
	};
};
class sl : sgt 
{
	displayName = "Squad Leader";
	traits[] = {"engineer"};
	items[] += 
	{
		"ACRE_PRC148"
	};
};

class co : sgt
{
	displayName = "Platoon Commander";
	traits[] = {"engineer"};
	primaryWeapon[] = 
	{
		"sp_fwa_ar15_646_a3"
	};
};

