/* ================================================================================
	GENERAL BRIEFING NOTES
	 - Uses HTML style syntax. All supported tags can be found here - https://community.bistudio.com/wiki/createDiaryRecord
	 - For images use <img image='FILE'></img> (for those familiar with HTML note it is image rather than src).
	 - Note that using the " character inside the briefing block is forbidden use ' instead of ".
*/

/* ================================================================================
	SITUATION
	 - Outline of what is going on, where we are we and what has happened before the mission has started? This needs to contain any relevant background information.
	 - Draw attention to friendly and enemy forces in the area. The commander will make important decisions based off this information.
	 - Outline present weather conditions, players will typically assume that it is daylight with sunny weather.
*/

private _situation = ["diary", ["Situation","
<br/>
<font size='18'>SITUATION</font>
<br/>
The Island of Tanoa has become a warzone between the Horizon Island Legion and Syndikat forces. We currently control the south side of the island while Syndikat is in control of the North. We are going to commit a lightning fast air raid to destroy their supplies and weaken their position.<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Syndikat has many loyal fighters who live in the surrounding towns and in the jungles. They are equipped with Soviet era gear, with DSHKM machince guns, armored technicals and MTLB's.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We are part of the Horizon Island 2nd Airborne. We have Huey gunships for support.
"]];

/* ================================================================================
	MISSION
	 - Describe any objectives that the team is expected to complete.
	 - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission = ["diary", ["Mission","
<br/>
<font size='18'>MISSION</font>
<br/>
We must search for and destroy 5 caches to complete our objective
<br/> <br/>
-Find and destroy two caches in <marker name='Obj1'>Obj1</marker> <br/>
-Find and destroy the cache in <marker name='Obj2'>Obj2</marker> <br/>
-Find and destroy the cache in <marker name='Obj3'>Obj3</marker> <br/>
-Find and destroy two caches in <marker name='Obj4'>Obj4</marker> <br/>
-Extract safely back to the airport <br/> <br/>

"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We will have to search through the Obj area to find the caches. The longer we stay in one place, the more enemies will attack us. Move quickly and split your platoon up between different objectives if you are confident that you can move fast.
<br/><br/>
The Obj Areas will have enemy contact ready to shoot down your helicopters so do not try to make your landings within them.
<br/><br/>
Also be aware of the time. It will get dark around 18:15 so you may have to extract in the dark.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We will be inserting and extracting via helicopter.
<br/><br/>

"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Each Helicopter has 12 spots in it: 8x passenger spots, 2x Door Gunners, 1x Copilot, and 1x Pilot.<br/>
There are Rearm, Repair and Refuel Trucks back at base. The Hueys are armed with 32x M229 Hydra Missiles. Pilots may opt to change this out for the Illumination Hydra’s (M257) using the rearm truck.<br/><br/>

Players will want to keep their flashlight with them and leaders should bring parachute flares in case it becomes dark.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;