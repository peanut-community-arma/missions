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
May 8th, 1985
<br/>
02:00 hours
<br/>
<br/>
War against Soviet forces continues, NATO intelligence determines that a high-value officer within VDV forces was inspecting damage done to the Krasnostav <marker name='marker_airfield'>airstrip</marker> by Allied shelling.
<br/>
French Special Forces are being deployed to eliminate the target, last seen at a command post established in a local <marker name='marker_castle'>castle.</marker>
<br/>
Soviet forces have no night-vision capability, the early morning and waning moon will give you the advantage.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Expect Soviet forces from all directions.
<br/>
This region is lightly defended, expect infantry and light vehicles.
<br/>
Soviet forces within the <marker name='marker_airfield'>airstrip</marker> are light, majority of local units have already evacuated to <marker name='marker_town'>Krasnostav.</marker>
<br/>
Expect airstrip QRF from the <marker name='marker_6'>north</marker> and from <marker name='marker_town'>Krasnostav</marker> itself.
<br/>
Second wave of QRF will respond to a threat in <marker name='marker_town'>Krasnostav</marker> itself from <marker name='marker_4'>south</marker> and <marker name='marker_5'>west.</marker>
<br/>
Finally the <marker name='marker_castle'>castle</marker> is home to another garrison and the high value target.
<br/>
HVT can be identified from blue VDV beret.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
There are no other friendly forces within the area.
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
- Push through the <marker name='marker_airfield'>airstrip</marker> and <marker name='marker_town'>town.</marker>
<br/>
- Assault <marker name='marker_castle'>castle.</marker>
<br/>
- Eliminate <marker name='marker_castle'>officer</marker> in blue beret.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
- Use NVG advantage to engage at close range, avoid long range engagement.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
- Move west on foot, stealth is to the discretion of platoon lead.
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
- CUP Uzi has access to high-capacity magazine, but loses suppressor.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;