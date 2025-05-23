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
After peace for the past 10 years, The civil war has gone hot in Sahrani. We are going to conduct the first strike against the SLA’s capabilities. The enemy has massed themselves on a main frontline and are dug in waiting for us. Your objective will be to punch through this front line and strike at key positions behind it.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The SLA have been under embargo for the past 10 years and only have basic russian gear. However there have been T-55 tanks and other armored capabilities spotted.
<br/>
<br/>
Scouts have spotted enemy emplaced DShKM Heavy machine guns and SPG Rocket launchers being set up with new fortifications in the last 24 hours.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
The RACS used to be partially funded by the US military however they have pulled their support so some of our Gear will be dated.
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
- Capture the <marker name='obj2'>town of Obregan</marker><br/>
- Capture the <marker name='obj1'>Garrison</marker><br/>
- Capture the <marker name='obj3'>Armor Depot</marker><br/>
- Capture the <marker name='obj4'>AA Compound</marker><br/>
- Destroy any Tanks or AA capabilities<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Use overwhelming firepower to cut through the enemy lines. We dropped pamphlets last night telling civilians to leave the area so homes should only contain enemy soldiers.
<br/>
Be wary of the mountains, they can make for great recon and sightlines into the valley. However we expect enemy reinforcements to come out of the mountains into the valley.

<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You will have Land Rovers to stage yourself somewhere in the area of operations, however it is advised you move on foot in combat.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
-Capture any useful war material
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Our resupply budget was spent on the fancy optics and GPS so we must make do with what we have. Try to look for enemy resupply that may help us.
<br/>
<br/>
Land Rovers seat 1 Driver and 7 Passengers (8 total)
<br/>
<br/>
M60A3 has 80 APFSDS and 46 HEAT. 6000 M240 rounds
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;