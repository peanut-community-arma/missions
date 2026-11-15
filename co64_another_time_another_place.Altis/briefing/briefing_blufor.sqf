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
July, 2035
<br/>
The CSAT push into Europe is beginning to stall, command wants the island of Lemnos to clear the way for a flanking force to break this stalemate.
<br/>
CSAT armour will cut the south-east peninsula of Lemnos in half, and establishing a foothold in the city of <marker name='marker_obj'>Pyrgos.</marker>
<br/>
Known NATO positions include the town of <marker name='marker_town'>Dorida</marker> and a <marker name='marker_fob'>FOB</marker> located to the north-east of Pyrgos.
<br/>
Beware the mountains, they've been fortified with armour and anti-tank weaponry.
<br/>
A larger contingent of NATO forces lies at the <marker name='marker_air'>airfield</marker> at the centre of Lemnos, expect a QRF of Osprey VTOL aircraft and a <marker name='marker_qrf'>convoy</marker> of armour from the north.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
NATO forces have long been neglected, using an assortment of European equipment.
<br/>
Fielding Fennek's, Badger IFV's and Leopards.
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
- Control <marker name='marker_obj'>Pyrgos.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Using infantry to screen the tanks from launchers.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Motorised infantry to cross long distances.
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
- M-ATV holds 4.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;