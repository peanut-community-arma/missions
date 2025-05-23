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
39 hours ago, two American DEA agents were killed and two others injured in an unprovoked shootout on a train to Mexico City by cartel thugs. The original theory was that the gunmen discovered 
the agents' affiliation and thought they were being targeted, but new intelligence suggests it was a hit job orchestrated by a top lieutenant. The Americans weren't going to stand for the 
deaths of their agents either way, but this new information is forcing a particularly aggressive response. As such, they are insisting on sending in a deniable special forces team to assist with 
the operation, and we can't really take no for an answer.
<br/><br/>
"]];

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
Intel suggests that the cartel has set up a number of drug manufacturing labs and weapons caches in the region. Our job is to inflict significant damage to the Johnny Chimpo infastructure 
by destroying as many of these targets as possible.
<br/>
In addition, we believe the lieutenant responsible for the attack is somewhere in the AO, likely in a building with a fancy vehicle parked 
nearby. If he's found and does not pose an active threat, he should be captured and brought back to base to face justice. On top of hampering their actual smuggling and distribution operations, 
we want to send a clear message: the cartels will no longer be allowed to cause wonton mayhem without consequences.
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
We have up to a platoon of Mexican army forces sweeping the AO. There is also the American special forces team inserting from the north. We may also have a single AH-6 in support.
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
Primarily, destroy drug labs and weapons caches scattered within compounds and buildings in the AO. Command expects us to destory the following number of targets depending on how large a force 
we can field:
<br/><br/>
3 fireteams including Delta (two in Alpha) - 7 caches and labs combined <br/>
4 fireteams including Delta - 9 caches and labs combined <br/>
5 fireteams including Delta (two Bravo) - 11 caches and labs combined <br/>
6 fireteams including Delta - 13 caches and labs combined <br/>
7 fireteams including Delta (two Charlie) - 15 caches and labs combined <br/>
<br/>
We should also attempt to locate and capture the HVT.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We've staged in Wolak, which we've already confirmed is clear of enemies and objectives.
<br/>
We should sweep through buildings and compounds in the rest of the AO searching for caches and labs. When one is found, then plant an explosive on it and detonate it from a safe distance.
<br/>
If Reaper is available, they should be used to scout out potential objectives from the air early in the mission, as some may be visible from the sky. Intel suggests that there will be tan cargo 
containers NEAR OR INSIDE objective compounds, with labs or caches being somewhere NEARBY OR EVEN ISNIDE the containers. Once we've destroyed at least as many objectives as command has 
requested, we should pull back to <marker name='marker_wolak'>Wolak</marker>.
<br/><br/>
Enemy reinforcements will mostly arrive from the south and west of the AO, though some may enter along the coast to the north-east. We're expecting an increasingly intense response as time 
progresses. If the platoon is at risk of being wiped out before we complete all objectives, we're authorized to retreat back to <marker name='marker_wolak'>Wolak</marker> rather than risk the 
embarrassmrent of being annihilated by cartel goons.
<br/><br/>
NOTE: we are not technically in command of the Delta team, but we expect they will support our operation as able. To avoid friendly fire, they will be dressed in black.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We have open humvees to help us move around the AO as needed. Move on foot when prudent.
<br/>
Absent of any intel from Reaper, it might be wise to start in Katal and then move towards Abad, as those areas are reasonably dense and will likely have more labs and caches. The SF team should 
hopefully be able to sweep through any objectives in the north.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
As stated, if Reaper is available, they should focus on reconning from the air in the early stages of the operation. As the number of enemies reinforcing increases, Reaper should focus more on 
aerial fire support. Note that the SF team can and should be encouraged to call for CAS as well.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
The enemy lieutenant should be captured and brought back to <marker name='marker_wolak'>Wolak</marker>. However, this is considered a secondary objective and rest of the operation should not be 
jeopardized for his capture, especially once we complete our main objective.
<br/>
Intel suggests he is wearing a red beret and that a black SUV will be parked near his building. Leverage Reaper to help locate him in addition to the caches.
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
To capture the lieutenant, ACE interact with his hands while you have a cable tie in your inventory.
<br/><br/>
Humvees can seat 8 people.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
player createDiaryRecord _background;