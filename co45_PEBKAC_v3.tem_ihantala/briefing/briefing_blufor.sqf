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
10 SEP 2050, 1905. In a freak private jet accident, Peanuthead Integrated Security Solutions CEO's stash of laptops has been jettisoned out above a rural area in Ihantala. Our enemies, who are numerous and uncool, have immediately seized on this opportunity to hack all of them remotely. Due to a recent string of cost cutting measures, our only recourse is to go in and reset all these laptops by hand before these villains can extract the precious data on them.
<br/><br/>
Sunset is in 5 minutes, but we've got NVGs so it's fine.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
An improbably large group of black hat hackers, identifiable by their black camo, black gear, and black hats. They are strictly on foot or bike.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A platoon of Peanuthead Integrated Security Solutions securi-solvers, with integrated Certified Technicians. Only the Certified Technicians (and PltCo) are certified to carry out reboot procedures.
"]];

/* ================================================================================
	MISSION
	 - Describe any objectives that the team is expected to complete.
	 - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission = ["diary", ["Mission", "
<br/>
<font size='18'>MISSION</font>
<br/>
Reboot at least half of the laptops, check Tasks for exact count. Run away/expeditiously retreat afterwards.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
It is company policy to hotglue a red chemlight onto the lid of every laptop, which is really going to come in handy now. Our laptops are also extensively waterproofed and totally work underwater, which is bad because this probably means you have to dive into the lake at least a little bit.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Move through the AO on foot.
<br/><br/>

<font size='18'>FOR TECHS ONLY - REBOOT INSTRUCTIONS</font>
<br/>
1. Locate device to be rebooted<br/>
2. Using the CertTech 'Scroll Wheel' method, locate the reboot button on the laptop<br/>
3. Firmly press and hold the reboot button for the indicated amount of time<br/>
4. Wait for the chime to announce a successful reboot<br/>
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Contact admins if anything role-breaking is missing from loadout.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;