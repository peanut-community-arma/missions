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
1989 05:00:00, US Army in germany.
<br/>
<br/>
We were flying overnight to the border between east and west germany when the our pilots fell asleep and flew into east german airspace. Our plane was hit by an igla that took out our engines and forced a crash landing. During the crash our GPS systems were broken and we are now lost in the woods.
<br/>
<br/>
We have made radio contact with Flughafen Air base and they are sending out helicopter gunships to lead us back across the river to friendly territory.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The soviets did not expect any conflict so most soldiers will be stationed in towns, they do have a mechanized division with BTR’s and BMP’s that will be deployed to hunt us down.
<br/>
<br/>
After shooting down one plane the soviets will be sending igla teams from their main base in <marker name='ros'>Rosche</marker><br/> to stop any other air reinforcement.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We will have helicopter support, we should try to use smoke to mark our location and the location of enemies
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
- Make it across the river and back to <marker name='flug'>Flughafen</marker><br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We will have to use the assistance of the helicopter to locate where we are and we will have to move fast to not be trapped behind soviet lines. Stick to the forests, avoid towns and paved roads.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We will be moving on foot
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
There are 2 AH-1Z Cobras with: 1200 cannon, 8 Hellfire, 38 Hydra’s and 2 stingers
<br/>
<br/>
And 2 Little birds with: 6000 Minigun and 38 Hydra’s
<br/>
<br/>
There is Fuel and repairs for the helicopters at base
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;