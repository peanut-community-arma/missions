/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

objsDone = 0;

//Randomized obj vic ammo

_objVics = [veh_mrl_1, veh_mrl_2, veh_mrl_3, veh_mrl_4, veh_mrl_5];

{ 
  _rand = random [0.2,0.4,0.6];
  _x setVehicleAmmo _rand;
} forEach _objVics;
