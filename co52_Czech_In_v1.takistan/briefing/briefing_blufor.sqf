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
Local Opfor Milita have taken control of Garmsar and the military base located there, using it as a base to launch more attacks. We will recapture the area and look for any further intel about the activities of the militia.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Takistani Militia, They have stolen and are using takistani military vehicles and armored technicals.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We are the only force operating in the area.
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
-Clear the town of <marker name = 'obj'>Garmsar</marker><br/>
-Locate any Intel about the milita's activities
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Use the vehicles and your optics to your advantage. 
<br/><br/>

<font size='18'>ROE</font>
<br/>
The villiage of Garmsar has been evacuated of all civilians.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You have been provided with Land Rovers for movement.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
We have identified that the militia forces have set up camps in the hills around garmsar and will be sending reinforcements from these camps. If you can locate and eliminate the ocupants of these camps reinforcements should slow from that direction.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
There is resupply in the land rover. Each transport varient seats 8 and the gun trucks seat 10
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;