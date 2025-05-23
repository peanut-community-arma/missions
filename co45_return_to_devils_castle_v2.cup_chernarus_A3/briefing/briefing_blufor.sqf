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
<font size='18'>Wait until mission start before leaving the marked zone or looting. PltCo should start the mission by interacting with the flag.</font>
<br/><br/>
<font size='18'>SITUATION</font>
<br/>
2011 JANUARY 7, 1600. Setting out from your HQ at Stary Sobor, you went on some counter-insurgency actions south of the the Severograd area. There, your CDF platoon was ambushed and captured. You've managed to break free and hole up in an abandoned WW2-era outpost based in the ruins of the Devil's Castle. Meanwhile, any ChDKZ forces in the area now know exactly where you are, and will be coming in force.
<br/><br/>
The CDF are mounting a rescue mission, but their own operation will not begin for a while. And even then, the CDF helps those who help themselves...
<br/><br/>
At this time of year, night falls fast, and the sun will likely completely set by 1700. Bring illumination.

<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
We are surrounded by ChDKZ insurgents with Russian military hardware. They have regional bases to the northeast, in Severograd and to the southwest in Grishino. In particular, our recon suggests Russian activity in the <marker name='mk_airfield'>airfield</marker> west of Grishino. We also know that ChDKZ cells seem to have a local vehicle depot in and around <marker name='mk_gvodzno'>Gvodzno</marker>.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of CDF militia reservists. Expect no reinforcements.
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
- Repel any initial assaults on your position.<br/>
- If an opportunity presents itself, rescue yourselves.

<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
This castle is a known hub for arms smugglers, so search the grounds for weaponry. The secondary <marker name='mk_outpost'>northern ruins</marker> have some static turrets and other supplies that may be of use. There is also a wrecked BTR from the CDF's first failed attempt to relieve us - there may still be supplies inside. Look for the smoke cloud.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Arm yourselves with the contents of the armory here - mostly old wartime rifles. You may have to seize or scrounge more, especially anti-tank ammunition - coordinate with your fellow POWs if you need to make scavenging runs. 
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
When the signal is given, escape the area by any means possible.


"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Yes, this really does just have the regular radio loadout. Corpse cleanup is set to 2m. Contact admins if anything role-breaking is missing from your loadout.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;