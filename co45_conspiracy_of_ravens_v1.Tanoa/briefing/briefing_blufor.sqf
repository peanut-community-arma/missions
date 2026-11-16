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
May, 2032
<br/>
The local government has requested the military force of Raven Security to handle their local insurgency problem.
<br/>
A problem that the Russian government had a hand in creating to gain a presence here in the first place, now we need to cover our tracks.
<br/>
Start of the operation will be to remove the insurgents ability to communicate our presence elsewhere, destroy the <marker name='marker_tower'>radio tower.</marker>
<br/>
The port town of <marker name='marker_ou'>Oumere</marker> was a key hub in the smuggling of arms into the island, there will be a depot somewhere in the town Raven Security must destroy.
<br/>
In the town of <marker name='marker_lug'>Luganville</marker> our government communicated with insurgent elements, collect the intelligence that is located in the red roofed two-story.
<br/>
And in the town of <marker name='marker_nan'>Nandai</marker> find the personal beach-front property of the head of the insurgency and kill them, identifiable from their aviators, beret and golden AK.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Insurgent forces are a mix of civilian clothing and paramilitary garb, armed with Soviet surplus of 7.62 AKM.
<br/>
Even with the radio tower destroyed, near by units can't mistake gunfire and a QRF of technicals will likely respond to any commotion.
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
- Destroy the <marker name='marker_tower'>radio tower.</marker>
<br/>
- Destroy the depot located in the town of <marker name='marker_ou'>Oumere</marker>
<br/>
- Collect intel in the town of <marker name='marker_lug'>Luganville.</marker>
<br/>
- Kill the HVT in the town of <marker name='marker_nan'>Nandai.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Platoon is free to approach objectives however they see fit.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Raven Security has access to KamAZ transports and armoured Galkin for rapid movements.
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
- Galkin holds 5 total.
<br/>
- KamAZ holds 17 total.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;