/* ================================================================================
	GENERAL BRIEFING NOTES
	 - Uses HTML style syntax. All supported tags can be found here - https://community.bistudio.com/wiki/createDiaryRecord
	 - For images use <img image='FILE'></img> (for those familiar with HTML note it is image rather than src).
	 - Note that using the " character inside the briefing block is forbidden use ' instead of ".
*/

private _hosts = ["diary", ["For hosts","
<br/>
<font size='18'>SITUATION</font>
<br/>
Anyone slotted in the Host group should have access to Zeus, although TMF Admin menu seems to work best for MP teleporting. Teleport players to the start position of the mission you want to go over, in order to let them have a look. Feel free to also freestyle. Players can be distributed in up to three groups depending on what you want to cover and how many people/hosts are available.
<br/><br/>
The supply box in front of the red container at spawn contains rangefinders (to practice map ranging). It also has 148 radios if necessary. There is no personal arsenal enabled for this mission - use Zeus to change loadouts.
<br/><br/>
Potential topics to cover:<br/>
- Gaming out enemy positions/scenarios<br/>
- How to read the map - contours, vegetation markers and when not to trust them<br/>
- Map ranging and other ranging methods (use the objects placed on the salt flats - they are set at ~100m intervals, measured to the lamppost by spawn)<br/>
- How to use terrain effectively<br/>
<br/>
<marker name='mk_start'>Link to salt flat spawn</marker>
<br/>
"]];


/* ================================================================================
	SITUATION
	 - Outline of what is going on, where we are we and what has happened before the mission has started? This needs to contain any relevant background information.
	 - Draw attention to friendly and enemy forces in the area. The commander will make important decisions based off this information.
	 - Outline present weather conditions, players will typically assume that it is daylight with sunny weather.
*/

private _situation = ["diary", ["Setup","
<br/>
<font size='18'>SITUATION</font>
<br/>
This is a mission set up to let people practice leadership skills, particularly map-reading, planning and giving briefings. The intent is to let players practice these skills on a series of mock-missions. There are no AI placed on the map at start, but each mission has a mini-briefing that should be enough for players to make minimal plans. Each also comes with a set of prompts that should help get you started in making a plan.
<br/><br/>
For the purposes of planning, assume that players are always NATO 2035, and enemies are either CSAT or AAF. Assume our usual squad sizes - two squads of infantry, with fireteams of 5 (AR, AAR, LAT, RFA, TL with UGL). Any additional support or roles are noted. 
<br/><br/>
General briefing considerations:<br/>
- Try to have some idea of how to handle every stage of a mission: how to set up, how to execute, and how to finish (including evacuation if relevant)<br/>
- How can you divide responsibilities so that teams get about an equal amount of 'action'?<br/>
- What's your backup plan? What happens if leadership dies or an element is effectively destroyed?<br/>
"]];

/* ================================================================================
	MISSION
	 - Describe any objectives that the team is expected to complete.
	 - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission1 = ["diary", ["Mission 1","
<br/>
<font size='18'>MISSION 1: Assault the Iraklia Resort</font>
<br/>
<marker name='mk_m1'>Link to start</marker>
<br/>
SITUATION: One NATO rifle platoon has been tasked with taking Iraklia resort from a garrisoned CSAT force. Enemy infantry are present in the woods between our insert and the objective, and we presume enemies are stationed on the heights around the resort (marked with bunker markers). Assume you are fighting at noon on a clear day.
<br/><br/>
MISSION: Clear Iraklia Resort of all hostiles. Repel any counterattacks.
<br/><br/>
EXECUTION: Move through the area on foot. The terrain offers plenty of concealment, which can also limit your squads' ability to support each other due to blocked sightlines. Enemy reinforcements will likely come through the main southern road.
<br/><br/>
PLTCO PROMPTS:<br/>
- Compare the map 'vegetation' areas to the actual forest you can see SW of the start point - would this change your movement plan?<br/>
- Which direction(s) are safest to attack the resort? <br/>
- If you were the enemy commander, where would you put fortifications or defenses?<br/>
- How would you position your squads to receive a counterattack once you've cleared the resort?
"]];

private _mission2 = ["diary", ["Mission 2","
<br/>
<font size='18'>MISSION 2: Taking Selakano Airfield</font>
<br/>
<marker name='mk_m2'>Link to start</marker>
<br/>
SITUATION: You are a NATO platoon with two attached Badger IFVs, Sierra-1 and Sierra-2. Assume you have a number of unarmed troop transports, enough for the whole platoon as well. A surprise CSAT force has taken Feres, spearheaded by a tank platoon with mechanized infantry support, and have thrown up checkpoints at the major intersections in the AO. They are moving to take the airfield between Selakano and Feres, and you must stop them. Assume you are fighting at noon on a clear day.
<br/><br/>
MISSION: Repel the enemy assault on the airfield.
<br/><br/>
EXECUTION: Use your IFVs and any assigned vehicles to advance as quickly as feasible towards the airfield. You do not have to clear Feres, only repel the attack from that direction. 
<br/><br/>
PLTCO PROMPTS:<br/>
- What are the pros and cons of following the roads? Why/why not take them?<br/>
- Assuming the enemy are also in CSAT IFVs and tanks, what tasks should be Sierra's priority?<br/>
- What are Sierra's weaknesses? How can the infantry protect Sierra?<br/>
- NATO IFVs have limited anti-armor capabilities. How would you fend off tanks attacking from Feres?<br/>
- Once in the airfield, what would be good positions to aim to take? Why?<br/>
"]];

private _mission3 = ["diary", ["Mission 3","
<br/>
<font size='18'>MISSION 3: Hostage Rescue at Panochori</font>
<br/>
<marker name='mk_m3'>Link to start</marker>
<br/>
SITUATION: Ex-AAF breakaway insurgents have taken civilian hostages and are holding them in the church in Panochori. You are a NATO SOF platoon, with Littlebird support - Phantom-1 and Phantom-2. Assume the Phantom pilots can freely switch between attack and transport helicopters. The enemy are using old AAF Fenneks as their primary vehicle. Civilians are present in the AO.
<br/><br/>
MISSION: Extract the civilians via air from the church in Panochori. Afterwards, the players must also leave the AO under their own power.
<br/><br/>
EXECUTION: Note the presence of enemy watchtowers on the mountains on the borders of the AO. Pilots' priorities, aside from providing evac, are to spot and destroy incoming enemy reinforcements due to the relative lack of player AT. Players will insert by boat but move through the AO on foot.
<br/><br/>
PLTCO PROMPTS:<br/>
- What are the pros and cons of the two boat inserts? What factors would you consider when picking between them?<br/>
- How can the Phantoms best facilitate the platoon's movement and actions?<br/>
- Where would you assume enemy fortifications or defenses to be? Which pieces of terrain could be used to block line-of-sight?<br/>
- What LZs would be good for extracting the hostages?<br/>
- Given the density of Panochori, how would you protect the hostages until they can be extracted?<br/>
- What is the extraction plan for the platoon itself?<br/>
- How would your plan change if this was occuring at night?
"]];

private _mission4 = ["diary", ["Mission 4","
<br/>
<font size='18'>MISSION 4: Convoy in Syrta</font>
<br/>
<marker name='mk_m4'>Link to start</marker>
<br/>
SITUATION: NATO forces conduct a MATV patrol in the Syrta region, investigating five points of interest. There have been reports of FIA activity in the region, largely small-arms ambushes. We have also received reports of IEDs on the roads.
<br/><br/>
MISSION: Patrol the area in your convoy, conducting an on-foot investigation of each marked point of interest. Then, return to base.
<br/><br/>
EXECUTION: Be careful with your vehicles, and rely on them to carry most of your gear. Watch out for IEDs - this means keeping an eye out for suspicious blockages, piles of debris/garbage in the middle or on the edges of roads, and so on.
<br/><br/>
PLTCO PROMPTS:<br/>
- What would your ideal convoy order be?<br/>
- What is the procedure for the platoon should they take contact?<br/>
- Practice mounting up, moving, stopping and dismounting.<br/>
- At each point, what are the potential threats and how would you respond?<br/>
- In the event of a spotted IED what should drivers do?<br/>
- If a vehicle is disabled, how should the platoon handle it?<br/>
"]];


player createDiaryRecord _mission4;
player createDiaryRecord _mission3;
player createDiaryRecord _mission2;
player createDiaryRecord _mission1;
player createDiaryRecord _situation;
player createDiaryRecord _hosts;