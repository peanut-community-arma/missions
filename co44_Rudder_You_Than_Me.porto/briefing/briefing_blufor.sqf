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
The Kingdom of Sahrani over the past months has been engaged in the sinking of commercial shipping over the past months despite their denial to the contrary. It has been determined to be from ASM batteries located in Porto.
<br/>
<br/>
We will be heading into Porto to neutralize the trio of ASM batteries located on the island in order to bring an end to the sinking of commercial shipping within the area.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The Royal Army Corps of Sahrani's presence on Porto has usually been in the form of militias, so expect lightly armed and under-equipped RACS militias on the island, including some Humvees.
<br/><br/>
Nonetheless, there have been some signs of additional forces on the island as of late, including the presence of a landing craft in dock, so modernized elements and heavier armed elements including LAVs may be present on the island.
<br/><br/>
You have a limited time to get this done. After a certain point, RACS reinforcements from Sahrani itself, including attack and transport helicopters *will* arrive.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Friendly forces consist of a stealth frigate which will be deploying us. It will not be able to provide fire support to keep itself hidden.
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
The objective for our mission is to neutralize three ASM sites present on the island of Porto and proceed to exfil from the island south.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Destroy all three ASM batteries on the island of Porto and exfil.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Movement will be via boat into Porto to neutralize the ASM batteries and then exfil by boat. Do not enter the town of Porto itself, which is where the local garrison is located.
<br/><br/>

<font size='18'>AVAILABLE EQUIPMENT</font>
<br/>
Four unarmed RHIBs and two armed RHIBs are available for movement into the island of Porto.
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
Each of the unarmed RHIBs can fit eight people, and each of the armed RHIBs can fit twelve people. Two unarmed and one armed are located on each side of the ship.
<br/><br/>
Combat engineers are equipped with explosives to destroy the ASM batteries.
<br/><br/>
For grenadiers, HEDP grenades would be useful on this mission.
<br/><br/>
To be able to read the map at night, when you open your map, go to self-interaction to turn flashlight on, and you can read the map.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;