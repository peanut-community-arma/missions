/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

[] spawn
{
	waitUntil{getClientStateNumber == 10};
	while {true} do 
	{
		uiSleep random [15, 25, 60];
		[selectRandom [0,1,2] , random (40) + 50 , random (30) +30, 0 , 1] remoteExec ["FNC_bs"];
	};
};