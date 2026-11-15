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
May, 1982
<br/>
British forces will be carrying out a landing operation on the <marker name='marker_landing'>north-east</marker> of Altis to secure a beachhead.
<br/>
This will involve the capture of the dirt airstrip and multiple towns to act as buffers to Argentinian counter attacks.
<br/>
Expecting the RAF, Argentinian forces have established multiple anti-air guns across the frontline.
<br/>
There is a small <marker name='marker_depot'>depot</marker> in Molos that can provide transport for platoon.
<br/>
Argentinian forces have built a small <marker name='marker_fort'>fort</marker> on top of a hill overwatching Sofia.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Argentinian forces are quite similar to British forces, armed with FAL's and OD Green uniforms.
<br/>
Argentina has a limited number of AAV's they will deploy against us, as well as KrAZ truck transports and M151 armed jeeps.
<br/>
Argentinian air fleet comprises of UH-1H helicopters, Puma transports and a Chinook.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Harrier Jumpjets in support.
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
- Capture <marker name='marker_airfield'>airfield.</marker>
<br/>
- Capture <marker name='marker_molos'>Molos.</marker>
<br/>
- Capture <marker name='marker_sofia'>Sofia.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
- Capturing objectives with Harrier's providing fire support for long distance and heavy targets.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
- Moving on foot after initial landing, capturing transports at <marker name='marker_depot'>Molos.</marker>
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
- Flag on carrier will teleport players to the landing.
<br/>
- Harrier's loadout of 2x Mk82 unguided bombs, 28x Hydra 70 HE rockets.
<br/>
- Harrier's can rearmed at the rear of the carrier, Maintenance completed! will be visible once rearm is complete.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;