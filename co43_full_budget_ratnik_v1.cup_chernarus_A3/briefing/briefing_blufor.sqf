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
June, 2015
<br/>
Chernarus nationals aligned with the government-backed anti-Russian National Party carried out a terror attack in the Russian Federation.
<br/>
To finally put an end to this threat multiple units of the armed forces have been mobilised to push into Chernarus and capture key areas of the nation.
<br/>
Our motorised force have been given the task of bypassing the primary push into the town of <marker name='marker_nov'>Novaya Petrovka.</marker>
<br/>
The goal of bypassing this town is the capture of the north-most <marker name='marker_air'>military airfield</marker> of the region and it's large scale <marker name='marker_rad'>Bashnya radar installation.</marker>
<br/>
The Chernarus Defence Force are aware of the build-up as we publically advertised the training exercises along the border, but will be caught off-guard by the force of our attack.
<br/>
There'll be a smaller <marker name='marker_bord'>border guard post</marker> along our movement, but expect little to be stationed there.
<br/>
We expect there to be no military presence in the town of <marker name='marker_sin'>Sinystok,</marker> but it's likely that CDF units heading towards <marker name='marker_nov'>Novaya Petrovka</marker> will be reassigned to counter our push.
<br/>
The same can be said for the town of <marker name='marker_vav'>Vavilovo,</marker> where units held in reserve at the <marker name='marker_air'>military airfield</marker> will be moved from their posts to take us head-on.
<br/>
This <marker name='marker_air'>military airfield</marker> is important enough to the CDF where they'll be forced to pull some of their limited T-72 reserves to attempt to dislodge us.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The CDF are operating with Soviet surplus, AK-74 rifles.
<br/>
Primary armour threat will be the BTR-60 and BTR-80 fleet, with the primary anti-armour threat coming from SPG UAZ's and shoulder launched RPG's.
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
- Capture the <marker name='marker_rad'>Bashnya radar installation.</marker>
<br/>
- Capture the <marker name='marker_air'>military airfield.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Keeping awareness of reinforcing CDF, push towards the airfield and capture it.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use BTR-80A's and GAZ Tigr's to move swiftly towards the objectives.
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
- GAZ Tigr holds 7.
<br/>
- BTR-80A holds 17.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;