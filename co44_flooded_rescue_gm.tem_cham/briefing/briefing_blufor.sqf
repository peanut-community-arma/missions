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
Time: 1600   Weather: Rain Storm
<br/><br/>
The district of Cham had been heavily flooded after Russian forces blew up the local dam. This problem is further exacerbated by on-going rainstorm as we have this serious humanitarian disaster unfolding before us. You are responding immediately to relief the village of Kritzenast and evacuate any remaining trapped refugees that remains. Although IDAP had set up shelters there they were forced out after the Russians took hold of the village.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
We are facing off against RUAF, heavy flooding in the area has rendered most armored vehicles useless.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of US Navy SOF.
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
Find and evacuate refugees in IDAP shelters <marker name = 'm_obj1'>here</marker>, <marker name = 'm_obj2'>here</marker>, and <marker name = 'm_obj3'>here</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Navigate through the flooded riverbed towards Kritzenast. Be on the lookout for any forward RUAF elements that may set up positions leading into the village. The village itself are likely held by a sizable forces and you should expect QRFs flanking from the West and Southeast of Kritzenast.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You are inserting via RHIB, proceed through the flooded riverbed with caution. The driver's view are hindered severely and the front gunner should be responsible with assisting on the navigation.
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
<font size='18'>TRANSPORT CAPACITY</font>
<br/>
Each RHIB can hold up to 11 person (9 passengers, 1 gunner, 1 driver).
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;