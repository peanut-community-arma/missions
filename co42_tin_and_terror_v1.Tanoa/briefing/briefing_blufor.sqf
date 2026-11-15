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
2023, April
<br/>
The Horizon Islands Marine Corps will be leading the assault on the insurgents two occupied towns in this territory.
<br/>
<marker name='marker_obj_1'>Tuvanaka</marker> will be the first.
<br/>
<marker name='marker_obj_2'>Belfort</marker> the second.
<br/>
We expect the fighting at Belfort to attract any remaining insurgents to our position, so expect a QRF.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Local insurgents are using a mix of imported Russian firearms and equipment stolen from national reserves, expect a range of eastern and western firearms.
<br/>
Irregular clothing and body armour, many will be wearing face-masks in some form.
<br/>
No armour beyond technicals.
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
- Assault and clear <marker name='marker_obj_1'>Tuvanaka.</marker>
<br/>
- Assault and clear <marker name='marker_obj_2'>Belfort.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
M113's provide fire-support as platoon clears towns on foot.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
M113's will provide transport for long distances.
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
- M1025 HUMVEE holds 4 total.
<br/>
- M113 holds 13 total.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;