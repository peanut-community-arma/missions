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
Intelligence reveals that a Separatist's Spetsnaz unit has managed to infiltrate into a nearby <marker name = 'm_obj1'>village</marker> and set up shop with several heavy mortars. Find and destroy those mortars before they can be properly set up to engage our troops.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Approximately several platoons of Separatist Spetsnaz units are present in the AO, they are lightly armored but are much more mobile in the forest along with access to heavy caliber weapons.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of USMC soldiers.
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
Find and destroy three mortar site around <marker name = 'm_obj1'>here</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We have no information with regards to the exact location of each mortar site but luckily the search area is rather limited. Spread out our forces and sweep the area, clear out any resistances as you go. It is likely that there are OPFOR forward elements that are patrolling the area, be prepared to be engaged before you arrive at our search area.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You are moving on foot. Approach the search area from the South.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
N/A.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
N/A.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;