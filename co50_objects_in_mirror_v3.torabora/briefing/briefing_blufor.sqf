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
October, 2006
<br/>
Platoon has been tasked with out-reach initiatives for this remote region.
<br/>
Loading available trucks with supplies you will be delivering to 3 towns total for this region.
<br/>
Each town will be receiving 5 of these crates.

<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Local insurgent activity is high in this region and will be looking to steal what we have.
<br/>
Heavy infantry presence with technical support.
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
- Delivery to the towns of <marker name='marker_0'>Jool Hul,</marker>  <marker name='marker_1'>Gharunta,</marker> and finally at <marker name='marker_2'>Sanaag Bari.</marker>
<br/>
- 5 medical crates per drop off zone.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Keeping to the roads to avoid offroad damage to the supply trucks and steep hills they may struggle to clear.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Long distance will require platoon to be mounted for majority of mission, dismount may be necessary to ensure safety of supply trucks.
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
- Supply trucks have the ability to rearm and repair.
<br/>
- Each supply truck can hold 15 medical crates total.
<br/>
- Each HMVEE can hold 5 infantry.
<br/>
- Each Bradely can hold 9 infantry.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;