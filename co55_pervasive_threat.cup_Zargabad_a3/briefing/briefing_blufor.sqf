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
May 2006,
<br/>
Coalition forces have been having trouble with the city of Zargabad for some time now.
<br/>
Car-bomb and IED deaths are common-place in the region, and command wants the embedded insurgent force rooted out.
<br/>
This will involve a USMC convoy to <marker name='marker_route'>patrol</marker> the city in the hopes of an armed response.
<br/>
We will have a MQ-9 Reaper orbiting the city for observation purposes only, it is not permitted to engage anything within Zargabad.
<br/>
An EOD specialist is necessary to counter the IED threat, traditional demolition cannot occur due to the high civilian population present.
<br/>
USMC forces cannot fire unless fired upon by individuals on foot, however if a vehicle threatens the convoy you are free to engage.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Insurgent forces are using old soviet equipment but have no other identifier to divide them from the civilian population.
<br/>
Beware IED and car-bomb threats, caution will keep people alive.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
MQ-9 Reaper is on station for observation.
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
- Patrol the city of Zargabad and counter any insurgent force in the area.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Following the <marker name='marker_route'>pre-planned route</marker> until contact, once platoon is confident threat has been eliminated return to base.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
- Patrol the city using the <marker name='marker_route'>pre-planned route.</marker>
<br/>
- Once engaged by OPFOR convoy is free to break off.
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
- M1025 Humvee holds 5.
<br/>
- EOD defusal occurs through the ace interact menu, there is a small training zone present.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;