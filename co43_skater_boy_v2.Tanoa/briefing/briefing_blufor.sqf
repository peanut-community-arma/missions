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
1989, June
<br/>
The foundations for the invasion of Cuba have been set, Delta force will be the first in.
<br/>
There are three objectives to this operation.
<br/>
First will be the destruction of the power-grid to the island.
<br/>
The <marker name='marker_pow'>diesel power plant</marker> whilst also containing our primary objective of the power plant's primary transformer, has also become a logistics hub for the Cuban Revolutionary Armed Forces.
<br/>
It's distance from the <marker name='marker_air'>airport</marker> means that any QRF force will be approaching from the south.
<br/>
The airport itself is NOT an objective, we'll leave that to the Marine Corps once we pull out, it houses two ZU anti-air guns on the south side of the field, it's recommended Phantom's keep a safe distance.
<br/>
Second objective will be a makeshift HQ that the Revolutionary Armed Forces have established at the island's <marker name='marker_obj'>sugar plant.</marker>
<br/>
Inside the plant is a cargo HQ with intel that must be collected.
<br/>
Any troops stationed inside Georgetown will respond to an attack on the sugar plant, expect QRF from the west.
<br/>
Finally is a <marker name='marker_com'>radio tower</marker> inside Georgetown itself, its defences are not as built up as the other two objectives but the response to our attack will be quicker.
<br/>
Each objective has ONE ZU turret defending it, the power plant is located on the south side, the sugar plant on the north and air-lifted ontop of one of Georgetown's high-rises.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Cuban forces wearing OG green uniforms, soft caps with some helmets, armed with 7.62 AKM rifles.
<br/>
Expect presence of heavier Soviet equipment, BTR's, BMP's and small number of T-55's and ZSU tanks.
<br/>
Alongside the Cuban Revolutionary Armed Forces are the Territorial Troops Militia, recognised from their blue shirts and berets, armed with only an SKS.
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
- Destroy power plant transformer at <marker name='marker_pow'>diesel power plant.</marker>
<br/>
- Optain intel located inside cargo HQ building at the <marker name='marker_obj'>sugar plant.</marker>
<br/>
- Destroy <marker name='marker_com'>radio tower.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Approach any objective how platoon lead sees fit.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Helicopters will be used to rapidly deploy between objectives.
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
- MH-6J Little Bird holds 8 total.
<br/>
- UH-60M holds 17 total.
<br/>
- Radio tower takes two M112 demo blocks or one M183 to demolish.
<br/>
- Power transformer takes one M112 demo block or two law shots to demolish.
<br/>
- Intel can be collected through ace interact.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;