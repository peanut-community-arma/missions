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
May, 2021
<br/>
The Sino-Indian border has become a battlefield once again, Indian paratroopers have been ordered to assault and capture key facilities to secure one of the few mountain passes in the region.
<br/>
There are two FOB's, <marker name='marker_FOB1'>east,</marker> and <marker name='marker_FOB2'>west.</marker>
<br/>
Observation notes that ZU turrets were airlifted and installed in these areas, it's also safe to assume shoulder launched anti-air is also present.
<br/>
Once these two FOB's are secure, the main <marker name='marker_obj'>airfield</marker> of the region is to be captured, expect scattered enemy presence in surrounding settlements and a <marker name='marker_qrf'>QRF</marker> to arrive from the north.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Chinese People's Liberation Army are limited to lighter assets around the FOB's due to the mountainous region, an assortment of MANPAD launchers and ZU turrets have been airlifted to these areas for protection from the air.
<br/>
The <marker name='marker_obj'>airfield</marker> itself is one of the few bases that has stable enough ground to field heavier equipment such as main battle tanks.
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
- Assault and capture <marker name='marker_FOB2'>west FOB.</marker>
<br/>
- Assault and capture <marker name='marker_FOB1'>east FOB.</marker>
<br/>
- Assault and capture <marker name='marker_obj'>airfield.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Assault both FOB's before occupying airfield, with air support it may be possible to assault both FOB's with only a single squad.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use helicopters to move between objectives.
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
- Mi-24V holds 10.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;