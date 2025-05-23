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
23 OCT 2037. The civilian Tanoan government has collapsed, and CSAT forces are exploiting the power vacuum to consolidate power in the Pacific. They have recently moved experimental chemical weapons to the abandoned Red Spring surface mine. In response, the elite Precise Neutralization Unit Taskforce (PNUT) has been authorized to infiltrate the island with the objective of destroying these chemical weapons. 
<br/><br/>
Our objective today is to destroy a nearby electronic weapons suite somewhere on the outskirts of the Blue Pearl industrial port, which will then allow us to direct a strike onto the weapons facility itself.
<br/><br/>
The operation begins at 0300 on a full-moon night. The forecast is initially lightly foggy, but conditions should clear over the course of the night.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Spotters have relayed that the Blue Pearl industrial port is under control of a motorized infantry company, operating mostly Otokar vehicles. Additional infantry patrols are common in the region as CSAT has placed the area under de-facto martial law. We expect most regional forces to come from the industrial port, with potential enemy air support coming from La Rochelle Aerodrome.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to one platoon of PNUT special forces. A recon spotter, equipped with a remote target designator and UAV terminal has been attached to the platoon.
<br/><br/>
Six RHIBs have been provided for insertion and extraction. Each RHIB seats 13.
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
Destroy the enemy electronic warfare suite on the outskirts of the Blue Pearl Industrial Area. Afterwards, call in a strike on the <marker name='mk_quarry'>designated target</marker> at the Red Spring surface mine.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Use our superior night vision and stealth capabilities to evade or overwhelm CSAT patrols in the area. Note that the target may be pre-lased before the EW suite is destroyed. Command strongly advises that the platoon be well away (>500m) from the target area before the strike is called. 
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Insert using the provided RHIBs then proceed to the objective sites on foot. Exfil via RHIB outside of the AO.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Once we have confirmation of the destruction of the enemy electronic warfare suite, the USS Liberty will be on standby to provide a cruise missile strike (callsign PERUN). Be aware that the missiles will take about a minute to arm after authorization.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
All leadership should have access to demolition blocks and clackers. Team leaders start with two charges and a clacker in their backpack.
<br/><br/>
The recon spotter is the only role with access to a UAV terminal and remote target designator. The remote target designator MUST be used to lase a target for the Venator missile strike. The target designator may be set up on any suitable flat ground that has line-of-sight onto the objective. The recon spotter should then use their UAV terminal to call in the missile strike when able.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Note that only the 3D Elcan SpecterOS scope works with nightvision goggles. Use your CBA weapon toggle to switch between modes.
<br/><br/>
<font size='18'>OPERATING THE MK41 VLS</font>
<br/>Target designation:<br/>
- Deploy the Target Designator on flat ground with line-of-sight to the target<br/>
- Disable 'Autonomous' targeting in the UAV terminal<br/>
- Paint the target (left-click)<br/><br/>
Firing the Mk41 VLS:<br/>
- Take control of the Mk 41 VLS gunner in the UAV terminal<br/>
- Lock vehicle target ('R' key by default) and wait for good lock (solid diamond outline)<br/>
- Fire missile. Don't get hit.
<br/><br/>
<font size='18'>SPECIAL THANKS</font>
<br/>
CPen for the NVG script. Flying for the mission idea. Victor for reminding me how to make the cruise missile thing work.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;