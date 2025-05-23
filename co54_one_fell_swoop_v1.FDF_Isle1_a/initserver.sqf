/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

isMATSlotted = false;

if (!isNull MAT) then {
	isMATSlotted = true;
	["MAT slotted, extra spawns enabled",true,"Mission note"] call TMF_adminmenu_fnc_log;
} else {
	["No MAT slotted",true,"Mission note"] call TMF_adminmenu_fnc_log;
}