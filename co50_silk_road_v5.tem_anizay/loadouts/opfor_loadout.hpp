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
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "_this call pca_fnc_unlimitedAmmo";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] =
	{
		"CUP_U_CRYE_TAN_US_Full"
	};
	vest[] =
	{
		//"V_PlateCarrier1_khk"
		//"rhsusf_iotv_ocp_Rifleman"
		//LIST_1("CUP_V_B_IOTV_OCP_Empty_USArmy"),
		//"CUP_V_B_IOTV_OCP_MG_USArmy",
		//"CUP_V_B_IOTV_OCP_Medic_USArmy",
		"CUP_V_B_IOTV_OCP_Rifleman_USArmy"
		//"CUP_V_B_IOTV_OCP_SL_USArmy",
		//"CUP_V_B_IOTV_OCP_TL_USArmy"
	};
	headgear[] =
	{
		"rhsusf_ach_helmet_ocp"
	};
	backpack[] =
	{
		"B_AssaultPack_mcamo"
	};
	primaryWeapon[] =
	{
		"rhs_weap_m4a1"
		
	};
	scope[] =
	{
		"rhsusf_acc_compm4"
		
	};
	
	
	magazines[] =
	{
		"SmokeShell",
		"CUP_HandGrenade_M67",
		LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag")
	};

};

class ar : rm
{
	displayName = "Automatic Rifleman";
	
	backpack[] =
	{
		"rhsusf_assault_eagleaiii_ocp"
	};
	primaryWeapon[] =
	{
		"rhs_weap_m249_light_S"
	};
	bipod[] =
	{
		"rhsusf_acc_saw_lw_bipod"
	};
	
	magazines[] =
	{
		"SmokeShell",
		"CUP_HandGrenade_M67",
		LIST_3("rhsusf_200Rnd_556x45_mixed_soft_pouch")
	};
	
};

class aar : rm
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] =
	{
		"rhsusf_assault_eagleaiii_ocp"
	};
	backpackItems[] +=
	{
		LIST_4("rhsusf_200Rnd_556x45_mixed_soft_pouch")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class rm_lat : rm
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] =
	{
		"CUP_launch_M136"
	};
	backpackItems[] =
	{
		"CUP_launch_M136"
	};
};

class gren : rm
{
	displayName = "Grenadier";
	
	primaryWeapon[] =
	{
		"rhs_weap_m4a1_m203s"
	};
	backpackItems[] =
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm
{
	displayName = "Team Leader";

	headgear[] =
	{
		"rhsusf_ach_helmet_headset_ocp"
	};
	
	magazines[] =
	{
		"SmokeShell",
		"CUP_HandGrenade_M67",
		LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red")
	};
	
};

class sl : tl
{
	displayName = "Squad Leader";

	primaryWeapon[] =
	{
		"rhs_weap_m4a1_m203s"
	};
	backpackItems[] =
	{
		LIST_6("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
		LIST_3("rhs_mag_M441_HE")
		//LIST_6("1Rnd_Smoke_Grenade_shell"),
		//LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		//LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		//LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class co : sl
{
	displayName = "Platoon Commander";
	primaryWeapon[] =
	{
		"rhs_weap_m4a1"
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class rm_fa : rm
{
	displayName = "Rifleman (First-Aid)";
	traits[] = { "medic" };
	backpack[] =
	{
		"rhsusf_assault_eagleaiii_ocp"
	};
	backpackItems[] =
	{
		
		LIST_2("ACE_bloodIV")
		
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	backpackItems[] =
	{
			LIST_2("ACE_bloodIV")
	};
};

class mmg : rm
{
	displayName = "Medium Machine Gunner";
	vest[] =
	{
		"rhsusf_spcs_ocp_saw"
	};
	backpack[] =
	{
		"rhsusf_assault_eagleaiii_ocp"
	};
	primaryWeapon[] =
	{
		"CUP_lmg_M240_B"
	};
	bipod[] = {};
	attachment[] = {};
	silencer[] =
	{
		"rhsusf_acc_ARDEC_M240"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_m9"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP"),
		LIST_3("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
	backpackItems[] =
	{
		LIST_6("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
};

class ammg : rm
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] =
	{
		"rhsusf_assault_eagleaiii_ocp"
	};
	backpackItems[] =
	{
		LIST_8("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class mat : rm
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] =
	{
		"rhsusf_assault_eagleaiii_ocp"
	};
	secondaryWeapon[] =
	{
		"CUP_launch_MAAWS"
	};
	secondaryAttachments[] =
	{
		"CUP_optic_MAAWS_Scope"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_m9"
	};
	magazines[] +=
	{
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP")
	};
	backpackItems[] =
	{
		LIST_2("CUP_MAAWS_HEAT_M")
	};
};

class amat : rm
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] =
	{
		"rhsusf_assault_eagleaiii_ocp"
	};
	backpackItems[] =
	{
		LIST_2("CUP_MAAWS_HEAT_M"),
		"CUP_MAAWS_HEDP_M",
		"MRAWS_HE_F"
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class eng : rm
{
	displayName = "Engineer";
	traits[] = { "engineer","explosiveSpecialist" };
	backpack[] =
	{
		"rhsusf_assault_eagleaiii_ocp"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_m9"
	};
	magazines[] +=
	{
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP")
	};
	backpackItems[] =
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_4("DemoCharge_Remote_Mag"),
		LIST_2("SatchelCharge_Remote_Mag")
	};
};

class dm : rm
{
	displayName = "Designated Marksman";
	vest[] =
	{
		"rhsusf_spcs_ocp_sniper"
	};
	headgear[] =
	{
		"rhsusf_ach_helmet_camo_ocp"
	};
	primaryWeapon[] =
	{
		"rhs_weap_m14ebrri"
	};
	scope[] =
	{
		"rhsusf_acc_ACOG",
		"rhsusf_acc_ACOG2",
		"rhsusf_acc_ACOG3",
		"rhsusf_acc_ACOG_RMR"
	};
	attachment[] = {};
	bipod[] =
	{
		"rhsusf_acc_harris_bipod"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_m9"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP"),
		LIST_9("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	backpackItems[] =
	{
		LIST_12("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class crew : rm
{
	displayName = "Crewman";
	traits[] = { "engineer" };
	vest[] =
	{
		"rhsusf_spcs_ocp_crewman"
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag")
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
		"rhsusf_weap_m9"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] +=
	{
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP"),
			LIST_2("SmokeShellBlue"),
			LIST_2("SmokeShellGreen"),
			LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class hp : rm
{
	displayName = "Helicopter Pilot";
	vest[] =
	{
		"rhsusf_spcs_ocp_crewman"
	};
	headgear[] =
	{
		"rhsusf_ihadss"
	};
	sidearmWeapon[] =
	{
		"rhsusf_weap_m9"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		LIST_3("rhsusf_mag_15Rnd_9x19_JHP"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class hmg : rm
{
	displayName = "Heavy Machine Gunner";
	backpack[] =
	{
		"ace_compat_rhs_usf3_m2_carry"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] =
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
};

class ahmg : rm
{
	displayName = "Assistant Heavy Machine Gunner";
	backpack[] =
	{
		"ace_csw_m3CarryTripodLow"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] =
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};