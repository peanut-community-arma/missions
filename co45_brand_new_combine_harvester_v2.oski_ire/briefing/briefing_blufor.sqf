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
We've saved up for months to buy a brand new* combine harvester** for Command. She's a lovely blue model, practically brand new, only slight wear marks. However, some absolute c***s have stolen it. We're going to steal it back, and then fight off whoever gets too close. 
<br/><br/>
* second-hand<br/>
** tractor
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
A disturbingly large (~100) group of camo-wearing tractor stealing scum.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
20-40 madlads
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
<marker name='mk_obj'>Pick 'er up</marker> and <marker name='mk_church'>drive 'er home</marker>. Make sure she doesn't explode on the way back.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
GIT HER BACK
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
walk then drive
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
steal all the other vehicles in the barn
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
You are, in fact, more cool if you do this whole thing with the Slamfire only
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;