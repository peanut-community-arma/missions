/*
nul = [this] execVM "scripts\this.sqf"
*/

_object = _this select 0;

clearWeaponCargoGlobal _object;
clearMagazineCargoGlobal _object;
clearItemCargoGlobal _object;
clearBackpackCargoGlobal _object;