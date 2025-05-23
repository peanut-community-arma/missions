/**
	INIT PLAYER LOCAL
	- Executed locally when player joins a mission (include mission start).
*/

//Code to allow group leaders to 'share' their map with players around them
[] spawn {
  waitUntil {sleep 1; !isNull findDisplay 46};
  findDisplay 46 displayAddEventHandler["KeyDown","
    if ((_this #1) in actionKeys 'showMap' && player distance leader player <3) exitWith {if !('itemMap' in items player) then {player addWeapon 'itemMap'}; openMap [true,false]};
    player removeWeapon 'itemMap';
  "];
};

//Code to allow players to load cargo into themselves
private _icon = [player] call ace_common_fnc_getVehicleIcon;
private _action = ["selfCargo" , "Cargo", _icon,
  {
    ace_cargo_interactionVehicle = player;
    ace_cargo_interactionParadrop = false;
    createDialog "ace_cargo_menu";
  },
  {true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _action, true] call ace_interact_menu_fnc_addActionToObject;
[player, 1] call ace_cargo_fnc_setSpace;


