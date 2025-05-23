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
8 APRIL 203X. Akhanteros' Altis Armed Forces and NATO have entered into a hot conflict, an ideal situation for us as we attempt to increase CSAT influence in Altis. An AAF patrol have captured some FIA members, and we believe that these FIA rebels may have be able to prove the involvement of CTRG under the guise of British special forces. Proving this would be quite the political coup for us. As a result, we are racing to retrieve both the captured FIA members as well as any intel from their interrogation, but we believe NATO and CTRG will be doing the same. Our operation today will be publicly sanctioned as a counter-terrorism exercise by the AAF government. 
<br/><br/>
The operation will begin just before dawn, 0440. The weather is very foggy with plenty of cloud cover, resulting in low visibility. The terrain around Panochori and Neri is very mountainous with sparse vegetation, broken up with lots of small structures. <font color='#649cf5'>Civilians are present in the AO.</font>
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Normal AAF presence in the area has been scaled back amidst the fighting. Right now, intel reports a regiment-sized element of FIA militia with NATO support control the towns of Neri and Panochori. They are largely equipped with a mix of black-market small arms, but they also allow NATO and CTRG forces free movement within their territory. We anticipate hostile strongpoints to be set up on local vantage points, manned by both FIA units and potential NATO combatants. The enemy are extremely well garrisoned in Panochori, but their presence in Neri consists mostly of street patrols with fewer garrisons. We have identified some AA positions, held by combatants with Titan MPRL AA launchers, close to Neri. Their positions are marked on the map.
<br/><br/>
We are free to open fire on <font color='#649cf5'>positively-identified FIA targets</font>. If NATO forces do come out in support of their paramilitary allies, we may act in <font color='#649cf5'>self-defense</font> only - officially we are supporting government forces, not fighting NATO. NATO's presence are mechanized infantry forces, riding in Badgers with a limited number of Namers. We believe there may also be a unit of CTRG attempting to secure the FIA informants for themselves.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
One platoon of a CSAT strike force, supported by up to six helicopters providing air support. The helicopters are provided by our AAF partners. The following assets are available for use:<br/>
- 6x AW159 Wildcat (seats 2 pilot/copilot, 8 passengers)<br/>
All helicopters are fast-roping capable. The AW159 Wildcats are configured with one M621 Cannon Pod, and one rack of DAGR laser/infrared guided air-to-surface HEAT warheads. FAC has access to a laser designator. Only pilots have access to NVGs.
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
Retrieve the four FIA informants from Panochori and Neri. Seize any intel found nearby; multiple intel files or laptops may be present.<br/>
Extract the informants to a safe location by air (such as the helicopter service point), then extract the SF platoon by air.<br/><br/>

If the FIA informants die, the mission will be considered a partial success only. In the case of their death, the intel must be retrieved.
<br/>
<br/>
<font size='18'>INFORMANT LOCATION INTEL</font>
<br/>
Two of the hostages are in a shed in the <font color='#649cf5'>compound just north of Panochori</font>, grid reference 052115. We have received word that the hostages in Neri are likely in a <font color='#649cf5'>two-story building directly opposite the church</font>, grid reference 041118. Any evidence extracted from them should be in or around the locations where they are being held.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The platoon lacks AT at the fireteam level, so we will have to rely on CAS to deal with any vehicles that our UGLs or scavenged AT can't take out.
<br/><br/>
Take some care to limit collateral damage to preserve CSAT's reputation with the Altian people and government. Only target buildings that are housing known combatants.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Insert by helicopter then move on foot through the AO. Landing zones should be organized by PltCo with the input of the pilots and FAC.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Helo pilots (callsigns Phantom 1 through Phantom 6) are on standby to provide close air support to the platoon. Coordinate via FAC to designate targets for air support. FAC has access to a laser designator to lase targets for Phantom's DAGRs. Use of coloured smokes or flares are recommended to minimize miscommunication.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Phantom pilots are tasked with providing transport, recon and close air support to the CSAT forces. Phantoms may switch vehicles at platoon's discretion back at the <marker name='mk_lhd'>LHD</marker>. Helicopters can be rearmed, refueled and repaired at the <marker name='mk_rearm'>service point</marker> set up at a dirt strip nearby. Land the helicopter anywhere in the marked area and turn off the engine for servicing to begin. Do not lift off until you have recieved the all-clear message.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size='18'>HELICOPTER REPAIR</font>
<br/>
(I gave up on a scripted solution) Helicopter pilots are set as engineers by default, allowing limited field repairs. At the helicopter service point, there is a Typhoon fuel truck, an ammo truck, and a repair depot, all of which are set to be repair vehicles/points. This should allow helicopter pilots to take and use the toolkits inside and ACE-interact with their helicopters to fully repair them.

"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;