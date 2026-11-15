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
November 17, 2010
<br/>
Our ground offensive is continuing its fast-paced push into Yuktobanian soil. A <marker name='marker_obj'>POW internment camp</marker> was discovered during the offensive.
<br/>
Sea Goblin with a contingent of Osean Marines will be deployed to secure the camp and facilitate rescue of all POW's present.
<br/>
Wardog squadron have already been deployed to secure the airspace, they carried out successful SEAD against long range anti-air systems in the attached <marker name='marker_air'>airbase.</marker>
<br/>
Smaller anti-air guns are still present in the area, Wardog received ground fire from ZU turrets and some MANPAD's present at the camp.
<br/>
This camp is located behind enemy lines so expect a consistent flow of enemy reinforcements once the operation begins.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Yuktobanian forces in this region are equipped with winter uniforms and green helmets.
<br/>
Ground vehicles include armed UAZ cars, M113, BTR and BMP APC's as well as some Mi-8 helicopters.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
There are an unknown number of POW's inside the camp, watch your fire around the simple buildings in the centre of the camp.
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
- Secure <marker name='marker_obj'>POW internment camp</marker>
<br/>
- Extract all prisoners present back to the Kestral.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
- Deploy marines to eliminate ZU turrets inside the POW camp to allow safe landing of Sea Goblin.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
- Sea Goblin will fly Osean Marines into the objective.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
- Wardog has requested that we look for a Captain Jack Bartlett among the prisoners inside the camp.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
- MH-60 Knighthawk holds 16.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;