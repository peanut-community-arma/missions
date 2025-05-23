_Radar = "O_Radar_System_02_F"; 

"radarspawn1" setMarkerPos [10693,8937,0];
"radarspawn2" setMarkerPos [10553,9579,0];
"radarspawn3" setMarkerPos [10918,9446,0];
"radarspawn4" setMarkerPos [10657,9663,0];
"radarspawn5" setMarkerPos [10607,9663,0];
"radarspawn6" setMarkerPos [10650,9268,0];
"radarspawn7" setMarkerPos [10078,9394,4];
"radarspawn8" setMarkerPos [10758,9531,0];
"radarspawn9" setMarkerPos [10610,9519,0];
"radarspawn10" setMarkerPos [10630,9350,0];

_hqRadarCreation = createVehicle [_Radar, getMarkerPos "radarspawn1", ["radarspawn2", "radarspawn3", "radarspawn4"], 0, "NONE"];
_auxRadarCreation = createVehicle [_Radar, getMarkerPos "radarspawn5", ["radarspawn6", "radarspawn7", "radarspawn8", "radarspawn9", "radarspawn10"], 0, "NONE"];

_hqRadarCreation setDamage 0;
_auxRadarCreation setDamage 0;