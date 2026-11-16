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
1999, August
<br/>
Command wants a test of the XM29 OICW operating in a simulated war-game.
<br/>
Bundeswehr will be fulfilling the role of a rapidly entrenched OPFOR.
<br/>
OPFOR deployment will involve mobile units defending the town of <marker name='marker_wolt'>Woltersburg.</marker>
<br/>
A makeshift <marker name='marker_fob'>FOB</marker> storing vehicles located to the south-west of the operation zone.
<br/>
And the town of <marker name='marker_pie'>Pieperhofen</marker> where Bundeswehr units have been given the time to establish some defensive structures.
<br/>
Bundeswehr units being held in reserve until the assault of Pieperhofen begins will approach from the <marker name='marker_qrf'>east</marker> acting as a reinforcing QRF for the town.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Bundeswehr can be identified through their flecktarn camouflage and G36 rifles.
<br/>
The QRF forces are a pair of M113's and a pair of transport trucks.
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
- Assault <marker name='marker_wolt'>Woltersburg.</marker>
<br/>
- Assault <marker name='marker_fob'>FOB.</marker>
<br/>
- Capture and hold Assault <marker name='marker_pie'>Pieperhofen.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
- Approach objectives how platoon see's fit, using OICW grenade rounds to clear entrenched units.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
- Humvee's are available for rapid movement.
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
- XM29 OICW requires a rangefider key-bind under controls > configure addons > CUP weapons.
<br/>
- M1025 Humvee holds 4 total.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;