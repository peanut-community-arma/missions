// qry_fnc_findPlayerSpawnPos
//Modified SHK_POS For Triggers instead of markers.

params ["_unit"];
private _pos = [];
private _veh = typeOf _unit;

private _area = "quarry_play_area" call BIS_fnc_getArea;
_area params ["_center", "_sizeX", "_sizeY", "_dir", "_isRect", "_height"];
// Limited loop so the script won't get stuck
private _exit = false;
private _i = 0;

_center params ["_centerX", "_centerY"];

for [{_i = 0}, {_i < 100 && !_exit}, {_i = _i + 1}] do {
	// Rectangle or Ellipse marker given?

	private _dir = _dir * -1;
	_dir = _dir % 360;
	if (true) then { //_isRect
		private _dirCos = cos _dir;
		private _dirSin = sin _dir;

		private ["_posX","_posY"];
		// Select random X and Y
		private _rndX = (random (_sizeX * 2)) - _sizeX;
		private _rndY = (random (_sizeY * 2)) - _sizeY;

		// If area is angled, shift X and Y
		if (_dir != 0) then {
			_posX = _centerX + (_dirCos * _rndX - _dirSin * _rndY);
			_posY = _centerY + (_dirSin * _rndX + _dirCos * _rndY);
		} else {
			_posX = _centerX + _rndX;
			_posY = _centerY + _rndY;
		};

		_pos = [_posX,_posY,0];
	} else { /* TODO CIRCLE */
		// Direction and make sure it's between 0 and 360.
		private _dirMrk = _dir % 360;

		// If B axis is longer than A, switch them and fix direction.
		if (_sizeX < _sizeY) then {
			_sizeX = _size select 1;
			_sizeY = _size select 0;
			_dirMrk = _dirMrk + 90;
		};

		// Randomly pick a direction, 
		private _dir  = random 360;
		private _rand = sqrt random 1;
		private _posX = (_sizeX * (cos _dir)) * _rand;
		private _posY = (_sizeY * (sin _dir)) * _rand;
		private _pos  = [_posX,_posY];

		/*if (_dirMrk != 0) then {
		_pos = [_pos,_dirMrk] call SHK_pos_fnc_rotatePosition;
		};*/

		_posX = _centerX + (_pos select 0);
		_posY = _centerY + (_pos select 1);

		_pos = [_posX,_posY,0];
	};

	// Pos find nearestRoad

	private _nearestRoad = [_pos,250,[]] call BIS_fnc_nearestRoad;

	if (isNull _nearestRoad) then {
		_pos = []; // DO NOT USE POSITION THAT IS FURTHER THAN 250M FROM ROAD.
	} else {
		private _nearestRoadDist = _nearestRoad distance _pos;
		private _nearestBuilding = nearestBuilding _pos;
		private _buildingDist = _pos distance _nearestBuilding;

		if (_nearestRoadDist < _buildingDist) then { // use road
			_pos = getPos _nearestRoad;
		} else { // use building.
			private _buildingPos = (_nearestBuilding buildingPos -1) select {_x select 2 < 2.5}; // Enjoy that the positions are ground level to avoid inaccessible rooftops.
			if (count _buildingPos == 0) then {
				_pos = getPos _nearestRoad;
			} else {
				_pos = selectRandom _buildingPos;
			};
		};
	};

	// Find empty position
	// if (count (_pos findEmptyPosition [0, 0]) > 0) then { _exit = true };
	if (count _pos > 0) then {
		if (_pos inArea "quarry_play_area" && {!surfaceIsWater _pos}) then {
			if (count (_pos nearEntities ["CAManBase", 20]) == 0) then {_exit = true; };
		};     
	};
};

// Return position
_pos
