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
The Chernarussian Movement of the Red Star, also known as ChDKZ, have been pushed north after their failure to capture the coastline.
<br/>
They are currently regrouping in their logistics hub of <marker name='marker_fob'>Svetloyarsk.</marker> 
<br/>
With units from the main Chernarussian Defence Force still regrouping, this Chernarussian counter-terrorism unit will be deployed to capture this hub, halting the movement of ChDKZ equipment throughout Chernarus.
<br/>
Svetloyarsk has a smaller town called <marker name='marker_out'>Olsha</marker> to it's south, currently occupied by ChDKZ forces and we know they have established fortified roadblocks at some roads leading into Svetloyarsk proper.
<br/>
There is a large petrol station being used as a ChDKZ <marker name='marker_depot'>depot,</marker> housing light armour and other equipment.
<br/>
Svetloyarsk holds a small <marker name='marker_ship'>port,</marker> with satellite intelligence from our allies tracking a steady stream of cargo ships unloading military equipment to be distributed using Svetloyarsk's railyard and MSR connections.
<br/>
In the centre of Svetloyarsk, established in the church is a ChDKZ <marker name='marker_fob'>FOB,</marker> heavily defended and well fortified.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The Chernarussian Movement of the Red Star are an irregular fighting force, well armed with surplus Soviet equipment.
<br/>
Expect lightskinned vehicles such as the BRDM, BTR and BMP, identifiable with ChDZK red paint markings.
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
- Capture the <marker name='marker_depot'>depot.</marker>
<br/>
<br/>
- Capture the <marker name='marker_fob'>FOB.</marker>
<br/>
<br/>
- Capture the <marker name='marker_ship'>port.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Platoon is free to approach how they see fit, taking objectives in whatever order they need.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Platoon has been provided with wheeled vehicles for transport.
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
- Ural can hold 15.
<br/>
- UAZ can hold 7.
<br/>
- Humvee can hold 4.
<br/>
- BTR-60 can hold 17.
<br/>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;