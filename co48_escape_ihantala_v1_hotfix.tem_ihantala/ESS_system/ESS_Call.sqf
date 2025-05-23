/*
	Enemy Spawning System (ESS) - by Enigx
	
	ESS_Call.sqf

	Enemy Spawning System (ESS) is a simple, stable and powerfull script that allows mission makers to spawn AI units on areas prevently placed on map from editor. 
	Units will be created when players are at a defined distance from the area edges.
	This is useful for multiplayer missions where it is needed to activate enemy when necessary, so to safe server resources. 
	Simply place marker areas on the map while editing mission and ESS will activate them with enemies when players are close to them.
	Particularly useful for creating patrolling infantry units and inside buildings.
	Vehicles and static turrets can also be created.
	It works both in SP and MP.

	******************************************************************************************************************
	To initiate the ESS system, copy the following string into the initServer.sqf in mission folder (create the file if not already present)
			
			[]execVM "ESS_system\ESS_Call.sqf"; // <- add to initServer.sqf
	
	******************************************************************************************************************

	Steps to define the ESS system:
	1) Place on map from editor one or more marker area where to spawn enemies. It is not necessary to hide the area with a transparent color. The areas will be hidden automatically when the mission starts
	2) Name each marker (ie: MarkerAreaESS)
	3) Copy folder ESS_system\ into the mission folder
	4) Compile this ESS_Call.sqf file to generate the single ESS spawning zone by following call
		
		null = [FACTION,SIDE,"MARKER",[NUM_TEAM_ROAD,MAX_UNITS_PER_TEAM_ROAD],[NUM_TEAM_HOUSE,MAX_UNITS_PER_TEAM_HOUSE],[STATIC],[LIGHT_VEHICLE,BEHAVIOR_LGH,CHANCE],[HEAVY_VEHICLE,BEHAVIOR_HVY],DISTANCE] execVM "ESS_system\functions\ESS_Launch.sqf";
	
	N.B. *** ONE STRING FOR EACH ESS MARKER AREA PLACED ON MAP FROM EDITOR !! ***
	
	Arguments:
		0 - FACTION: Faction used for enemy - <NUMBER>. This is defined in ESS_Units.sqf file. The units classname must be defined in that file. 
				The number corresponds to the selected faction. 
			*** FACTION NUMBERS ARE FROM 0 TO 13 CORRESPONDING TO THE NUMBERS DEFINED IN THE FILE ESS_Units.sqf ***
		1 - SIDE: Type of faction (east,west,civilian,independent)
		2 - "MARKER": Name of the marker area defined in editor where to spawn ESS enemy zone - <STRING>
		3 - NUM_TEAM_ROAD: Number of fire teams patrolling roads - <NUMBER>
		4 - MAX_UNITS_PER_TEAM_ROAD: Max number of units composing the single fire team on roads - <NUMBER>
		5 - NUM_TEAM_HOUSE: Number of fire teams into buildings - <NUMBER>
		6 - MAX_UNITS_PER_TEAM_HOUSE: Max number of units composing the single fire team in the buildings - <NUMBER>
		7 - STATIC: Number of static turrets - <NUMBER>
		8 - LIGHT_VEHICLE: Number of light vehicles - <NUMBER>
		9 - BEHAVIOR_LGH: It defines if the light vehicle must patrol or not - <NUMBER> (0 or 1): 1 for patrolling, 0 to simply spawn it on position
		10 - CHANCE: chance (percentage) that single spawned light vehicle has of being full of infantry - <NUMBER> (from 1 to 100): Set 1 to have only driver and gunner
		11 - HEAVY_VEHICLE: Number of heavy vehicles - <NUMBER>
		12 - BEHAVIOR_HVY: It defines if the heavy vehicle must patrol or not - <NUMBER> (0 or 1): 1 for patrolling, 0 to simply spawn it on position	
		13 - DISTANCE: Distance in meters of player from marker within which the units spawning begins - <NUMBER> 
	
	5) Open the file "ESS_Units.sqf" to check the faction to use and possibly insert a specific one (if not included in the file)
	
	Example 1 
		- Create an ESS zone on area "MarkerAreaESS" defined in editor, using: 
			-) The faction number 0 of file ESS_Units.sqf
			-) Faction defined as EAST
			-) 10 fire teams that patrol roads with max 3 units per team
			-) 5 fire teams stay into buildings with max 2 units per team
			-) 3 static turrets
			-) Two patrolling light vehicles
			-) Each light vehicle has 60% chance of being full of infantry units
			-) One resting heavy vehicle 
			-) The spawing starts when player is at 800m from the area edges

		null = [0,east,"MarkerAreaESS",[10,3],[5,2],[3],[2,1,60],[1,0],800] execVM "ESS_system\functions\ESS_Launch.sqf";

	
	Example 2
		- Create an ESS zone on area "M1" defined in editor, using: 
			-) The faction number 5 of file ESS_Units.sqf
			-) Faction defined as INDEPENDENT
			-) 3 fire teams that patrol roads with max 5 units per team
			-) 5 fire teams stay into buildings with 1 unit per team
			-) No static turrets
			-) One patrolling light vehicle
			-) Each light vehicles has NO chance of being full of infantry units (only driver and gunner)
			-) No heavy vehicle 
			-) The spawing starts when player is at 200m from the area edges

		null = [5,independent,"M1",[3,5],[5,1],[0],[1,0,1],[0,0],200] execVM "ESS_system\functions\ESS_Launch.sqf";
		
	Example 3
		- Calling of more ESS areas to be generated: 
			
		null = [5,east,"M1",[1,3],[0,0],[0],[0,0,1],[1,1],200] execVM "ESS_system\functions\ESS_Launch.sqf";
		null = [3,east,"M2",[0,0],[5,1],[1],[1,1,100],[0,0],300] execVM "ESS_system\functions\ESS_Launch.sqf";	

*** NOTE/TIP: spawn of vehicles should be done in area with no or limited presence of buildings and objects. A procedure is present in the script to select 
a "safe" spawning position for vehicles, in order to avoid their placing on building, trees, walls... but that's Arma!! and it is not excluded that on some 
maps and conditions, spawining could interfer with objects on map with "explosive" consequences.

*/

// ************** DON'T MODIFY THESE STRINGS ***************************
ESS_fnc_getunit= compile preprocessfilelinenumbers "ESS_system\ESS_Units.sqf";
ESS_fnc_findsafepos=compile preprocessfilelinenumbers "ESS_system\functions\findSafePos.sqf";
SHK_pos= compile preprocessfile "ESS_system\functions\shk_pos.sqf";
// ***************************************************************************

east setFriend [civilian, 0];
west setFriend [civilian, 0];

// ** MODIFY THE FOLLOWING SECTION ADDING THE CALLS TO GENERATE THE ESS ZONES 


null = [12,east,"ESS_1",[7,3],[0,0],[0],[0,0,0],[0,0],100] execVM "ESS_system\functions\ESS_Launch.sqf";

null = [12,east,"ESS_2",[10,3],[0,0],[0],[0,0,0],[0,0],100] execVM "ESS_system\functions\ESS_Launch.sqf";

null = [12,east,"ESS_3",[4,3],[0,0],[0],[0,0,0],[0,0],100] execVM "ESS_system\functions\ESS_Launch.sqf";

null = [12,east,"ESS_4",[5,3],[0,0],[0],[0,0,0],[0,0],100] execVM "ESS_system\functions\ESS_Launch.sqf";

null = [12,east,"ESS_5",[3,3],[0,0],[0],[0,0,0],[0,0],200] execVM "ESS_system\functions\ESS_Launch.sqf";

