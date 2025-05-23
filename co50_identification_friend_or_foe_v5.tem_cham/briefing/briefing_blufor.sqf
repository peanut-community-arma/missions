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
<font face='PuristaMedium'>09 MAY 83<br/>
One week ago, 3rd Platoon (Alpha Company) of the US Army's 194th Armored Brigade began a combined forces field training exercise at Fort Knox.<br/>
Urgent orders arrived deploying the entire 194th several hundred miles to the north: An unidentified enemy army had arrived in CONUS without any warning.<br/></font>
<br/><br/>

<font size='18'>SITUATION</font>
<br/>
HQ has ordered us to take Albernhof, the site of an enemy field HQ. Ivan has set up radio jammers along the way of an unknown type, and SIGINT wants us to glean what we can from them.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
For lack of more information, most have been calling them 'Ivan'. Still nothing from higher ups on who they are or how they got here. They're aggressively pushing south from their apparent landing site in Wisconsin, disabling airbases and deploying SAM sites.<br/>
Pre-dawn scouts report a mechanized unit between us and Albernhof, equipped with wheeled IFVs and tank destroyers they didn't recognize.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
The USAF says they can't fly CAS sorties—they have their hands full with SEAD and reestablishing air superiority. OPFOR has taken K.I. Sawyer AFB and is flying aircraft identical to our own, making IFF near impossible.<br/>
Neither the midwestern National Guards nor the Canadians are able to assist.<br/>
We'll be pushing through on our own.
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
• Find and take intel from the antennae <marker name='ant1'>near the hamlet</marker> and <marker name='ant2'>at Lampachshof</marker>.<br/>
• Take and hold the <marker name='ophq'>enemy field HQ</marker> near Albernhof.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Intel says the enemy has few or no heavy armor but has significant amounts of advanced anti-tank weaponry. Infantry should take care to screen carefully for the tanks.
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
There are three M113s in addition to our M60s. Each seats 13.<br/>
The command (unarmed) M113 has been marked as a repair and rearm vehicle for the tanks.<br/>
There's 6 spots for tank riders on each M60.<br/><br/>
Having a 148 in your inventory will allow you to call in Huey supply drops using the support menu, with a 20 minute cooldown.<br/>
The supply crates have large amounts of medical supplies and small arms ammunition, and a small amount of LAT.<br/><br/>
The markers for the antennae are not exact, follow your ears.<br/>
Adjust your music volume, if you want.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;

player createDiarySubject ["Intel", "Intel", ""];