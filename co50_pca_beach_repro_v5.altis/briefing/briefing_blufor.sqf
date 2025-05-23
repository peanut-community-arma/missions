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
Something about FIA rebels supported by the brits or something
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The AAF will likely have an amphibious and armoured QRF, they have an AA gun and a AT emplacement too
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
Go steal a truck with some stingers in it, its in the marked area. Bring it back to were we started. Some PMCs couldn’t do this so I guess we got to do it, I’m too lazy to write more details.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
It is recommended that you use the MMG team(s) to cover the platoons initial push across the open terrain.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You probably don’t want to walk across the open terrain NGL
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Try to avoid the truck getting blown up
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The L1A1 sights are ranged in yard so your ranging will look janky lmao 
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;