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
Good evening agents, I hope you all had a pleasant 18 hour flight. Central has sent us to investigate several anomalies in this area. A suspected UFO landing at a local farm and anonymous reports of strange new residents in the nearby town of Rannersdorf.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
In the event that a UFO *did* land at the farm, expect the residents to exibit hostile behavior, they're likely mind controlled. As far as Rannersdorf is concerned you and your agents should prepare to encounter a large number of well armed cultists, most likely Exalt.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Don't expect any support here, we're on our own.
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
Investigate the farm, neutralize all present threats. Following this, advance to Rannersdorf and locate cult resources, such as weapon caches, for recovery at a later time, neutralize all opposition.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Investigate Farm, Neutralize Threats, Locate Caches, Prosecute Hostiles.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the provided rental vehicles to reach the farm and then the town.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Not Applicable
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Locate and mark weapon caches or other items of interest.
"]];

/* ================================================================================
	ADMINISTRATION
3x vans that seat 11+1 driver, 1x sedan that seats 4, total of 40 available seats.
*/

private _administration = ["diary", ["Administration","
<br/>

"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;