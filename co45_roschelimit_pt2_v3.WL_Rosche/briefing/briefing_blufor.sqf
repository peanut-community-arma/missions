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
February 1969
<br/><br/>
The Soviets have begun their charge across Germany. NATO forces in the region are being pushed back to the Elbe Canal, where we're digging in for a firm defense.
<br/><br/>
The VDV have been aggressively para-dropping throughout the front. <font color='#ffb5b5'>Only minutes ago, a VDV company dropped into the forest just north of our post. We've been mustered to pounce on them before they have the chance to consolidate.</font color> We expect their current objective is to secure the road and railway leading through that forest.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
At least a company's worth of parachutes were counted, including several airdropped vehicles.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A friendly tank platoon is holding the defensive line here, but they won't be involved in our mission.
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
Sweep through the forest and neutralize the Soviet forces.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Speed is of the essence here. The Soviets are scattered right now and we need to hit them before they get the chance to fix that.
<br/>
They know we're hunting them, and they're going to try to hide or ambush you.
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
*** Insert information on administration and logistics here. ***
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
