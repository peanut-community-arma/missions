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
A citizen of Porto ordered a new refrigerator from our company. However there was a mistake at the warehouse and the citizen accidentally received an experimental crowd pacification device. The device was activated and now the entire population of Porto are now zombies. We now have to go to the town, find the device, and destroy it. Unforutnately our insertion boat captain sunk our insertion ship in the storm, so to extract we have to take boats at the south docks of town.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Zombies.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
None.
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
Find the device, destroy the device, leave via boats to the south.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Search for the device in yards of buildings. The device has an orange warning light on it so it should be easy to notice. Slap a demo charge on it then blow it up, and then head to the south of the town to the docks to find a boat to leave in.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Walk.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
None.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Survive.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
There are explosive charges available to everyone in the arsenal.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;