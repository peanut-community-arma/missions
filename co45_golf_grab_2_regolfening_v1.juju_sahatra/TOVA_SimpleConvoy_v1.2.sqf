// ========================================================
//  Source: https://forums.bohemia.net/forums/topic/226608-simple-convoy-script-release/
//  Instructions: place this script in mission folder, call it with:
//		convoyScript = [convoyGroup] spawn TOV_fnc_SimpleConvoy;
// 	Optional parameters:
//  	convoyScript = [convoyGroup, convoySpeed, convoySeparation, pushThrough] spawn TOV_fnc_SimpleConvoy;
//  Parameters:
// 		convoyGroup: the group you want to move as a convoy-script-release/
// 		convoySpeed: Max speed of convoy in km/h, default 50 km/h 
// 		convoySeparation: distance between each convoy vehicle in m, default 50m
// 		pushThrough: Boolean, forces AI to push through contact and only return fire on the move (default true)
//  Terminate on final waypoint with:
//		terminate convoyScript;
//		{(vehicle _x) limitSpeed 5000;(vehicle _x) setUnloadInCombat [true, false]} forEach (units convoyGroup);
//		convoyGroup enableAttack true;
// ========================================================

TOV_fnc_SimpleConvoy = { 
	params ["_convoyGroup",["_convoySpeed",50],["_convoySeparation",50],["_pushThrough", true]];
	if (_pushThrough) then {
		_convoyGroup enableAttack !(_pushThrough);
		{(vehicle _x) setUnloadInCombat [false, false];} forEach (units _convoyGroup);
	};
	_convoyGroup setFormation "COLUMN";
	{
    	(vehicle _x) limitSpeed _convoySpeed*1.15;
        (vehicle _x) setConvoySeparation _convoySeparation;
    } forEach (units _convoyGroup);
	(vehicle leader _convoyGroup) limitSpeed _convoySpeed;
	while {sleep 5; !isNull _convoyGroup} do {
		{
			if ((speed vehicle _x < 5) && (_pushThrough || (behaviour _x != "COMBAT"))) then {
				(vehicle _x) doFollow (leader _convoyGroup);
			};	
		} forEach (units _convoyGroup)-(crew (vehicle (leader _convoyGroup)))-allPlayers;
        {(vehicle _x) setConvoySeparation _convoySeparation;} forEach (units _convoyGroup);
	}; 
};