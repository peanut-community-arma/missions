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
Since the invasion has begun, X-COM intelligence has been tracking an unknown organization that has been growing in scale and frequently active near landing sites. we have previously
not priortized engaging with them but that has changed due to their apparent testing of a high energy alien device. They have a large presence on the greek island of altis and appear to 
be conductiong tests within the stadium north-east of Kavala.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
unknown, expect well armed infantry and light armored vehicles, possible counter attacks from the south-west and east.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
One platoon of X-COM operatives
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
Capture and secure the experiment site at the stadium
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The sole objective of this operation is to secure the objective site so that the device can be extracted undamaged. Clear the objective site and defend against potential counter attacks.
Should the device be destroyed or holding the site is untennable, extract from the island.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Final aproach on foot
<br/><br/>


<font size='18'>SPECIAL TASKS</font>
<br/>
Our commander has told us to exersice restraint when using explosives
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/


player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;