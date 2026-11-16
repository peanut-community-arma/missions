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
August, 1989
<br/>
Soviet forces are on the back foot, Operation Reforger has been a resounding success as we push back into occupied territory.
<br/>
This American mechanised force is tasked with assaulting the town of <marker name='marker_obj'>Kvilda.</marker>
<br/>
Faced against you is a fighting force from the East German National People's Army.
<br/>
Expect the forces inside the <marker name='marker_line'>forest</marker> to have dug trenchlines, likely rushed and not deep.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The NVA fields equipment similar to other Red Army units, the MPi-KM is an East German derivative of the AKM with a plum colouration to it's plastic furniture.
<br/>
Most of the heavier equipment the NVA are fielding are light-skin vehicles such as the BTR and BMP-1, with only a limited number of T-72's held in reserve.
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
- Push through the <marker name='marker_line'>forest.</marker>
<br/>
- Occupy <marker name='marker_obj'>Kvilda</marker> and defend from QRF.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Straight forward assault.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Infantry moving on foot to screen Bradley Fighting Vehicles from anti-tank weaponry.
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
- Bradley holds total of 9.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;