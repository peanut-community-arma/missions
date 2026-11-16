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
September, 2024
<br/>
The Coastal Ranger Company will be deployed via boat to sabotage a makeshift Russian depot established on a key <marker name='marker_msr'>MSR.</marker>
<br/>
This will require pushing through the town of <marker name='marker_nena'>Nena.</marker>
<br/>
The small base built on the <marker name='marker_msr'>MSR</marker> is primarily for repair and drone defence.
<br/>
To the north of this base is where they keep the majority of their ammunition in a <marker name='marker_depot'>large shed.</marker>
<br/>
Once platoon reaches the MSR expect an initial QRF approaching from the <marker name='marker_qrf'>east.</marker>
<br/>
Destroy both of these targets and exfil safely before a larger force can be mobilised against us.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Russian Armed Forces wear EMR with white armbands, armed with 5.45 AK pattern rifles.
<br/>
QRF force will be substantial, expect auto-cannon BTR-80A and a number of transports.
<br/>
Exfil safely.
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
- Capture and destroy material at <marker name='marker_msr'>MSR repair point.</marker>
<br/>
- Capture and destroy material at <marker name='marker_depot'>shed depot.</marker>
<br/>
- Exfil safely.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Once making landfall the platoon is the move to the MSR and clear any depots present.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
After making the landing using rhibs, the operation will be on foot.
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
- Rhibs hold 5 total
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;