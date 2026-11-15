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
The Russian's have installed S-400 anti-air missile systems on captured oil rigs on our coastline.
<br/>
Command needs a gap opened in the Russian air-net under tight time constraints, in under 8 minutes a flight of friendly Su-25 Frogfoots will be flying through heading towards greater targets on the mainland.
<br/>
Once the S-400's are destroyed you are to retreat just as quickly as your arrival, there will be a QRF of Superhinds that will demolish the rig's if they have to, estimates have them arriving after 10 minutes.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Russian EMR infantry presence occupying the rigs with white arms bands.
<br/>
A single S-400 battery per rig.
<br/>
QRF of two Superhinds, don't be there when they arrive.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Su-25 Frogfoots will be flying overhead, we don't have many left so keep them alive.
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
- Destroy S-400 at <marker name='marker_rig1'>rig-1.</marker>
<br/>
- Destroy S-400 at <marker name='marker_rig2'>rig-2.</marker>
<br/>
- Exacuate under 10 minutes.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Split platoon between the two rigs to complete mission quickly.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Using rhib's to access rigs and moving through them on foot.
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
- Rhib's hold 13
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;