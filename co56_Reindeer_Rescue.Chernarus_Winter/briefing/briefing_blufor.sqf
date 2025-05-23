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
The ChDKZ have kidnapped all of Santa's reindeer! We are going to mount an operation to get them back. We will need to use stealth to try and get as close to town as we can before we alert the enemy.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
ChDKZ forces have russian small arms and technicals. They have their main QRF in the forests and towns to the north.
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
- Rescue all 9 Reindeer<br/>
- Search <marker name='obj1'>obj 1</marker><br/>
- Search <marker name='obj2'>obj 2</marker><br/>
- Search <marker name='obj3'>obj 3</marker><br/>
- Search <marker name='obj4'>obj 4</marker><br/>
- Search <marker name='obj5'>obj 5</marker><br/>
- Search <marker name='obj6'>obj 6</marker><br/>
- Search <marker name='obj7'>obj 7</marker><br/>
- Extract the Reindeer<br/>
- Escape the AO<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Use stealth for as long as possible and then go loud to clear LZ’s to extract the hostages.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Helicopter transports.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Sniper support. They can hang off the side of the littlebird for extra mobility.
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
There are Repair, Refit, and Refuel trucks at base.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;