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
PltCo dropped their phone while lounging on a sun chair taking selfies, go get it back. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Apparently the selfies offended local CSAT very much, expect them to be garrisoned in and around West Sahatra. Last time we checked they were mostly just driving Karatels and LSVs, with maybe the odd Otokar.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon's worth of phone-retrievers.
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
Retrieve PltCo's phone from the sun chair. It's on the water tower by the <marker name='mk_construction'>construction site</marker>. Leave afterwards.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Get my damn phone back, I can't 2FA into the briefing system
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Sprint at top speed towards phone
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Shoot lots bullets
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Do not snoop on PltCo's lockscreen background
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Contact admins if anything is missing from your loadout.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;