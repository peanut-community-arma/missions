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
With CHDKZ militant now running rampant across all major cities of Chernarus after a series of astonishing victories over the government forces. The responsibility now lies on NATO to intervene the situation at once before it gets fully out of control. Task forces are deployed across the war torn nation in preparation for a major allied naval landing — your element in particular, are assigned with shutting down the power generation in Elektrozavodsk, which serves as the main power supply line for entire coastline of Chernarus, it's disablement will undoubtedly cripple CHDKZ's fighting capacities and make our eventual offensive easier.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Unknown numbers of CHDKZ militant, expect a large forces roaming the cities with more in reinforcement after being alerted of your presence.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a full platoon of US Navy Seal Operatives.
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
-Shutdown power at <marker name = 'm_obj1'>Elektrozavodsk Power Plant</marker>.
<br/><br/>
-EXFIL to a safe location.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Speed is of the essence for this operation, the CHDKZ will respond with increasing ferocity the longer you linger in the area — complete the objectives and get the hell out before you are overwhelmed.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Make landing on the beachhead and advance on foot through the city of Elektrozavodsk for your assigned objectives.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
None available.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
-Search and destroy any high value CHDKZ asset within the <marker name = 'm_obj2'>warehouse complex</marker>.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
-Your backpack will contain ballistic vest in which you can switch over from your rebreather upon reaching land.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;