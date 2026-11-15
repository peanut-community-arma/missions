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
25th of December, 2024
<br/>
An important political figure took their family on a holiday trip to the hotel resort on <marker name='marker_obj'>Ravi-Ta Island.</marker>
<br/>
Late into the night of the 24th, multiple small boats had landed on the island, corresponding with a call from island staff to emergency services.
<br/>
Gendarmerie and Horizon Island Coast Guard have locked down the island and confirmed that our VIP and multiple island staff are being held hostage.
<br/>
It's likely hostages are being held in each built up location of the island, the small collection of structures at <marker name='marker_ipo'>Ipota</marker>, the local <marker name='marker_port'>port</marker> and most significantly to our operation, the four VIPs are being held at the <marker name='marker_obj'>main resort.</marker>
<br/>
A Gendarmerie observation drone also spotted OPFOR establishing a <marker name='marker_aa'>heavy machine gun</marker> on a ridge to the west of the resort.
<br/>
In a stroke of luck the 1st Marine Infantry Parachute Regiment were operating in the Tanoan region deployed for counter-terrorism and have been quickly retasked to assault the island ensuring the safety of the VIPs present.
<br/>
Gendarmerie have established a presence in the <marker name='marker_air'>La Rochelle Aerodrome</marker> to enable far more rapid redeployment of Phantoms.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Having deployed via small boats expect a strong infantry presence of Tanoan insurgents.
<br/>
Gendarmerie have reported these militia are driving a captured vehicle belonging to hotel staff around the island as either a patrol or joy-ride, perhaps both.
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
- Secure the <marker name='marker_obj'>island.</marker>
<br/>
- Ensure safety of VIPs
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Platoon is free to split, keep awareness of fragility.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Using helicopters to assault island.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
If platoon sees fit, they can organise the airlift of hostages to the <marker name='marker_air'>La Rochelle Aerodrome.</marker>
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
- Merlin HC5 can fit 18
<br/>
- CH146 can fit 9
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;