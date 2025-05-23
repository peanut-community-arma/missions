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
17:30:00 June 10th 2028, NATO 3st Altis Plt.
<br/>
<br/>
A pro CSAT coup has been overtaking Altis, with AAF forces opening fire on NATO forces. Nato forces are attempting to make an escape from the island at the <marker name='airport'>Feres Airstrip</marker>.
<br/><br/>
AAF forces are consolidating at <marker name=town>Panagia</marker> to assault the airstip and capture the last of the NATO personnel. We will perform a delaying action to stop the AAF from reaching the airstrip.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
2 platoons of infantry are massing in Panagia, aswell as a motorized Platoon in <marker name=qrf1>Chalkeia</marker>, and a mechanized squad with Helicopter support in <marker name=qrf2>Pyrgos</marker>
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We are the last of the Combat ready forces on the Island so the defense falls to us. However, there may be other NATO personnel stuck in Panagia so we may be able to free them to allow them to escape.
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
-Assault and capture <marker name='town'>Panagia</marker><br/>
-Stop any QRF from reaching the <marker name='airport'>Airstrip</marker><br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
You have the DAGOR’s to aid your movements and allow you to position yourself in the area.
<br/><br/>
Once you are facing the counter attack, the hill’s in the area may prove helpful in your defense.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You have been provided with Polaris DAGOG Vehicles, They seat 7.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
If you encounter any prisoners in Panagia, Free them to allow them to escape to the airfield.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The DAGOR's fit 1 Driver and 6 Passengers.<br/>
The AAF captured our resupply boxes, but they may still be in the area.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;