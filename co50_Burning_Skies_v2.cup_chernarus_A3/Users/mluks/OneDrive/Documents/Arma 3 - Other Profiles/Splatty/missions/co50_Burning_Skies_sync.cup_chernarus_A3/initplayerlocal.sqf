FNC_bs = compile preprocessFileLineNumbers "bolid.sqf";
[] spawn
{
	_meteor = compile preprocessFileLineNumbers "meteor.sqf";
	waitUntil{getClientStateNumber == 10};
	while {true} do 
	{
		uiSleep 4;
		[random (40) + 50, random (20) +30, 25, 0, 1000] spawn _meteor;
	};
};
