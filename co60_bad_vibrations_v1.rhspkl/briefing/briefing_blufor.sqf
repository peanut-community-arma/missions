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
1971, September
<br/>
PAVN forces have established themselves in our old positions, and high command are not content with the damage that the airstrikes and shelling have done.
<br/>
So they're sending in the air-cav to carry out search and destroy across three objectives.
<br/>
This means landing, eliminating majority of OPFOR presence in the area and moving on to the next, rinse, repeat.
<br/>
The three objectives are as follows.
<br/>
PAVN forces have dug themselves a little <marker name='marker_obs'>fort</marker> ontop of a hill that overlooks the low-ground and rivers to the south in the Chamkar region.
<br/>
Clearing out the OPFOR in the <marker name='marker_obs'>fort</marker> itself is priority, the towns that surround the hill are of little importance.
<br/>
Second is the bombed out compound of <marker name='marker_chez'>Chez Georgette</marker> to the north-west of an old <marker name='marker_fire'>firebase</marker>.
<br/>
Right now PAVN forces are sifting through the wrecks of what was once a key depot that connects to the roads that run along the river, disrupt them and move on.
<br/>
It would be best to avoid the <marker name='marker_fire'>firebase</marker> itself, that position would be impossible to assault from the ground without taking heavy casualties.
<br/>
Final objective will be their <marker name='marker_nw'>communications hub</marker> to the north-west, it's an older position that has established concrete bunkers scattered across the area.
<br/>
Aircraft observation confirms each objective has one ZU anti-air turret, and have marked them on your map with a red triangle.
<br/>
Command is not looking for the complete elimination of all PAVN forces on the ground, only the majority that are stationed within each objective.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
PAVN forces wear olive drab uniforms, armed with Type 56 7.62 rifles.
<br/>
Expect a range of vehicles from transport BTR-40's to the Type 59 tank, based on the Soviet T-55 model.
<br/>
Each objective also has a static ZU turret, observation planes have marked them on the map with a red triangle.
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
- Assault and eliminate OPFOR presence in the <marker name='marker_obs'>fort</marker> overwatching the Chamkar region.
<br/>
- Assault and eliminate OPFOR presence in <marker name='marker_chez'>Chez Georgette.</marker>
<br/>
- Assault and eliminate OPFOR presence in <marker name='marker_nw'>north-west communications hub.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Platoon is free to move between objectives how they see fit, mission success can be gauged by OPFOR presence within each objective, does not need to be 100% clear to be considered a complete objective.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Platoon will use helicopters to move between each objective.
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
- UH-1H helicopter holds 12 total.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;