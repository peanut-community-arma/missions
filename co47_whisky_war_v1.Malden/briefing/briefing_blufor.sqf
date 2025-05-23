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
The owner of the Hans Island <marker name='marker_whisky'>whisky distillery</marker>, Mr. Malden, was taken prisoner by the Danish Rebel Army. Unfortunately this happened while the Prime Minister of Canada and the King of Denmark were with a news crew filming a documentary on the new joint <marker name='marker_whisky'>Hans Island Business Park</marker>. Now our Canadian Army unit has to go rescue them. More importantly, we must secure the whisky before the rebels are able to move it off the island. The whisky will be in a large orange whisky containing device.
<br/><br/>
Arctic fog around the island is making navigation impossible so the Royal Danish Army, Air Force, and Canadian Army will be unable to send reinforcements.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
At least one company of Danish Rebel Army infantry, with at least one CV90 IFV somewhere in the <marker name='marker_whisky'>Hans Island Business Park</marker>. They might fly in reinforcements from <marker name='marker_greenland'>Greenland</marker> despite the fog.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
It's just our platoon, reinforcements from <marker name='marker_ellesmere'>Ellesmere Island</marker> are unavailable due to the fog.
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
Remove the rebels from the <marker name='marker_whisky'>Hans Island Business Park</marker>, rescue the six hostages in the <marker name='marker_whisky'>distillery</marker>, and secure the large orange whisky containing device (it's around chest height).
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Save the whisky from the rebels. Oh, and also the people they took hostage, they seem important.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
The <marker name='marker_whisky'>Hans Island Business Park</marker> is at the bottom of a bowl shaped area, there are many rock outcroppings that can be used as cover as you advance inwards on foot.
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
If you think the hostages aren't safe where you find them you can load them into the nearby news van which hopefully won't explode mysteriously.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;