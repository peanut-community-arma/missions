class baseMan 
{
	displayName = "Unarmed";
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {};
	hmd[] = {};
	faces[] = {};
	insignias[] = {};
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	magazines[] = {};
	items[] = {};
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	backpackItems[] = {};
	code = "[_this, 10, 100, true, true] spawn pca_fnc_assignGearCurated";
};

class rm : baseMan
{
	displayName = "Rifleman";
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
};

class mg : rm 
{
	displayName = "Machine Gunner";
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = {"CUP_launch_RPG26"};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
};

class gren : rm 
{
	displayName = "Grenadier";
};

class dm : rm 
{
	displayName = "Marksman";
};

class medic : rm 
{
	displayName = "Medic";
};

class engineer : rm 
{
	displayName = "Engineer";
};

class crewman : rm 
{
	displayName = "Crewman";
};

class pilot : rm 
{
	displayName = "Pilot Crew";
};