/* ================================================================================
	GENERAL BRIEFING NOTES
	 - Uses HTML style syntax. All supported tags can be found here - https://community.bistudio.com/wiki/createDiaryRecord
	 - For images use <img image='FILE'></img> (for those familiar with HTML note it is image rather than src).
	 - Note that using the " character inside the briefing block is forbidden use ' instead of ".
*/

/* ================================================================================
	BACKGROUND
	 - Lore lore lore
*/

private _background = ["diary", ["Background","
<br/>
<font size='18'>BACKGROUND</font>
<br/>
This isn't your parents' Johnny Chimpo cartel. They've been slowly but steadily taking on harder and harder drugs as part of their distribution portfolio, and lately have been trafficing in 
fentanyl and other dangerous synthetic drugs. They've also expanded their reach to encompass most of North America and are embracing tactics that are both more ruthless and clever than ever 
before.
<br/><br/>
39 hours ago, two of our DEA agents were killed and two others injured in an unprovoked shootout on a train to Mexico City by cartel thugs. The original theory was that the gunmen discovered the agents'
affiliation and thought they were being targeted, but new intelligence suggests it was a hit job orchestrated by a top lieutenant. We weren't going to stand for the deaths of our agents 
either way, but this new information gives us a particularly powerful seat at the table. As such, we're sending you in as a deniable special forces team to 'assist with the operation'.
<br/><br/>"]];

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
Intel suggests that the cartel has set up a number of drug manufacturing labs and weapons caches in the region. Ostensibly, our job is to inflict significant damage to the Johnny Chimpo 
infastructure by destroying as many of these targets as possible.
<br/>
More importantly, we believe an HVT, the lieutenant responsible for the attack, is in a compound somewhere north of 
<marker name='marker_katal'>Katal</marker> with a black SUV parked outside. Our primary objective is to take him out before the Mexicans can reach him. When the cartel finds his body, they'll 
get the message: you don't fuck with our agents.
<br/><br/>
The terrain is mostly arid and hilly, with compounds and a few villages dotting the AO. It is currently 6:40am; non-combatants have already left for work in the fields and factories 
to the south. It is currently lightly foggy and partly cloudy, but that should all clear up over the next hour.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
We're facing an unknown but potentially large number of Johnny Chimpo cartel members. We expect only light-to-moderate resistance in the AO itself. However, once our incursion is called in, 
we expect the cartel will send reinforcements at an increasing rate over time.
<br/>
Most enemies will be lightly armed with handguns, M16s, M4s, and AK-style rifles and carbines. However, the enemy is known to have a handful of HMGs and LAT launchers, as well as a few 
light machine guns and RPG-7s. Expect some HMGs to be mounted on vehicles, while others will be deployed throughout the AO.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Our elite team of special forces will be inserting from the north, while up to a platoon of Mexican soldiers will step off from <marker name='marker_wolak'>Wolak</marker>. We may also have a 
single AH-6 in support.
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
In order of priority:
<br/>
1. Execute the HVT responsible for the attack on our agents.
<br/>
2. Avoid suffering any Delta casualties.
<br/>
3. Assist the main platoon in destroying drug labs and weapons caches.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We should sweep through buildings and compounds between the northern coast and Katal in search of the lieutenant, destorying any caches and labs we find along the way via explosive.
<br/>
Again, intel suggests that the HVT's compound will have a black SUV parked outside - that information could help speed up our search. Once the HVT is killed or 
secured by local forces, we should link up with and assist local forces for as long as it is reasonably safe. Intel suggests that there will be tan cargo containers near or inside objective 
compounds, with labs or caches being somewhere nearby or even inside the containers. 
<br/>
Note that we are only authorized to kill the HVT if the Mexican platoon has not yet secured him, lest we lose any sense of plausible deniability. If he is captured or secured by local forces 
before we can reach him, we are NOT authorized to kill him. That would be a bridge too far, even with the current situation.
<br/><br/>
Our own command has ordered that we abort the mission and exfil if it starts to seems likely we'll lose an operative - we don't want to lose any more American lives over 
this. Enemy reinforcements will mostly arrive from the south and west of the AO, though some may enter along the coast to the north-east. We're expecting an increasingly intense response as time 
progresses. Once we've destroyed at least as many objectives as Mexican command has requested, or once things get too hot, we should exfil across the bay or to 
<marker name='marker_wolak'>Wolak</marker>. This may be earlier than local forces would like, but the safety of our operatives comes first.
<br/><br/>
NOTE: local forces intend to capture the HVT instead of kill him, but do not have any intel about where he is except that he is in the AO.
<br/>
The locals intend to destroy drug labs and weapons caches based on the number of friendly fireteams, using the table below:
<br/><br/>
3 fireteams including Delta (two in Alpha) - 7 caches and labs combined <br/>
4 fireteams including Delta - 9 caches and labs combined <br/>
5 fireteams including Delta (two Bravo) - 11 caches and labs combined <br/>
6 fireteams including Delta - 13 caches and labs combined <br/>
7 fireteams including Delta (two Charlie) - 15 caches and labs combined <br/>
 
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Insert into the AO via boat, then move on foot. Maybe local forces will be nice enough to bring an extra humvee for us.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Reaper will be primarily under the command of local forces, but we can and should request fire support as needed.
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
Drug labs will have a number of household cleaners, drugs, and other items on a table along with various burners. Weapons cashes will be piles of green weapon and ammo boxes. One explosive 
charge should be sufficient to destroy an objective.
<br/><br/>
Reaper will be equipped with two miniguns and 38 17lb direct-fire Hydra rockets. If a co-pilot is available, platoon and Reaper may optionally request one pilon (19 rockets) be replaced with 
8 10lb laser-guided DAGR rockets. The co-pilot seat is also equipped with a laser targeting camera, which can aid in reconnaissance.
<br/><br/>
Boats can seat 5 people. Humvees can seat 8 people.
<br/><br/>
Note that the Autorifle may choose between a 7.62mm and a 5.56mm weapon.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
player createDiaryRecord _background;