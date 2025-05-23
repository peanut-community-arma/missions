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
Holotape log, 15:00 December 8th, 2290.<br/>About one hour ago our vertibird was shot down roughly 100 miles south of Portland. My platoon and I were en route to reinforce a FOB to the South West of Salem when all hell broke loose. One moment I'm listening to the near deafening droning of the vertibird, the next it's all explosions, smoke and alarms. My soldiers and I are lucky we survived the crash, but the aircrew are all dead. This thing isn't repairable and even if it was, none of us know how to fly it, so our best option is to hike back to Salem to the North East, and maybe we can take out whatever shot us down. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
It's likely we're dealing with a faction calling themselves the New People's Liberation Army, or NPLA for short. They're a major regional power that's based their entire government off of propaganda and relics found in some pre-war museum. In spite of this they should be treated as a near-peer force, they have a strong industrial base capable of producing small-arms and vehicles similar to our own. This morning's briefing mentioned something about a roughly company sized force operating in the area, I'll be honest I wasn't paying much attention so we'd best be ready for anything.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We can't expect any help here, it'll be a few hours before anyone notices we haven't arrived at our destination.
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
Egress to the North East, find and neutralize the AAA threat.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Prepare yourselves for a fight, the enemy is not to be underestimated, they're well armed and well trained.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We're not sure what sort of terrain is out there, be on the lookout for good cover as you maneuver.
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
N/A
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;