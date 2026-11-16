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
September, 2021
<br/>
Coalition forces have abandoned Takistan to it's fate.
<br/>
Despite it's reforms and restructuring the New Takistan Army has fallen into politics and corruption.
<br/>
And now it appears the Takistan militia of the old government have become more active, better equipped and better organised.
<br/>
It's up to the special forces to uncover where this renewed vigor has come from.
<br/>
Intel suggests the mountain pass is where the new equipment is coming from, hopefully there's documentation present at the milita controlled town of <marker name='marker_int'>Nagara</marker> that will point us the way.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Takistan militia are armed with 7.62 AKM rifles, wearing a mix of civilian clothing with some Takistan army remnant having joined their forces.
<br/>
High concentration of soft-skin technicals and limited number of Takistan army BTR's.
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
- Assault <marker name='marker_mull'>Mulladost</marker>
<br/>
- Assault <marker name='marker_int'>Nagara</marker> and search for intel on weapons depot.
<br/>
- Assault and capture location of weapons depot.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Assault each town how platoon see's fit, motorised vehicles should make mountain climbing effective.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use motorised vehicles to rapidly move between objectives.
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
- HMMWV holds 5 total.
<br/>
- Hilux holds 6 total.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;