params ["_objs"];
if (isNil {_objs select 0}) exitWith { ["ARRAY %1 was not initialized.", _objs] call BIS_fnc_error; false; };

private _xOffs = [0];
private _yOffs = [0];
private _zOffs = [0];

private _xPos = (getPosWorld (_objs select 0) select 0);
private _yPos = (getPosWorld (_objs select 0) select 1);
private _zPos = (getPosWorld (_objs select 0) select 2);

private _oCount = (count _objs - 1);

if (_oCount > 0) then {
  for "_i" from 1 to _oCount do {
    _xOffs pushBack (getPosWorld (_objs select _i) select 0) - _xPos;
    _yOffs pushBack (getPosWorld (_objs select _i) select 1) - _yPos;
    _zOffs pushBack (getPosWorld (_objs select _i) select 2) - _zPos;
  };
};

private _xChange = 0.231 * 0.1;
private _yChange = 0.231 * 0.1;


#define ACCEL 1.006
#define DECEL 0.987
#define REST 0.033

//doVec = true;
//[] spawn {call ALN_fnc_animVector;};

while {_xPos > 3669.660} do { 
     if (_xPos > 3670) then {
	   _xChange = _xChange * ACCEL;
	   _yChange = _yChange * ACCEL;	   
	 } else {
	   _xChange = _xChange * DECEL;
	   _yChange = _yChange * DECEL;	 
	 };
	 
    _xPos = _xPos - _xChange;
	_yPos = _yPos + _yChange;
	
	
    for "_i" from 0 to _oCount do {
      (_objs select _i) setPosWorld [(_xPos+(_xOffs select _i)), (_yPos+(_yOffs select _i)), (_zPos+(_zOffs select _i))];
    };
    //detach _hmg;
    //_hmg attachTo [batCar, HMG_OFFSET]; 
    //_hmg setVectorDir HMG_VECTOR;
    sleep REST;
};

true;
