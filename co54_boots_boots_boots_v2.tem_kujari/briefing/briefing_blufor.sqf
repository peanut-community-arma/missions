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
2032, April
<br/>
The Canton Protocol Strategic Alliance Treaty has been on a blitz of new member states in Africa.
<br/>
Now there's a hundred fires across a dozen nations to put out.
<br/>
A vicious cycle of counter-insurgency deployment and re-deployment, you no longer know where or who you're fighting.
<br/>
Today you're assaulting three towns.
<br/>
The village of <marker name='marker_wond'>Wondori</marker> the edge of insurgent control.
<br/>
The town of <marker name='marker_dam'>Damaram,</marker> expect OPFOR to be mobilised by the time you approach the town, expect a QRF from the south.
<br/>
And the village of <marker name='marker_mimi'>Mimi,</marker> insurgent forces are using the village as a logistics hub, likely dug in forces.
<br/>
Recon has provided us with accurate concentrations of OPFOR garrisons, marked with a red hash on the map.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Insurgent's wearing civilian clothing, using Soviet surplus equipment.
<br/>
Fielding predominantly soft-skin vehicles, technicals and limited number of BTR's.
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
- Assault <marker name='marker_wond'>Wondori.</marker>
<br/>
- Assault <marker name='marker_dam'>Damaram.</marker>
<br/>
- Take and hold <marker name='marker_mimi'>Mimi.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Assault each town, defending from any potential QRF, capturing <marker name='marker_mimi'>Mimi.</marker>
<br/>
If air-support is on station, keep destruction of local infrastructure to a minimum.

<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Platoon uses GAZ Tigr's to rapidly move between objectives.
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
- GAZ Tigr holds 9 total.
<br/>
- Mi-48 holds 10 total.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;