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
Hostage situation has developed with 3 VIPs being held in a remote 3 story <marker name='marker_hotel'>Sahrani hotel.</marker>
<br/>
Armed insurgents have stormed the hotel and garrisoned it.
<br/>
Power has been cut to the hotel, but the headlights from the insurgent vehicles are still on..
<br/>
Acting fast US Tier 1 operators are to be deployed via helicopter to extract the VIPs to a safe location.
<br/>
Insurgent reinforcements will react to this deployment within 7 minutes of detection, do not be present when they arrive.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Hotel insurgents are armed with AUG rifles with flashlights and other small arms, they are situated on all levels of the hotel with some patrolling the mountain side.
<br/>
There is one truck armed with a DShK parked at the south side outside of the hotel.
<br/>
Insurgent QRF is an assortment of armed trucks, including one with anti-air capabilty arriving from the south east.
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
- Assault <marker name='marker_hotel'>hotel</marker>
<br/>
- Rescue the 3 VIPs
<br/>
- Extract before 7 minutes time limit. 
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Use helicopters to deploy quickly, clearing all levels of the hotel until VIPs are rescued.
<br/>
100% elminiation of OPFOR is NOT necessary, only the rescue of VIPs.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Helicopter deployment, platoon has freedom of where to deploy with strict time limit in mind.
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
16 total seats in UH-60M
<br/>
9 total seats in MH-6M Little Bird
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;