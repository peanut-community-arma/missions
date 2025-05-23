DNV_ambientArty = [
	[
		ambientarty1,
		ambientarty1_1,
		ambientarty1_2,
		ambientarty1_3
	],
	true
] call CBA_statemachine_fnc_create;

[
	DNV_ambientArty,
	{
		if ((CBA_missionTime - (_this getVariable ["last_fired", 0])) > 240) then {
			_this setVariable ["last_fired", CBA_missionTime + random 30];
			_this setVehicleAmmo 1;
			[
				_this,
				DNV_randoartysector call BIS_fnc_randomPosTrigger,
				"",
				10,
				5,
				[8,15],
				{},
				0
			] spawn BIS_fnc_fireSupport;
		};
	},
	{},
	{},
	"DURING"
] call CBA_statemachine_fnc_addState;

[
	DNV_ambientArty,
	{},
	{},
	{},
	"OVER"
] call CBA_statemachine_fnc_addState;

[
	DNV_ambientArty,
	"DURING",
	"OVER",
	['Klamila_Captured'],
	{},
	{
		{
			{deleteVehicle _x} forEach (crew _x);
			deleteVehicle _x;
		} forEach [
			ambientarty1,
			ambientarty1_1,
			ambientarty1_2,
			ambientarty1_3
		];
		[DNV_ambientArty] call CBA_statemachine_fnc_delete;
	}
] call CBA_statemachine_fnc_addEventTransition;

{
	_x setVariable ['last_fired', CBA_missionTime - (random 240)];
} forEach [
	ambientarty1,
	ambientarty1_1,
	ambientarty1_2,
	ambientarty1_3
];