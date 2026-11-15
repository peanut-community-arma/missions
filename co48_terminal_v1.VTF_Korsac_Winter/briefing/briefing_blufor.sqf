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
1987, March
<br/>
Soviet high-command has ordered for the complete annexation of Finland, to succeed in this we cannot retread the mistakes of the Winter War of 1939.
<br/>
Spetsnaz, under the cover of an airliner malfunction will covertly delpoy to an <marker name='marker_insert'>airfield</marker> that overlooks a key road.
<br/>
Shock and awe is key here, stealth will not be possible to capture what we need in a timely manner and there is a limited military presence at the airfield.
<br/>
Push into the town of <marker name='marker_obj'>Rostok</marker> and dislodge Finnish armed forces presence.
<br/>
The civillian presence in both the airport and town can be ignored.
<br/>
There is a small <marker name='marker_base'>barracks</marker> in the town that you will have to clear.
<br/>
With the town secure, a <marker name='marker_qrf'>QRF</marker> that will be 7 minutes out once you engage units in Rostok proper will arrive.
<br/>
Once successfully defended, reinforments will arrive and the day will be ours.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Finnish armed forces are armed with 7.62 RK-95, with concripts using Finnish-made Mosin's.
<br/>
Expect vehicles similar to Soviet counterparts, BTR-60 and BMP-1's.
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
- Assault <marker name='marker_obj'>Rostok.</marker>
<br/>
- Clear <marker name='marker_base'>barracks.</marker>
<br/>
- Defend from <marker name='marker_qrf'>QRF.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Control Rostok before QRF arrives.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We can't transport any equipment with the airliner, it will be on-foot for the whole operation.
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
- Flag at spawn teleports you to airport.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;