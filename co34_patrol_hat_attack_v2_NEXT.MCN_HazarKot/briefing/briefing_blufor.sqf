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
Local warlord has been building up their forces in the small settlement of <marker name='marker_wazghar'>Wazghar</marker> deep in enemy controlled territory.
<br/>
Warlord can be identified through golden ak, aviators and black beret.
<br/>
To reach this location special forces wear local garb over their BDUs to avoid detection.
<br/>
OPFOR use similar headwear and vests to friendly forces.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Heavy infantry presence with armed truck support.
<br/><br/>


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
- Eliminate warlord located in <marker name='marker_wazghar'>Wazghar.</marker> 
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Valley to the front is a direct path, valley to the east provides semi-dense tree cover.
<br/>
Mountains provide elevation but will be open to fire from multiple directions.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
-On foot movement.
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
- Be mindful of what your allies look like.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;