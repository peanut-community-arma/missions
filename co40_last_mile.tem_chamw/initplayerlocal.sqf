/**
	INIT PLAYER LOCAL
	- Executed locally when player joins a mission (include mission start).
*/
//cribbed from https://github.com/Asaayu/Immersed-Weather/tree/master
while{true}do{
    imw_blizzard = "#particlesource" createVehicleLocal (getPos (vehicle player));
    imw_blizzard setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 4, [0, 0, 0], [-1, -1, 0], 100, 10.15,7.9, 0.2, [10, 10, 20], [[1, 1, 1, 0.01], [1, 1, 1, 0.2], [1, 1, 1, 0]], [0.08], 1, 0, "", "", vehicle player];
    imw_blizzard setParticleRandom [3, [0, 0, 0], [1, 1, 1], 1, 0.5, [0, 0, 0, 0.2], 0, 1];
    imw_blizzard setParticleCircle [30, [0, 0, 0]];
    imw_blizzard setDropInterval 0.15;
    imw_blizzard attachto [vehicle player,[0,0,3.5]];
    //if !(iwm_allowBlizzard) then {imw_blizzard setDropInterval 0}else{imw_blizzard setDropInterval 0.1};
	imw_blizzard setDropInterval 0.1;
    uisleep 3;
    deleteVehicle imw_blizzard;
  };