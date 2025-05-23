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
<font size='18'>YOU SHOULD READ THIS PART</font>
<br/>
-Only Leadership have radios this mission.
<br/>
-Only PLTCO can place map markers.
<br/>
-There are no ORBAT markers. The <marker name='gen1'>Rozdania radio tower</marker> on the south edge of the drop zone is highly visible and may serve as a useful reference point to locate yourself on the map.
<br/>
-Your parachute will deploy automatically. Hold S to slow down as you near the ground or you will injure yourself upon impact.
<br/>
-All RFA roles have been changed to CLS roles for this mission given the dispersed nature of players.
<br/>
-Everyone has been issued a chemlight for IFF, as well as an explosive charge (m114) and a clacker. (If you don't know how to use these there is more info in the Administration tab).
<br/><br/>

<font size='18'>SITUATION</font>
<br/>
We will be performing a highly dispersed paradrop (reference the <marker name='dropZone'>red circle</marker> on map) into the Russian backlines to destroy enemy men, material, and infrastructure before regrouping to seize Roztoka. You will start scattered and far away from your fireteam members, so team up with whatever other platoon members that end up in your area and accomplish what objectives you can on the way to the PLT regroup point. 
<br/><br/>
You will find a detailed list of targets is in the Mission tab; different targets will have different levels of enemy forces present.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Enemy forces consist of Soviet infantry and vehicles. Expect to face Urals, UAZs, BTRs, and maybe a BMD or two.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We are the only friendly element in the area. There are no civilians. If you hear fighting, your fellow PCA members are participants.
<br/><br/>
~~~~~~~~~~~Shoutout to Danvers and Alien for supplying some cool scripts that helped make this mission possible! ~~~~~~~~~~~~~~~~~~~~~~
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
Destroy enemy infastructure and logistics before regrouping as a platoon to seize <marker name='town2'>Roztoka</marker>. The more damage you can do the better but you need not destroy every target.
<br/><br/>
The objectives can broadly be divided into 3 Tiers:
<br/><br/>
TIER ONE OBJECTIVES <br/>
These objectives can be comfortably achieved by 2-3 people, or even a determined individual. They are numerous and spatially disparate, but easy to achieve. 

<br/><br/>

Destroy Weapons Caches: <marker name='cache3'>Here,</marker> <marker name='cache1'>here,</marker> <marker name='cache2'>here,</marker> and <marker name='cache4'>here.</marker>

<br/><br/>

Seize Checkpoints: <marker name='checkpoint1'>Here,</marker> <marker name='checkpoint2'>here,</marker> and <marker name='checkpoint3'>here.</marker>

<br/><br/>

Destroy Portable Generators (trailer sized, powering radio towers): <marker name='gen1'>Here,</marker> <marker name='gen2'>here,</marker> and <marker name='gen3'>here.</marker>

<br/><br/>

Destroy Parked Ural Transports: <marker name='ural1'>Here,</marker> <marker name='ural2'>here,</marker> <marker name='ural4'>here,</marker> and <marker name='ural3'>here.</marker> 
<br/>
On top of these known objectives, you may also encounter targets of opportunity as you traverse the AO.

<br/><br/>

TIER TWO OBJECTIVES <br/>
These objectives require a minimum of 6 people to take, as they are moderately well guarded. Expect significant enemy resistance. There are a handful spread across the region:
<br/><br/>

-<marker name='artillery1'>Destroy Artillery Vehicle 1</marker> (the artillery vics themselves are idle and are not a threat to our paratroop forces)
<br/><br/>
-<marker name='artillery2'>Destroy Artillery Vehicle 2</marker>

<br/><br/>

-Destroy Enemy BTRs and BRDMs at their <marker name='depot'>Vehicle Depot</marker>

<br/><br/>

-Seize enemy <marker name='fob'>FOB</marker>

<br/><br/>

-Seize the crossroads at <marker name='town1'>Wrzeszcs</marker>

<br/><br/>

TIER THREE OBJECTIVES <br/>
There is only one Tier 3 objective here; it is taking the town of <marker name='town2'>Roztoka</marker>. You will need the full force of the platoon to attack it as it is heavily guarded.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The intent is for the platoon to scatter in the paradrop and then and slowly regroup, completing objectives as appropriate to the current strength of individual groups. 
<br/><br/>
This way we should quickly accomplish many Tier 1 objectives, before consolidating into larger groups to take on convenient Tier 2 objectives, and then finally regrouping as a platoon to assault Roztoka.
<br/><br/>
You will have to rely on your individual troops to exercise their initiative due to the communications limitations throughout most of the mission, so focus your briefing on setting a PLT regroup point near Roztoka and hammering out how you want your leadership to use the UGL flares to communicate. Some examples have been provided below but feel free to modify them.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
See above.
<br/><br/>

<font size='18'>FLARE COLOR MEANING</font>
<br/>
***NOTE: PLTCO May modify the meanings of these signals at their discretion. Check your maps for their notes! *** <br/><br/>
GREEN FLARE: Regroup here
<br/>
RED FLARE: Need CLS at this location
<br/>
YELLOW FLARE: Need reinforcement/general distress signal
<br/>
WHITE FLARE: Used for illumination or to mark your position.
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
<font size='18'>HOW TO USE DEMO BLOCKS</font>
<br/>
1. ACE Self-interact -> Explosives -> Place
<br/>
2. Select the demo block. It should appear floating in front of you - use the mouse prompts to place it on or next to the object you wish to blow up.
<br/>
3. Once placed, ACE interact *on the placed charge* to set a trigger. Select the M152 Rams (your clacker).
<br/>
4. Run a safe distance away.
<br/>
5. ACE Self-interact -> Explosives -> M152 Rams -> Select the charge(s) you wish to detonate. Kaboom!
<br/><br/>

<font size='18'>THE START FLAG</font>
<br/>
When PLTCO uses a scroll wheel action and then a hold action on the start flag it will paradrop EVERYONE into the marked drop zone and start the mission.
<br/><br/>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;