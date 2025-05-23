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
Shit! We left our technicals and ammo caches in town for the night and then left to go party. But _______ broke opsec and posted a selfie to Instagram! The Takistani army is gonna find the vehicles. We gotta make this look we are doing this on purpose so we don't lose street cred.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Takistani Army is backed up by the Americans, They have some surplus Small Arms and vehicles. However they did just buy some CROWS MRAPs so watch out for those.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Just us
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
- Find some of our techincals and ammo caches(3 each)<br/>
- Clear <marker name='obj'>Timurkulay</marker><br/>
- Kill at least 1 CROWS MRAP coming from <marker name='pass'>the pass</marker><br/>
- Run away with your lives.<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Get our stuff back and use it too fight against the army, before we have to run away.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We have offroad trucks to move.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
None
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
None
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
There will be no resupply
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;