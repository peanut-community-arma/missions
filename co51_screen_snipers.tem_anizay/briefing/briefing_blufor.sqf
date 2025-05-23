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
Recently, the scourge known as MILSIM STREAMERS has taken things a step further, arranging horrific blood games involving poorly equipped 'REDFOR' against their Gucci-ass 'BLUFOR' Special Forces cosplay. We're here to take revenge. 
<br/><br/>
Sympathetic locals have informed us that streamer forces have recently forcibly evicted locals from the town of <marker name='mk_musakhan'>Musakhan, and that they routinely send convoys through the town. By tuning into their livestreams, we learned that a sizeable portion of their organization are on their way back from one such blood game, and that they have grown complacent, leaving a minimal garrison in town. Our objective today is to clear out the skeleton force around Musakhan, and then ambush the convoy as they roll through town. Riding on this momentum, we will roll south to assault their local base of operations at <marker name='mk_fob'>FOB Nauzad</marker>, and turn their guns on them as they attempt to counter us.
<br/><br/>
The operation begins at 0930. The weather is overcast, but expected to clear up over the day. 
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
About a platoon of special cringe forces, soon to be special corpses, and enough hangers-on to make about a company's worth of enemy combatants. Our local scouts report that the convoy consists mainly of M2-equipped humvees with a few Strykers providing support. Expect similar levels of armor accompanying any QRF. We expect FOB Nauzad to be garrisoned by mainly infantry with a few turrets and the odd Humvee, but nothing heavier inside the base itself. 
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of conscripts. Expect no reinforcements. The platoon has been provided with the following vehicles for mobility and to carry supplies:<br/>
- 7x Land Rover 110 (seats 8)<br/>
- 3x Hilux (seats 6)<br/>
Each squad is expected to have two Land Rovers and one Hilux, with specialist teams and Plt HQ taking the last Land Rover or spare seats.

<br/><br/>
<font size='18'>Note from the mission maker</font>
<br/>
The ammo cache is intended to be used if no specialist teams (MAT or LOGI) are slotted - please don't e.g. distribute more mines if LOGI is slotted, or the RPG-7V2 if there's a MAT team. If you have MAT but no LOGI and want to use the mines (or vice versa), feel free. Make sure the special teams get to be special ok thanks have fun xoxo
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
- Destroy enemy units around <marker name='mk_musakhan'>Musakhan</marker><br/>
- Ambush the convoy coming through Musakhan from the west, along the main road<br/>
- Clear and seize <marker name='mk_fob'>FOB Nauzad</marker>, repelling any counterattacks

"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Speed and surprise are our key advantages here. The terrain is relatively open enabling our offroading vehicles to move freely. The complacency of the enemy should also be exploited - they are unlikely to have taken full advantage of their defensive positions, although it would still be smart to do some brief recon of the FOB before the assault begins. The specifics of the ambush is up to the Platoon Commander - mines and explosive charges along with cellphone detonators have been provided, but if RPG-7s are available, these should be sufficient to destroy the convoy. The milstreamers are likely to try and push through any contact, so do your best to make sure each vehicle is at least disabled if not outright destroyed.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the provided vehicles to move from point to point. Each vehicle has been pre-stocked with an assortment of ammunition, AT and medical supplies.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Enemy weaponry may be seized if such an opportunity presents itself, but avoid seizing enemy vests or helmets to avoid IFF issues. Enemy vehicles that cannot be seized should be destroyed.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
MINE TYPE GUIDES:<br/>
- PMN mines are anti-personnel mines<br/>
- TM-62M mines are anti-tank mines
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;