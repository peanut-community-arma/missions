/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

// IED spawner

//Set up positions - these are pre-placed markers
private _iedMarkers = ["ied_1", "ied_2"];

//List of types of explosive
private _iedList =
[
	"ACE_IEDUrbanBig_Range",
	"ACE_IEDUrbanSmall_Range"
];

//Iterate over array of _iedMarkers, place down a mine, make explosive owner link it to Pressure Plate activation
{
	_iedType = selectRandom _iedList;
	_iedPos = getMarkerPos _x;
	_ied = createMine [_iedType, _iedPos, [], 0];
} forEach _iedMarkers;