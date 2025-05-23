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
In our offensive against NATO we are going to be attacking the main airbase on Altis today. Our platoon will be creating a foothold in the town of Lakka for our tanks to move onto the airbase.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
We are facing the might of NATO on Altis. They will deploy heavy armored vehicles and aircraft to try and stop us.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We have an inifinte number of Xian's on our aircraft carrier, just a limited number of pilots.
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
- Eliminate the AA threat <marker name='obj1'>here</marker><br/>
- Eliminate the AA threat <marker name='obj2'>here</marker><br/>
- Take and hold the military installations in the town of <marker name='obj3'>Lakka</marker><br/>
- Repel the counter attack from the airbase<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
NATO is not expecting our attack, so we will have the element of suprise on our side. Use this to your advantage. The 2 AA outposts will be lightly guarded at the start of our operation.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We will use the Xian to insert our troops.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
The Xian is equiped to provide fire support.
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
Rearm and resupply is avalible back at the aircraft carrier.<br/><br/> The Xian fits 16 passengers.

"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;