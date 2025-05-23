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
It is mid-September, 2026. Russia has begun a full scale invasion of Chernarus. We are the Chernarus Defence Force 'Peanut-jobs' SOF group. As part of an attempt to disrupt their logistical network, we will be raiding the valley area north of Zelenogorsk at the same time as friendly forces fire on Zelenogorsk railyard. Taking advantage of our superior night-fighting equipment, we will depart from Balota Airstrip and insert via helicopter into the AO, raiding targets of opportunity in <marker name='mk_dam'>Tishina Dam</marker> and <marker name='mk_lumberyard'>the old lumberyard</marker> before extracting.
<br/><br/>
We will be primarily fighting in a heavily-wooded valley with limited clearings for landing zones. The forecast is clear, and tomorrow is a full-moon night. Our operation commences at 2215, and sunrise is approximately at 0500.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
An understrength company of motorized professional Russian Armed Forces, supported by numerous ChDKZ militia infantry. There is an <marker name='mk_outpost'>small fortified outpost</marker> in between our objectives. We know that there are mechanized sections stationed in the villages of <marker name='mk_myshkino'>Myshkino</marker> and <marker name='mk_soskovna'>Soskovna</marker>, so care should be taken if attempting to make use of clearings near either village as landing sites. Enemy air support may come from Grishino airfield to the north.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of CDF SOF forces supported by up to three helicopter pilot groups. As part of this mission, you have access to the following vehicles.
<br/><br/>
- 3x Mi-24G (seats pilot, copilot and 8 passengers), equipped with S-8 DF FAE, S-8 KOM HEAT and ZT6 'Mokora' rounds<br/>
- 2x Mi-24D (seats pilot, copilot and 8 passengers), equipped with S-8 DF FAE, S-8 KOM HEAT and 9M120M rounds<br/>
- 3x Mi-8AMT (seats pilot, copilot and 16 passengers)
<br/><br/>
In addition, most combat roles have access to LAT (AT4s and NLAWs). The roles that DO NOT have LAT access are:<br/>
- Officers (SL, PltCo)<br/>
- Combat life savers<br/>
- Autorifles
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
Raid <marker name='mk_dam'>Tishina Dam</marker> and <marker name='mk_lumberyard'>the lumberyard</marker>, destroying enemy men and materiel as the opportunity presents. Extract from the AO after the raid.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Make full use of our superior nightvision and GPS equipment to get the advantage, since we are heavily outnumbered. Command advises flying dark, relying on our NVGs for vision in order to maintain the element of surprise. 
<br/><br/>
In preparation for the mechanized nature of our enemy, nearly every member of the platoon should have access to LAT weaponry. However, we have no native MAT capabilities and will have to rely on close air support to fend off more-armored foes. 
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Insert by air to the AO. Platoon commander has full discretion over the selection of landing zones, and of the method of insertion (e.g. landing versus fast-roping). Ideally, extract out via helicopter once the mission is complete.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Five Hinds have been outfitted for CAS. There is no resupply or repair available for the helicopters, so pilots should take care and keep track of fuel and ammo.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Good targets of opportunity include fuel and ammo trucks, ammo dumps and undefended or parked enemy vehicles. Use any means at your disposal to destroy them.<br/><br/>
If necessary, a <marker name='mk_supply'>single resupply box</marker> is available at the airfield to be sling-loaded into the AO.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Notes on ammo: the available tracer rounds are non-armor-piercing, while the non-tracer rounds are all armor-piercing.<br/>
Players have access to GPS.<br/><br/>
Contact admins if anything role-breaking is missing from your loadout.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;