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
2012, May
<br/>
Coalition forces want the capture of a prominent militia leader in the region.
<br/>
He doesn't leave his little fortress city of Zargabad, so KSK special forces are being deployed.
<br/>
Intelligence indicates he stays on one of the upper levels of an <marker name='marker_obj'>apartment building</marker> within the city.
<br/>
Strong militia presence within the city will mean an overwhelming force will be brought to bear when KSK units are detected.
<br/>
Coalition intelligence want the militia leader alive, and if he dies they at least want the body for positive identification.
<br/>
You can visually identify him from his black with gold trim djellaba, black beret and beard.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Insurgent forces are armed with 7.62 AKM rifles, wearing a mix of civilian and militia equipment.
<br/>
They're essentially operating as law enforment for the city of Zargabad, expect high number of patrols and garrisoned forces.
<br/>
If alerted there'll be a constant escalation of OPFOR, likely see technicals deployed.
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
- Capture VIP within <marker name='marker_obj'>apartment building.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Stay undetected for as long as possible, moving rapidly once detected to avoid being overrun.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Land-rovers are available for rapid exfil and additional firepower once detected.
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
- Land rover holds 10 total.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;