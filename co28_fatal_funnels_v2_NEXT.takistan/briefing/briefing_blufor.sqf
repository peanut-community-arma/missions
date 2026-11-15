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
Our northern neighbours have been striking us constantly since the declaration of war without fear of reprisal due to their control over a key mountain pass.
<br/>
At the centre of this pass they have constructed a fortress, it is your task to gain control with what resources we can spare.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The force that garrisons this fortress are equipped to fight in CQC.
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
- Enter <marker name='marker_fortress'>the fortress.</marker>
<br/>
- Fortress ground floor entrance is located on the <marker name='marker_entrance'>north east side.</marker>
<br/>
- Objective is to capture the <marker name='marker_control'>control tower.</marker>

"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Capture the fortress.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use vehicles to avoid fire from upper walls when approaching entrance.
<br/>
It is recommended that the platoon pushes through the fortress to the objective as a single concentrated force.
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
This mission is an excercise in suffering, mentally prepare for urban clearing hell.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;