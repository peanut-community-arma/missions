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
09:30:00 December 20th 1944, 5th Special Assault Regiment, Red Army.<br/>
<br/>
We are pushing the Facists back! While our army pushes towards berlin in the south we still have to root the last of them out of Finland.<br/>
The Red Army is testing new special assault tactics and equipment and we are going to be the first to try them out.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The Facists are tired and running out of supplies. They have no armor in the area anymore and have resorted to large minefields to try and stop our advance.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We will have friendly artillery strikes landing before we make our attack.
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
- Assault the <marker name='obj1'>Nazi lines</marker><br/>
- Hold the <marker name='obj2'>town</marker> from counterattack<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Recon the Nazi lines and make an assault how you see fit. We will need to hold the gap so our other troops can move in behind you.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We will be moving on foot.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
There will be a preliminary rocket strike.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Kill every Nazi you can.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
- There will be no resupply.<br/>
- Radio Operators are equipped with 148 radios to communicate with eachother.<br/>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;