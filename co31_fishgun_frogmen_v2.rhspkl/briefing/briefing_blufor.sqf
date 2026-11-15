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
August, 2017
<br/>
<br/>
Intelligence operatives have uncovered plans for a sizeable terror cell's assault on multiple off-shore oil platforms.
<br/>
A major storm has hit, concentrating men and material giving a perfect oppurtunity for Malaysian special forces to cripple their operations.
<br/>
It is the task of Pasukan Khas Laut (PASKAL) to use the river and the cover of the storm to destroy any material that you come across.
<br/>
We are aware that you will be running light for this operation, so local intelligence have placed multiple resupply boxes around the area.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
An assortment of irregular equipment, and light skinned vehicles.
<br/><br/>

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
- Destroy at least 9 weapons caches, local operatives have given accurate location markers for the cache's located in the red circles.
<br/>
- Resupply is marked with <marker name='marker_supplies'>blue</marker> on your map.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
- Use the river system to your advantage.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
- A combination of diving and on-foot movement.
<br/>
- RHIBs available for mission replay.
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
- RHIBs can slot 11 players.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;