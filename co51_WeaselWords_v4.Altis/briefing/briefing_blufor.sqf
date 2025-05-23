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
It is May 9, 2035. We are trying to retake the town of Chalkeia from the AAF, with the help of our friends from the West. Two obsolete Wiesel 2 tankettes have unfortunately 'gone missing' from their inventory and have arrived in our hands, with a few anonymous deliveries stuffed full of surplus NATO gear. We will be using this equipment alongside some armed vehicles to blitz through from Aktinarki while most of the regional forces are occupied with other assaults in the area. We will be setting off in the early morning, 0500. The forecast is clear. The stretch between Aktinarki and Chalkeia is relatively flat with a gentle upslope, while the area immediately around Chalkeia is hilly. Vegetation is sparse throughout.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
5th Company mechanized infantry from the AAF's 1st Regiment, equipped with Pandur II and FV510 Warriors. The majority of the AAF forces are garrisoned in Chalkeia proper but expect vehicle patrols around the outskirts of the hills. Our scouts have also pointed out some AAF bunkers in the area, which have been marked on your maps. If any reinforcements arrive, expect them to come from the north and northeast, focusing on the MSR running through the AO.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of motorized FIA guerillas supported by two Wiesel 2 (MK20). Each squad has been assigned an unarmed truck (seats 13) and one HMG Offroad (seats 3), with one additional HMG Offroad for PltCo's use.
<br/>
- 2x Wiesel 2 (MK20), seats 3<br/>
- 4x Offroad (HMG), seats 3<br/>
- 3x Truck, seats 13<br/>

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
Take and hold Chalkeia, and repel any AAF counterattack.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We should take advantage of our mobility to skirt around Chalkeia, particularly since the open downslope will give the enemy better room to maneuver and potentially put us at a disadvantage. The AAF have set up the town expecting to be able to gun down any infantry assaults. The bunkers may also hamper our ability to do a direct frontal assault, even if the areas around the MSR may be garrisoned and checkpointed. 
<br/><br/>
Once we get into town, we will be engaged in brutal CQC with the streets acting as funnels for firepower. However, we will simultaneously have to keep an eye out for any QRFs, so it may be prudent to quickly clear and establish fallback points in case the AAF show up suddenly.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the vehicles to get close to Chalkeia, then move according to platoon commander's discretion. No backup vehicles are available for you.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
If present, PltSgt should help coordinate the Sierra vehicles. Otherwise, use the Wiesels as platoon commander sees fit.
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
If you take the G36s, make sure you have the right ammo! Contact admins if anything role-critical is missing from loadout. Sierra crew are set as engineers and are capable of basic repairs with a toolkit.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;