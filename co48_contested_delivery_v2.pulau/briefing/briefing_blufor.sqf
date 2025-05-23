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
Colonial British armed forces are in the area, seeking to shut down our flourishing <marker name='town'>settlement</marker> because it exists outside of the reach of their authority.
<br/><br/>
They recently seized the vehicle we usually use for food and supply runs into the city, claiming we were using it for 'terrorist activities', so a nearby town graciously offered us their truck to use in the meantime. We'll be providing an armed escort of the truck -- put it in the <marker name='town'>garage</marker> for now with the rest of our supplies.
<br/><br/>
Once we reach town, we should prepare for a British assault. They have been getting increasingly brazen as of late.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
An unknown number of British Armed Forces foot soldiers, identifiable by their dark green camo pattern, L85 rifles, and uniform appearance.
<br/><br/>
They may attempt to ambush our truck, or simply take a straight-up fight with us. Keep your guard up! We do not, however, anticipate BAF attempting to use AT on our supply truck. The biggest risk is stray small arms fire.
<br/><br/>
The BAF do not have any armed vehicles in the area.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We have evacuated our community pre-emptively so that they are out of harm's way. Try to avoid any damage to community buildings when possible.
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
-Escort the supply truck back to <marker name='town'>town</marker>.
<br/>
-Repel any attacks by the British Armed Forces on the truck and/or our town.
<br/>
-If the vehicle is disabled beyond repair, carry as many of the supplies as you can back to town and store them in the appropriate boxes in the <marker name='town'>garage</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We should use our infantry to screen ahead of the supply truck so as to avoid it taking unnecessary damage.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Our truck should use the main road to return north to town. Screen ahead of it with infantry to blunt enemy ambushes.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
The truck is set as an ACE repair vehicle so everyone should be able to repair it if they have a toolkit (several are in the truck inventory, and the logi role spawns with one). There are also 3 spare tires in the truck's ACE CARGO (accessible through ACE interact).
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The truck carries 3 toolkits, 3 spare tires, some medical supplies, and some spare ammunition, along with the usual bulk food and medical supplies.
<br/><br/>
There is a <marker name='town'>garage</marker> we can park the truck in when we reach town. There are boxes there to store the supplies if we are forced to carry them by foot, as well as additional ammunition, food, water, and medical supplies.
<br/><br/>
Everyone can repair the vic provided they have a toolkit.
<br/><br/>
TO REPLACE A TIRE: The spare tires are in the vehicle's ACE Cargo (accessible via ACE interact) - unload the tire, place it next to the broken wheel, and ACE interact on the broken wheel - a repair option should appear.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;