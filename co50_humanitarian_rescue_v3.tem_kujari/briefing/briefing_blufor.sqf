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
An IDAP mission to bring supplies to the citizens of <marker name='marker_samari'>Samari</marker> has gone awry as the delivery coincided with the quarterly meeting of the insurgent cell operating in the area. The insurgents have taken the 5 IDAP workers hostage and tried to contact the local <marker name='marker_IDAP'>IDAP camp</marker> for a ransom, but they had the wrong number and called the commander of our UN peacekeeper force instead. After deploying us nearby, our commander tried to contact a <marker name='marker_UNOutpost'>small outpost</marker> of CDF UN peacekeepers but has received no response. After being informed of the situation, the top <marker name='marker_UNBase'>UN peacekeeping command</marker> has ordered our platoon to investigate the outpost and rescue the IDAP hostages.
<br/><br/>
Be advised public transit is still running at this time.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The insurgents recently spent all their money on shiny new guns and have no body armour. There is at least a battalion of them. They have recently taken control of a dealership of light trucks so expect them to have many technicals.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A mechanized squad of CDF peacekeepers are still at <marker name='marker_IDAP'>the IDAP camp</marker>. They have been ordered to stay there to keep the remaining IDAP workers safe.
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
We have two objectives:
<br/><br/>
-find out what happened to the squad of UN peacekeepers at <marker name='marker_UNOutpost'>their outpost</marker>
<br/>
-rescue the 5 IDAP hostages being held in <marker name='marker_samari'>Samari</marker> and return them to <marker name='marker_IDAP'>their camp</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Head north to the <marker name='marker_UNOutpost'>UN outpost</marker> and find out what happened to them. After that continue north to <marker name='marker_samari'>Samari</marker> and look for the IDAP hostages, likely near the humanitarian aid they were delivering to the civilians. Once the hostages are secure bring them further north to the <marker name='marker_IDAP'>the IDAP camp</marker> and leave them there.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
As a mechanized platoon we have BTR-70s integrated into each squad that can be used for rapid movement within the area of operations.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
The KPVTs on the BTRs and the M2 and Mk. 19 on the M1117 can be used effectively for support as long as the platoon can maintain a sufficient infantry screen.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Avoid civilian casualties.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
We have three BTR-70s and one M1117 available. They both have an HMG and the M1117 also has a 40mm grenade launcher. 
<br/>
The BTRs seat 20 and the M1117 seats 9, including crew seating.
<br/>
The vehicles are loaded with ammo and medical supplies.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;