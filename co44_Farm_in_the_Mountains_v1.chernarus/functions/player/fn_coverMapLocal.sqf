_logic = _this select 0;
_units = _this select 1;
_activated = _this select 2;

if (_activated) then {


_pos = position _logic;
_area = _logic getvariable ["objectArea",[0,0,0,false,0]];
_maxAreaSize = 0;

if (_logic  iskindof "LocationArea_F") then {
{
_pos = position _logic;
_area = triggerarea _logic;
} foreach (_logic call bis_fnc_moduleTriggers);
};

_posX = _pos select 0;
_posY = _pos select 1;
_sizeX = _area select 0;
_sizeY = _area select 1;
_dir = _area select 2;

_sizeOut = 50000;

for "_i" from 0 to 270 step 90 do {
_size1 = [_sizeX,_sizeY] select (abs cos _i);
_size2 = [_sizeX,_sizeY] select (abs sin _i);
_sizeMarker = [_size2,_sizeOut] select (abs sin _i);
_dirTemp = _dir + _i;
_markerPos = [
_posX + (sin _dirTemp * _sizeOut),
_posY + (cos _dirTemp * _sizeOut)
];
[_i,_markerPos,[_sizeMarker,_sizeOut - _size1]] call bis_fnc_log;

_marker = format ["bis_fnc_moduleCoverMap_%1",_i];
createmarkerLocal [_marker,_markerPos];
_marker setmarkerposLocal _markerPos;
_marker setmarkersizeLocal [_sizeMarker,_sizeOut - _size1];
_marker setmarkerdirLocal _dirTemp;
_marker setmarkershapeLocal "rectangle";
_marker setmarkerbrushLocal "solid";
_marker setmarkercolorLocal "colorBlack";


_markerPos = [
_posX + (sin _dirTemp * _size1) + (sin (_dirTemp + 90) * _size2),
_posY + (cos _dirTemp * _size1) + (cos (_dirTemp + 90) * _size2)
];
_marker = format ["bis_fnc_moduleCoverMap_dot_%1",_i];
createmarkerLocal [_marker,_markerPos];
_marker setmarkerposLocal _markerPos;
_marker setmarkersizeLocal [0.75,0.75];
_marker setmarkerdirLocal _dir;
_marker setmarkertypeLocal "mil_box_noShadow";
_marker setmarkercolorLocal "colorBlack";
};


_marker = "bis_fnc_moduleCoverMap_border";
createmarkerLocal [_marker,_pos];
_marker setmarkerposLocal _pos;
_marker setmarkersizeLocal [_sizeX,_sizeY];
_marker setmarkerdirLocal _dir;
_marker setmarkershapeLocal "rectangle";
_marker setmarkerbrushLocal "border";
_marker setmarkercolorLocal "colorblack";
} else {
for "_i" from 0 to 270 step 90 do {
_marker = format ["bis_fnc_moduleCoverMap_%1",_i];
deletemarkerLocal _marker;
_marker = format ["bis_fnc_moduleCoverMap_dot_%1",_i];
deletemarkerLocal _marker;
};
deletemarkerLocal "bis_fnc_moduleCoverMap_border";
};