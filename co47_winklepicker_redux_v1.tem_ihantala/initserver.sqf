/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

// Adding 2x TOW-2A rounds to player Bradleys
{
	_x addMagazineTurret ["CUP_2Rnd_TOW2_M", [0]];
} forEach [B_M2A2_1];
