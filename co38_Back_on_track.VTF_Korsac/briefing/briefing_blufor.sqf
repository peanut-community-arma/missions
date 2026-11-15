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
6:00:00 June 10th 2027, AFU 17th Heavy Armor Brigade<br/>
<br/>
After years of static warfare, the Russians are beginning to collapse. Today marks the beginning of a new offensive push in which we will take a large part. We have achieved a breakthrough and are going to exploit it to force the russians to commit their last tanks for a battle. You are going to take control of a <marker name='obj'>repair point</marker> and create a beachhead that can be exploited further.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The Russians are unorganized and undisciplined, Infantry may just retreat when we encounter them. However their high command will be looking to stop our attack to save face, meaning they will use up the rest of their stockpiles of vehicles. Expect both soviet and modern vehicles.
<br/><br/>
Enemy Strongholds are marked on your map, Expect AA positions in these locations.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
There is friendly artillery shelling enemy positions and you will be relieved by friendly forces at the end of the mission.
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
-Secure the <marker name='obj'>Repair point</marker><br/>
-Defend against counterattack<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Attack the <markername='obj'>repair point</marker> and then establish a defense to repel enemy counter attacks. We expect the majority of the counter attack will come from <marker name='obj2'>Nozyba</marker>.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
We will have a FAC to assit with Air support and there will be artillery harrasing enemy backlines.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Destroy as many T-90's as possible to dwindle their supplies.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
All units are given the doctor role and basic engineers. Basic Crew have been provided with full medical loads. All forces have been issued toolkits.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;