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
2029,
<br/>
The Republic of Sotoa has carried out a surprise attack on the Federation of Central Usea.
<br/>
They have captured many of the FCU's own airbases and are now operating out of them.
<br/>
On this island there is an <marker name='marker_obj'>uplink terminal</marker> that contains sensitive information on the Sotoan war effort.
<br/>
Under the cover of our airforce you will retrieve this intel, the cargo tower located at this objective cannot be destroyed.
<br/>
Blue flag teleports platoon to <marker name='marker_insert'>this point.</marker>
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The Republic of Sotoa have a military far more advanced than our own, they're armed with bullpup rifles and wear semi-arid camouflage.
<br/>
Expect many vehicles present in the area of operations, auto-cannon cars and main battle tanks have been spotted.
<br/>
There are also two anti-air vehicles located in the <marker name='marker_townaa'>objective town</marker> and <marker name='marker_airaa'>airfield.</marker>
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
- Collect laptop present in the cargo tower at the <marker name='marker_obj'>objective.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Approach objective, using air-assets to eliminate targets of opportunity.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
On foot movement.
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
- Blue flag teleports to mission start.
<br/>
- First time testing aircraft resup and rearm script attached to triggers on carrier.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;