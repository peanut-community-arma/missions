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
October, 2026
<br/>
The Altian Civil War continues to spiral out of control, what should have been a decisive change of power from the corrupt goverment to Colonel Georgious Akhanteros has seen multiple units in the armed forces and civilian population continue to fight for the old government.
<br/>
The need to secure stable territory for the AAF is evident, this means clearing the outling towns of Kavala of loyalist forces and create a buffer for counter-insurgency operations to safely remove loyalist elements in the city proper.
<br/>
1st Regiment Mechanised will clear the towns of <marker name='marker_neri'>Neri</marker> and <marker name='marker_pano'>Panochori,</marker> ensure any loyalist supplies are destroyed in the process.
<br/>
Civilian loses are regrettable, but unavoidable under such circumstance.
<br/>
Between the two towns the loyalists have established a <marker name='marker_road'>roadblock</marker> that has good sightlines over both towns.
<br/>
Beware that one of our sister mechanised platoons now fly the loyalist flag and were last seen around the town of <marker name='marker_pano'>Panochori,</marker> the disable or destruction of their Pandur's will deal a heavy blow to loyalist forces.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Civil war is messy business, the loyalist forces are wearing a mix of civilian and military equipment, some still wear the camouflage we are using, easiest identifier are their blue armbands.
<br/>
We hold the equipment advantage, technicals are common place in loyalist forces.
<br/>
The Pandur II's that are fighting for the old government have painted over the AAF camouflage and fly the loyalist flag.
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
- Elminate loyalist forces from <marker name='marker_neri'>Neri</marker> and destroy any weapons cache's found there.
<br/>
- Elminate loyalist forces from <marker name='marker_pano'>Panochori</marker> and destroy any weapons cache's found there.
<br/>
- Disable or destroy the Pandur II's fighting for the loyalists around <marker name='marker_pano'>Panochori.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Command is free to approach either town however they please.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use vehicles given, or move on foot to complete objectives.
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
- Pandur II holds 11
<br/>
- Land rover holds 8
<br/>
- Offroad holds 6
<br/>
- KamAZ holds 17
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;