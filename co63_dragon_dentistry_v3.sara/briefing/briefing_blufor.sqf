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
July, 2004
<br/>
This island is a stronghold for the Iranian military, its extensive anti-aircraft missile system has kept US aircraft clear of this airspace.
<br/>
The marine corps is tasked with securing a beachhead and removing the anti-aircraft threat from the town of <marker name='marker_obj'>Somato.</marker>
<br/>
The beach is heavily fortified, expect tank traps, dragon teeth, trenchlines and minefields.
<br/>
Beyond the beach is a cliffside peppered with concrete bunkers that will rain gunfire down on you.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Iranian uniforms are similar to the marine corps, with their choc-chip desert camouflage and woodland vests.
<br/>
Everything is being moved to counter our landing, expect a heavy infantry presence alongside Soviet era surplus equipment such as BTR's, BMP's and T-55's.
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
- Establish a beachhead.
<br/>
<br/>
- Take control over <marker name='marker_obj'>Somato.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Spreading the platoon across the beachhead is not advised.
<br/>
The main landing approaches are the <marker name='marker_N'>north beach</marker> and the <marker name='marker_S'>south beach.</marker>
<br/>
The <marker name='marker_N'>north beach</marker> has less beach to push up from, but denser and closer range fortifications, as well as less room to maneuver with minefields leading you down tighter funnels.
<br/>
The <marker name='marker_S'>south beach.</marker> has more room to breath but open to more angles of attack from fortifcations.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Using the assets available make your way to the beach and push up with the support from Sierra's.
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
- LAV-25 can hold 9
<br/>
- AAV can hold 17
<br/>
- RHIB can hold 13
<br/>
- LCU can hold everyone.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;