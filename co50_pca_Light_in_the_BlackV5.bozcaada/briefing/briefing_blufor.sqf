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
The situation in Bozcaada has been deteriorating in the past few weeks with skirmishes breaking out in the region. We have been deployed here to ensure that the armistice is being upheld. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
There are a multiple militia groups in this area, mostly equipped with Soviet equipment, out intel indicates that they do not have any armoured vehicles 
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
About a platoon of Canadian Peacekeepers from the R22eR
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
We have been asked to investigate points Rocket and Flower nearby because of recent disturbances in the area, officially we are going in to talk with the local militia groups and ensure they are following the armistice agreement. However, it is unlikely they will be interested in negotiation, but the standard ROE still holds true do not fire unless fired upon. 
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
walk
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
nothing special to note
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;