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
Syndikat connections in Tanoa have been slowly building up an arsenal with this latest shipment being the biggest yet.
<br/>
Finally been given the go ahead to seize the ship and counter any Syndikat presence in the port.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Syndikat forces are highly irregular, wide range of small arms.
<br/>
Syndikat will likely try and counter our presence, expect a QRF of irregular vehicles.
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
- Seize cargo vessel currently docked in the <marker name='marker_obj'>industrial port.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Focus efforts on the western side of the port, securing the ship.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Using vehicles provided to transport platoon.
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
- 6 seats in offroad
<br/>
- 12 seats in van
<br/>
- 12 seats in M113
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;