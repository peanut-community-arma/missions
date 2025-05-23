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
April 6th 1989 12:00:00, Russian VDV
<br/>
<br/>
We are breaking through US lines to quickly kill a commander and retreat. We will have to break a hole in their AA net to do this.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
US army forces, They will be supported by a small amount of Bradley IFV’s. They also have fortified a position outside of town where their AA is kept.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We have a KA-52 Helicopter to aid us.
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
- Eliminate the AA at <marker name='obj1'>the farm</marker><br/>
- Locate and Eliminate the officer in <marker name='obj2'>the town of Borek</marker><br/>
- Escape before the QRF arrives<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We will have to eliminate the AA before the helicopter can fully help us. Once the commander is dead we should try to retreat as soon as possible before the enemy QRF can arrive.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We have some Ural trucks for transport.
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
The KA-52 has a gun mounted on the side, the gunner will need to see the white crosshair to know that the gun is aligned with the camera and able to fire. This means the helicopter’s gun is much easier to use when hovering in position.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;