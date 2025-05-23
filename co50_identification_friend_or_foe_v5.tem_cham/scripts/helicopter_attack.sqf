[
	independent,
	[
		"CUP_I_PMC_Contractor1", 
		"CUP_I_PMC_Soldier_MG", 
		"CUP_I_PMC_Bodyguard_AA12", 
		"CUP_I_PMC_Contractor2", 
		"CUP_I_PMC_Bodyguard_M4",
		"CUP_I_PMC_Bodyguard_M4",
		"CUP_I_PMC_Bodyguard_M4",
		"CUP_I_PMC_Medic"
	],
	"O_Heli_Light_02_unarmed_F",
	[7339.19,5086.99,0],
	194.984,
	heli1,
	["CUP_I_PMC_Pilot","CUP_I_PMC_Pilot"],
	[6304.45,2705.62,0]
] call DNV_fnc_spawnTransport;

[
	independent,
	[
		"CUP_I_PMC_Contractor1", 
		"CUP_I_PMC_Soldier_MG", 
		"CUP_I_PMC_Bodyguard_AA12", 
		"CUP_I_PMC_Contractor2", 
		"CUP_I_PMC_Bodyguard_M4",
		"CUP_I_PMC_Bodyguard_M4",
		"CUP_I_PMC_Bodyguard_M4",
		"CUP_I_PMC_Medic"
	],
	"O_Heli_Light_02_unarmed_F",
	[7479.27,5109.92,0],
	194.984,
	heli2,
	["CUP_I_PMC_Pilot","CUP_I_PMC_Pilot"],
	[6304.45,2705.62,0]
] call DNV_fnc_spawnTransport;

[
	{
		[
			[6137.54,2840.89,0],
			"rhs_ammo_m60a2_smoke",
			100,
			5,
			[15, 25]
		] spawn BIS_fnc_fireSupportVirtual;
	},
	nil,
	20
] call CBA_fnc_waitAndExecute;

