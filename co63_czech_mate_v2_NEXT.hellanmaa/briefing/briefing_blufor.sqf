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
July, 2017
<br/>
Belarusian forces have no idea we have pushed this far into their territory.
<br/>
Intelligence reports an armed convoy will be moving through <marker name='marker_road'>this area</marker> soon, you will intercept.
<br/>
Once this convoy is eliminated, platoon will assault <marker name='marker_town'>Taipale</marker> and <marker name='marker_town1'>Luoma.</marker>

<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Belarusian forces are in the process of modernising, their uniforms are primarily M-81 style camoflage with imported Russian EMR as vests.
<br/>
The convoy you will be ambushing is led by two T-72 tanks, BTRs and Urals making up the rear.
<br/>
The treeline <marker name='marker_fort'>west</marker> of Taipale has light fortifications, easy to punch through with Sierra support.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Sierra has access to BVP-2, Pandur II's or T-72M4CZ's.
<br/>
Czech T-72B IFF is determined by different camo and Czech flag.
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
- Ambush convoy taking this <marker name='marker_road'>road.</marker>
<br/>
- Assault the town of <marker name='marker_town'>Taipale.</marker>
<br/>
- Assault the town of <marker name='marker_town1'>Luoma.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Ambushing whilst in the open field will be most effective.
<br/>
Sierra's will rely on infantry for latter half of the mission.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Platoon is free to use transports or move on foot.
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
Dingo 2's hold 6.
<br/>
Tatra's hold 13.
<br/>
Pandur II's hold 11.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;