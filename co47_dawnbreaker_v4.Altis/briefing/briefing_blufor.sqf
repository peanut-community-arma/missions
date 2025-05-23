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
Recent talks with members of the Altis Armed Forces (AAF) have gone horribly wrong, and the AAF have striked first. <marker name='FOB'>NATO FOB Manchester</marker>, located at the southern peninsula of Zaros Bay, has been overran and the AAF are looking take more ground.
<br/> 
NATO High Command believes for this moment to be a critical chance for the AAF's offensive to be stalled, and as such, has authorized an operation for a counterattack against the now AAF held FOB. As the crack of dawn approaches, NATO forces insert into the AO and await further instruction.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Altis Armed Forces 1st Regiment - Bravo Company with support from Air Wing - 2nd Helicopter Squadron
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
One Platoon's worth of NATO forces with support from Mobile Anti-Air SF attachment, callsign SCYTHE.
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
-Retake <marker name='FOB'>FOB Manchester</marker> from the AAF.
<br/>
Eradicate AAF's presence from the town of <marker name='Sfaka'>Sfaka</marker> to prevent any further counter attacks against FOB Manchester.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Our goal is to fully wipe out AAF's presense from the western half of this peninsula, starting with FOB Manchester and then the town of Sfaka to the south.
<br/>
AAF is not aware of our presense currently. However, prepare for multiple counter attacks to occur from the west to south-eastern arc as you move through the AO, be it naval or air threats.
<br/>
Preliminary information from what limited air recon we have been able to do, shows that the town just to the south, Sfaka, had been the AAF's primary staging grounds. So once the FOB is secure, advance and sweep through the indicated area.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Movement plan is at the Platoon Commander's discretion.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
A Special Forces Anti-Air attachment, callsign Sycthe, has been attached to your element to deal with any air threats the AAF will throw at you. 
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
N/A
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
N/A
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;