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
1970, July
<br/>
Tasked with destroying a <marker name='marker_obj'>key bridge</marker> platoon must obtain the explosives to do so from a <marker name='marker_dep'>US depot.</marker>
<br/>
Assaulting such a place will have reinforcements arriving from <marker name='marker_qrf'>the north</marker> once contact is made.
<br/>
The <marker name='marker_obj'>bridge</marker> itself will require 3 demolition blocks placed near the centre to achieve our goal. (Note the bridge itself doesn't have a damage model so use you imaginations.)
<br/>
The closest airfield is 15 minutes of flight away, once the units defending the bridge engage us there will likely be a helicopter assault on our position, best not be present when they arrive.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
US Army wear olive drab uniforms with camouflaged helmets, armed with M16A1 rifles.
<br/>
Vehicles present will likely be armed jeeps, and M113 APC's.
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
- Assault <marker name='marker_dep'>US depot</marker> and obtain at least 3 demolition blocks.
<br/>
- Place 3 demolition blocks near the centre of the <marker name='marker_obj'>bridge.</marker>
<br/>
- Evade final QRF of armed helicopters.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Assaulting the depot will result in a QRF of vehicles, it is up to platoon how to approach them.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Movement will be on foot to avoid easy detection.
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
- The bridge itself doesn't have a damage model, so it's honour system to complete the objective.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;