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
May, 2035
<br/>
Russian forces have overextended themselves, leaving a gap in the frontline for the US Army Rangers to exploit.
<br/>
There are three S-400 AA sites that must be destroyed to hamper local anti-air capabilities.
<br/>
All three are located in the same town, one in <marker name='marker_obj'>central Hanstedt</marker>, another to <marker name='marker_obj_2'>the north</marker> and finally one <marker name='marker_obj_1'>in the south.</marker>
<br/>
Expect fortified locations between the platoon and the objectives.
<br/>
Once all three are destroyed, platoon is to exfil to a safe location away from the east.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Russian Armed Forces wear taiga camouflage and are armed with 5.45 AK-12's.
<br/>
High concentration of BTR's in the area, mix of standard machine gun and auto-cannon variants.
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
- Destroy all three AA missile batteries in the town of <marker name='marker_obj'>Hanstedt.</marker>
<br/>
- Exfil safely.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Moving how platoon see's fit to assault the objective in any order.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Platoon is a motorised force, using the M-ATV's to assault and move in relative safety.
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
- M-ATV holds 6 total.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;