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
RACS forces have been occupying this region for too long. They currently control the main river in the area giving them a major advantage in strategic and tactical operations.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Expect mostly infantry and light vehicle contact, however they will likely anything they have as us, so don’t be surprised if some heavy stuff shows up. RACS use American equipment so expect them to be fairly well equipped.
<br/>
Vehicles will likely have a mix of M2 and mk19s. 
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Its just us on this operation.
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
Our first objective to regain control of the area is to disrupt their control of the river. We will be taking the small river village. This will give us a beachhead for future operations.  
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Nothing fancy, just slowly push up and engage contact as seen.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
walk

"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Make sure to bring a lot of ilium flairs they will be needed, note the Mk 1 and NSP-N grenades are ilium flairs.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;