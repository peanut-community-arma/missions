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
4:55:00 April 17th 2020, Thorin’s Company<br/>
<br/>
In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to eat: it was a hobbit-hole, and that means comfort…<br/><br/>

We have made the journey to the <marker name='MM'>Misty Mountain</marker> and are ready to make the final assault to reclaim Thorin’s fortune. Our Hobbit with a magic ring has confirmed that the Smaug PMC and Army Forces under the command of General Bolg occupy the valley and the fortress. We will assault up the valley and into the fortress, Secure the King’s Fortune and extract.

<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The enemy is made up of 2 forces:<br/>
General Bolg’s army and the Smaug PMC company.<br/><br/>

General Bolg’s army is armed by old soviet weapons and no body armor, while the Smaug PMC’s have access to modern firearms and armor. Both forces have no substantial armored force in the region but Smaug may fly by if he hears that we are trying to steal back our gold.

<br/><br/>They heavily occupy the <marker name='Upper Valley'>Upper Valley</marker> and are swarming on the mountain.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We  will have a Friendly wizard support in retaking our gold
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
-Take back the 3 crates of treasure from <marker name='obj1'>Wazghar</marker><br/>
-Extract to a safe location.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Clear a path up the Valley and use the Namer to extract the boxes full of treasure
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We have DAGOR jeeps for movement aswell as some space in the rear of the Namer
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Use the Namer's 50. Cal and 40mm Grenades
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Armed DAGOR: 1 Driver, 1 Gunner, 1 Commander, 2 Passengers (5 total)<br/>
Unarmed DAGOR: 1 Driver, 1 Gunner, 5 Passengers (7 total)<br/>
Namer: 1 Driver, 1 Gunner, 1 Commander, 8 Passengers (11 total)<br/>
<br/>
Vehicle Repair/Refuel/Rearm is avalible at the spawn.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;