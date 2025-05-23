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
We have to get the Death Star plans and escape with them. They are being stored in the Mosque of Zargabad, however the city is crawling with storm troopers. We will have to get those plans out at any cost.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The Empire. Lots of Stormtroopers, like a fuck ton. Mostly armed with blaster pistols, there are a few specialists will have heavy blasters.
<br/>
Darth Vader is in the solar system and we will be unable to hurt him if he shows up.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Our plucky band of rebels.
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
-Get the Death Star plans (Banana) from <marker name='obj1'>here</marker><br/>
-Get the fuel truck from <marker name='obj2'>here</marker><br/>
-Escape using some of the space ships <marker name='obj3'>here</marker><br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We will need to move through the city fast and get out before we are overwhelemed.
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
Use ACE interact on the fuel truck to pick up the fuel nozzel, and then walk up to the plane and left click when prompted. The refueling will be slow.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;