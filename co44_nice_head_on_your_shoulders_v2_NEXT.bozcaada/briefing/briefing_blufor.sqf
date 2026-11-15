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
unlist W<br/><br/>
Sea Raiders have landed at <marker name='marker_town'>Merkez</marker> and pillaged the town. They have taken hostages and are holding them at the <marker name='marker_kart'>go-kart track</marker>, the <marker name='marker_hospital'>hospital</marker>, the <marker name='marker_castle'>castle</marker>, and in their landing ship. Our mission is to end their raid and save the hostages.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The Sea Raiders have taken the town and surrounding <marker name='marker_suburb'>areas</marker>. They use similiar weapons as us and use pickup trucks armed with various heavy weaponry including HMGs, rocket launchers, and autocannons. Their LST is armed with a dual autocannon and is likely at or near the docks by the castle.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
None.
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
Clear enemy forces from the AO and save the hostages, which there are 10 of.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Go in, shoot the Sea Raiders, and save the hostages.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We have transport vehicles that can be filled with ammo and medical supplies.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
None.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
None.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The Fennek seats 4, each KAMAZ truck seats 17. They are already medical supplies in them, you can add more and also ammo.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;