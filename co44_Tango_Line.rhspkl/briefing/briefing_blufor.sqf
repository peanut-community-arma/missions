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
The Tango Line is a vital line of defense for the Erusian forces on the eastern mainland. Istas Fortress is a strategic foothold on that line. It utilizes unique terrain features that make it virtually impregnable. ISAF airstrikes are hitting the fortress while ISAF ground forces move to secure key logistic routes around the fortress and pierce the Tango Line. One vital logistic route for supplying the fortress is the bridge located in the village of <marker name='OBJ2'>PsarKrom<marker>. This route needs to come under our control so the fortress can be taken.
<br/><br/>

<font size='18'>TIME</font>
<br/>
The time is around noon.
<br/><br/>

<font size='18'>TERRIAN AND WEATHER</font>
<br/>
Terrian is hilly alongside the river with thick jungle on either side. Weather should start clear but a rainstorm is likely to come in a little past noon.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Erusian forces in the area are entrenched but are expecting an attack from the west so may be unprepared. BTR-80s have been spotted in the area alongside river boat patrols but the terrian has kept most heavy vehicles out of the area due to mud. The west side of the river is under their control so be wary of being engaged across the rivers by patrols.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
ISAF airstrikes are taking place west of the AO and should not interfere with the operation.
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
Your mission is to clear the village of <marker name='OBJ1'>Kanleng Sreuv Samnang<marker> then secure the <marker name='OBJ2'>PsarKrom<marker> bridge and the entrenched <marker name='OBJ3'>Hill 115<marker> west of the bridge.  
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
N/A
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
N/A
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
N/A
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The majority of the transport vehicles are unarmed but two with M2's and one with a Mk19 have been provided for this operation.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;