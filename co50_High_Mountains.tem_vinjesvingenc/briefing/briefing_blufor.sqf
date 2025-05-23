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
June 10th 2020 07:00:00, Finland (not Norway shhh) next to the russian border
<br/>
A Finnish gang are bringing drugs into our country and so we are going to put a stop to it. We have tracked down their main production hub to a small town in the mountains near the border by finding large solar panel arrays, particularly outside the factory. We will conduct an operation to strike at the heart of their operation and destroy them. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The drug dealers have basic small arms.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A UAV doing recon.
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
- Destroy any drugs found<br/>
- Clear the <marker name='town'>town</marker><br/>
- Capture the <marker name='factory'>factory</marker><br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The town will be full of enemies. Be careful and clear it out. Fireteams should stick together and keep checking up on their members.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You will be moving on foot.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
None
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
None
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Squad leaders and Plt. have accsess to demo blocks and clackers. There will be no resupply.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;