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
10 JULY, 20??. In the face of a year-long Russian assault in [REDACTED], the US Army has been called upon to act. We are carrying out what will hopefully be a breakthrough attack in this region of Ihantala, before the enemy can get properly entrenched. They have already built rudimentary fortifications but our maneuverability and firepower should carry the day.
<br/><br/>
The operation begins at 0200; sunrise is around 0210. The forecast is overcast with a possibility of rain. We will be assaulting first across fairly open terrain interspersed with ditches. Behind the river, in enemy lines, the terrain is more forested with lower visibility.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
We are facing a motorised rifle battalion dug in behind the river. The bulk of the enemy defenses are behind the river, waiting to receive our attack. We have had reports of infantry teams operating in the woods around Hakamäki.
<br/>A detachment from their division tank regiment is also active in the area, so expect potential armored reinforcements. The motorized rifle regiment are primarily equipped with BMP-2 and BTR-60PB/80/80A vehicles, while the tank regiment exclusively operates T-72 tanks.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>

One platoon of Bradley mechanized infantry, riding in M2A2 vehicles. Each squad has a dedicated vehicle crew to compliment the infantry squad. Each Bradley is armed with three 2-round TOW-2A missiles, two bins of M242 autocannon (HEI-T for soft targets; APFSDS for armored vehicles) and M240 machine gun loadout.
<br/><br/>
Each Bradley carries extra supplies, in the form of medical supplies, ammo, four M72A6 launchers, and four HEAT rounds for the MAAWs.
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
Break through the enemy defensive lines, and capture the two enemy field HQs.<br/>
- <marker name='mk_obj_1'>Objective 1</marker><br/>
- <marker name='mk_obj_2'>Objective 2</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Each Bradley should operate in close concert with each other, since their firepower is critical to our success. Do not be tempted to split the platoon, we are understrength as it is. Since the enemy has had some time to prepare, be on the lookout for machinegun nests, bunkers, and entrenched vehicles. Bunker marks on the map are only approximate. Take full advantage of the dips and rises in terrain to keep the vehicles safe as they will be vital to our success.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the provided Bradleys to bring the infantry close to the enemy before engaging. Please take care and give each Bradley a wide berth when navigating through rough terrain.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
The command M113A3 is set up as an ACE Repair and Medical vehicle. Plt HQ should facilitate vehicle repair as appropriate in the field.
"]];

/* ================================================================================
	SIGNALS
	- Outline of how to best communicate between elements.
	- Outline of what specific radio features are in play.
*/

private _signals = ["diary", ["Signals","
<br/>
All SLs, Sierra commanders, PltCo and PltSgt should be on the 148 command net. Sierra crews start on an unused (Sierra) channel, and should switch to the appropriate squad net after briefing.<br/><br/>
PltCo should decide during briefing how best to utilize the Bradleys, and whether to attach them to the platoon or to squads. <br/><br/>
The hotkey for switching radio channels is 'CTRL + Up/down arrow' for your selected main radio (by default).
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Each Bradley seats 3 crew and 6 passengers. The M113A3 seats 2 crew and 2 passengers.
"]];

player createDiaryRecord _administration;
//player createDiaryRecord _signals;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
