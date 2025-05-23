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
		"ItemGPS",
		"ItemMap",
		"ItemCompass"
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
		"U_C_WorkerCoveralls"
	};
	vest[] = 
	{
		""
	};
	headgear[] = 
	{
		"H_Cap_marshal"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		""
	};
	scope[] = 
	{
		""
	};
	items[] =
	{
		"ACRE_PRC148",
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_2("ACE_bloodIV"),
		"ACE_surgicalKit"
	};
	magazines[] = 
	{};
	backpackItems[] = 
	{};
};

class pilot : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"U_C_WorkerCoveralls"
	};
	vest[] = 
	{
		""
	};
	headgear[] = 
	{
		"H_Cap_marshal"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		""
	};
	scope[] = 
	{
		""
	};
	items[] =
	{
		"ACRE_PRC148",
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_2("ACE_bloodIV"),
		"ACE_surgicalKit"
	};
	magazines[] = 
	{};
	backpackItems[] = 
	{};
};
