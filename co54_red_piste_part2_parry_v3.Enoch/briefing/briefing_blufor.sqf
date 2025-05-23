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
It's been about 48 hours since the Belarusian invasion began. For much of that time, our forces have been on the back foot; 
scattered and disorganized, we've sustained heavy casualties and ceded dozens of kilometers of land. Some of our forces have been able to conduct a fighting retreat, but others have been cut off, routed, or wiped out. <br/>
We've been able to reassemble and regroup roughly a platoon's worth of Latvian National Guard at the farm on the north west of Lukow - a mixed group of retreating soldiers and reservists. 
Some of our gear is dated and we have no armored assets to halt the Belarusian mechanized tide, but we'll have to make the most of what we have. <br/>
The Belarusian advance is slowing; they've grown disorganized and overextented their assault. They're advanced forces are spread thin and they have done little to reinforce their gains. 
Thus, we're making our stand here, at this farm. Then we'll push the enemy back - there's an airfield to the south that we may be able to use to resupply and bring in reinforcements. It's time to defend our homes! <br/>
It's 5:30am local time and the weather is mostly cloudy and foggy, with rain showers possible. We expect the clouds to mostly clear and the fog to burn off over the course of the next 105 minutes.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
-1x Platoons Belarusian Mechanized Infantry w/ Armored Support, assaulting the farm <br/>
-2-3x Companies Belarusian Motorized Infantry and 1x Platoon Armor, across the Lukow region <br/>
-The enemy is using mostly surplus Soviet-era equipment and vehicles. We can expect MRAPS, APCs, and IFVs, but there have been no reports of tanks in the area
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
-1x Platoon Latvian National Guard w/ Weapons Teams
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
Our first objective is to halt the Belarusian advance at the nearby <marker name='marker_obj_farm'>farm</marker>. Then, we should clear the southern half of <marker name='marker_obj_lukow'>Lukow</marker> of any 
looters, stragglers, or regrouping forces. Lastly, we must retake <marker name='marker_obj_airfield'>Lukow Airfield</marker> so we can begin preparations for a proper counterassault.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The enemy's heaviest forces will be concentrated on the assault at Lukow farm or at Lukow airfield. 
We've managed to hastily assemble some rutimentary defenses, so command recommends we hunker down and repel the initial attacking platoon before moving on the town. <br/>
Once we pass the town we'll be entering enemy-held territory. Expect most contact to be to our south, but some forces may arrive from the east or west. <br/>
The area consists of wide fields on rolling hills broken up by smaller wooded regions. Be careful to manage enemy sight-lines by using defilade, foliage, and smoke grenades. 
Command suggest that smokescreens might be particularly important for our attack on the airfield.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Move on foot, or optionally with the vehicles we used for our retreat. Additional civilian vehicles may be found in the farm itself and may be commandeered if necessary. 
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
N/A
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The use vehicles is optional - they may save time and allow for the transport of additional ammo, but their vulnerability makes using them risky. 
The Urals seat 15 people and the UAZs seat 7. <br/>
The attack on the farm will begin roughly 5 minutes after someone enters the compound. Have a rough plan devised ahead of time!
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;