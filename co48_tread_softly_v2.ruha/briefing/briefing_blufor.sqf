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
199X, in the universe where the US Army adopted the fish gun. We are advancing into this area of Ruha, and in order to facilitate our northward advance, we need to control main logistical routes. As a vanguard for the main attacking force, today we are tasked with securing the outposts of Kontolanmäki and Latvamuilu. This should cement our control over the highway running nearby and put us in a favourable position for future operations.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
About a company of mechanized Russian Armed Forces, riding MT-LBs, BTR-70, and BTR-80/80A. Intel suggests <font color='#c64343'>minefields around Latvamuilu</font>, a mixture of PFM-1 anti-personnel mines in fields and forests and PMA-3 anti-armor mines on the roads. 
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of US Army Forces. The platoon is assigned the following vehicles:<br/>
- 3x M1237 MRAP (O-GPK/M2), seats 11<br/>
- 5x M1240 (O-GPK/M240), seats 5<br/>
The intention is for each squad to use 1x M1237 and 1x M1240, with two M1240s for PltHQ and the MMG team. 

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
Clear out any enemy presence in <marker name='mk_kontolanmaki'>Kontolanmäki</marker>. Take and hold the village of <marker name='mk_latvamuilu'>Latvamuilu</marker> and repel any QRF.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
While the PFM-1 mines are unlikely to kill an individual, they will maim targets and cause a significant slowdown to the pace of our advance. We have only very approximate ideas of where the minefields are, be on the lookout throughout the mission. Our mine-resistant vehicles are impervious to anti-personnel mines, but vulnerable to anti-armor mines as well as any enemy anti-tank weaponry. Since we have no mine detectors, the platoon is advised to be careful especially when going through open terrain.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Maneuver on foot or in the provided MRAPs, at PltCo's discretion.
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
You intentionally can't bring more LAT tubes because I'm mean that way. Contact admins if anything role-breaking is missing from your loadout.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;