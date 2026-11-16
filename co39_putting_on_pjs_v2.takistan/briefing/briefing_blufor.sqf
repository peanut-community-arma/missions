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
2005, June
<br/>
A UH-60 flight never reached it's destination, assumption is a crashlanding, potentially from hostile ground fire.
<br/>
It is the task of USAF Pararescue to locate the crash-site and recover the two pilots that were on-board the UH-60.
<br/>
The UH-60's flight-path is marked with the blue hashed line through the Takistan valley.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
The UH-60 flight held only a pilot and co-pilot.
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
- Locate UH-60 crash-site.
<br/>
- Locate and recover the two pilots onboard.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Follow the flight path of the missing UH-60, locate the crash-site and find the two missing pilots.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
The majority of this operation will be carried out from helicopter, with PJ forces dismounting to search for the two mission pilots.
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
- UH-60 holds 17 total.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;