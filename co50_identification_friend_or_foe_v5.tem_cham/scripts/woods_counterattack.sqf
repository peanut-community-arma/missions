[  
 resistance,  
    [  
        "CUP_I_PMC_Soldier_TL",  
        "CUP_I_PMC_Soldier_MG",  
        "CUP_I_PMC_Soldier_MG",  
        "CUP_I_PMC_Contractor1",  
        "CUP_I_PMC_Contractor1",  
        "CUP_I_PMC_Medic",  
        "CUP_I_PMC_Bodyguard_AA12",  
        "CUP_I_PMC_Engineer"  
    ],  
    "rhsusf_stryker_m1132_m2_np_wd",  
    [6418.1,3766.94,0],  
    165.064,  
    [6554.44,2959.96,0],  
    ["CUP_I_PMC_Crew","CUP_I_PMC_Crew"], 
    [6525.36,2760.48,0] 
] call DNV_fnc_spawnIFV; 
 
[  
 resistance,  
    [  
        "CUP_I_PMC_Soldier_TL",  
        "CUP_I_PMC_Soldier_MG",  
        "CUP_I_PMC_Soldier_MG",  
        "CUP_I_PMC_Contractor1",  
        "CUP_I_PMC_Contractor1",  
        "CUP_I_PMC_Medic",  
        "CUP_I_PMC_Bodyguard_AA12",  
        "CUP_I_PMC_Engineer"  
    ],  
    "rhsusf_stryker_m1132_m2_np_wd",  
    [6436.29,3900.69,0],  
    194.977,  
    [6523.74,3019.06,0],  
    ["CUP_I_PMC_Crew","CUP_I_PMC_Crew"], 
    [6525.36,2760.48,0]
] call DNV_fnc_spawnIFV;

[
    [6561.69,2935.24,0],
    "rhs_ammo_m60a2_smoke",
    5,
    1,
    [15, 25]
] spawn BIS_fnc_fireSupportVirtual;