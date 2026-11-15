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
Soviet-Afghan War, October 10, 1980, 05:00,
Our motostrelki platoon has just received our redeployment orders. We are to immediately report to the heliport in <marker name='marker_obj'>Skandarhar</marker> for transportation to regional command.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Recon reports large numbers of mujahideen fighters massing in our immediate vicinity, some stolen mechanized assets reported.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to one platoon of motorized infantry, supported by up to two BTR-60 APCs.
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
Move as a convoy to <marker name='marker_obj'>Skandarhar</marker>.<br/>
Board transport helicopters and leave the AO.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Organize a convoy and travel to <marker name='marker_obj'>Skandarhar</marker> via the roads, be ready for ambush along the way, thunder run is ill advised.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Move as a convoy along the roads to <marker name='marker_obj'>Skandarhar</marker>.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
N/A
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Each BTR can seat up to 14 passengers, the Urals can seat up to 15 people.
There are 2 Mi-8s at the destination, each with no fuel and a fuel station next to them, these seat pilot+17. Between the two helicopters the entire platoon can be transported.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;