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
7th of March, 2008
<br/>
<br/>
VIP's of ION Services were visiting a prominent Zargabad investor regarding our recent contract for the city, where multiple vehicles belonging to local insurgents broke through the security fence and are now holding the three individuals hostage inside the <marker name='marker_obj'>villa.</marker>
<br/>
This security failure will decimate ION's stocks so we must act fast and rescue the three VIP's.
<br/>
We know there are multiple armed gunmen around the <marker name='marker_obj'>villa,</marker> and that the personal helicopter of the villa's owner is present on its helipad north side of the villa.
<br/>
<marker name='marker_qrf'>Zargabad</marker> city itself has been a trouble spot of insurgent activity that we have not been equipped to handle, expect a steady stream of insurgents to converge on our position once the operation begins.
<br/>

<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Local insurgents wear civillian garb and are equipped with the standard soviet surplus of AK's, RPK's and RPG's.
<br/>
Expect a fleet of soft skin vehicles with technicals, trucks and the odd up-armoured car.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
There are three VIP's present in the villa, any local security forces have already fled or are dead.
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
- Rescue all three VIP's from the <marker name='marker_obj'>villa.</marker>
<br/>
- Complete the operation within 7 minutes of contact to avoid the threat of a mobilised Zargabad insurgency.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Insert close enough to the villa for swift completion of the operation.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use any of ION's helicopter fleet to complete the mission.
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
- MH-6M can hold 9
<br/>
- UH-60 can hold 16
<br/>
- Ka-60 can hold 10
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;