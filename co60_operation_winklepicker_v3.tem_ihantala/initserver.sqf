/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

{
	_x removeMagazinesTurret ["rhs_mag_2Rnd_TOW2B_AERO", [0]];
	_x loadMagazine [[0],"rhs_weap_TOW_Launcher","rhs_mag_2Rnd_TOW2A"];
	_x addMagazineTurret ["rhs_mag_2Rnd_TOW2A", [0]];
	_x addMagazineTurret ["rhs_mag_2Rnd_TOW2A", [0]];
} forEach [B_M2A3_1, B_M2A3_2, B_M2A3_3, B_M2A3_4, B_M2A3_5, B_M2A3_6];