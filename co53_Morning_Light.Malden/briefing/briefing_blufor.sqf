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
2025 04:30:00, CSAT Mountain Forces behind enemy lines on Malden.
<br/>
<br/>
We are taking part in an operation to strike behind NATO lines. We have been dropped onto the island and hiked overnight to make it to this location. As the morning breaks our attack will begin.
<br/>
<br/>
Our mission will be to draw out an armored contingent and destroy it. To do this we will be targeting a small command post with a raid before laying an ambush to attack the vehicles as they come to reinforce the outpost.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Malden is a staging ground for NATO and so there is a substantial military presence on the island. Infantry reinforcements should be coming from <markername='Dourdan'>Dourdan</marker> and
<markername='latrin'>La Trinité</marker>
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We have a UAV for providing recon updates to the platoon during the operation, it is focused on the northern section of the AO.
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
- Destroy the comms tower at <marker name='guran'>Guran</marker>
<br/>
<br/>
- Raid the outpost in <marker name='houdan'>Houdan</marker>
<br/>
<br/>
- Destroy the armored reinforcements
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Raid the outposts and set an ambush for the reinforcements.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We will be moving on foot.
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
There will be no resupply, Plt. Commander and Squad Leaders have access to explosive charges.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;