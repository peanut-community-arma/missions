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
Some two weeks ago, the island of Halsoy suffered some kind of chemical release, that saw both existing Norwegian aid and IDAP coming in for assistance. As the continued aid has been ongoing, for the past seventy-two hours, there has been no contact with existing Norwegian military assets, aid, or IDAP elements on the island. We have been tasked with checking out both and make sure it is nothing more nefarious.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
It is unknown whether there are any enemy forces to begin with, considering the continued loss of communications on the island for the past seventy-two hours. There were rumors of KBS Sécurité on the island, but at this point we have nothing explicitly firm backing it up.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Friendly forces consist of a Norwegian Marine platoon with attached vehicles.
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
Mission objective will be to regain contact to existing Norwegian elements on the island and to check in with the local IDAP camp.
<br/>
Because of the continued chemicals present, gas masks have been supplied (and in your backpack), and will be required to be worn while on the island.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Make due haste in landing on Halsoy, and move at possible speed towards the IDAP Aid Camp.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Movement will be to land near Hellevikgarden, check the local barracks for any friendly military forces, and proceed towards the IDAP Aid Camp to check it out.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Fire support is available from the attached Badger and AAVs we have available.
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
Somehow, logistics fucked up and instead of the NVGs we were supposed to get, we got NVG scopes. Unfortunately, no chance of fixing it now.
<br/>
<br/>
With thanks to diwako for developing the CBRN script.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;