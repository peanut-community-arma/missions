//Original Author: Diwako

if (!hasInterface) exitWith {};

nvgcolors_handle = ppEffectCreate ["colorCorrections", 3749];
nvgcolors_handle ppEffectForceInNVG true;
nvgcolors_handle ppEffectCommit 0;
nvgcolors_handle ppEffectEnable false;

["visionMode", 
	{
		params ["_unit", "_new", "_old"];
		if ((currentVisionMode _unit) isEqualTo 1) then 
		{
			private _effect = switch (nvgcolors_setting) do 
			{
				case 1: { [1, 0.6, 0, [0, 0.1, 0.2, 0], [0, 1, 1, 0], [1, 1, 1, 0]] };
				case 2: { [1, 0.6, 0, [0, 0.1, 0.2, 0], [0, 1, 1.2, 0], [1, 1, 1, 0]] };
				case 3: { [1, 0.6, 0, [0, 0.1, 0.2, 0], [0.4, 1.4, 2.4, 0], [1, 1, 1, 0]] };
				default { [] };
			};

			if !(_effect isEqualTo []) then 
			{
				nvgcolors_handle ppEffectEnable true;
				nvgcolors_handle ppEffectAdjust _effect;
				nvgcolors_handle ppEffectCommit 0;
			} 
			else 
			{
				nvgcolors_handle ppEffectEnable false;
			};
    } 
	else 
	{
        nvgcolors_handle ppEffectEnable false;
    };
}] call CBA_fnc_addPlayerEventHandler;
