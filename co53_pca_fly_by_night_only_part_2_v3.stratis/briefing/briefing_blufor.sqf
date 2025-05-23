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
There has been rising tensions because the AAF have begun to seize cargo ships moving through the aera. Negotiations have broken down and the government has requested that the seized ships be recovered by force if necessary. 
<br/><br/>
The Isle of Stratis is a key part of the AAF’s radar defence network. Disabling the radar and communication infrastructure will leave the AAF on the mainland blind to air threats from the south. This will allow for the upcoming invasion of Altis to be significantly less costly.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
The AAF have recently started a modernization program, while not complete they do have modern small arm and a few modern vehicles already.  You could probably steal their ammunition if necessary, however don’t expect it to be as good as ours.
<br/><br/>
We have intel that the AAF have AA sites at the Stratis Air Base and the Agia Marina military range. 
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Around a platoon of USMC Marine Raiders (this is us) will be the only infantry force landing on Stratis
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
We will be destroying most if not all of the radar and communication infrastructure on the island. 
The objevtives at Mike-26, Point Centaur, and Kamino Firing Rage have allready been compleated
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>

<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You will use the helicopters to insert in the AO, speed is of the utmost importance, so it is advised to use the helicopters to move between objectives 
<br/><br/>
Pilots should fly low to avoid being engaged by SAM sites.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
the communication antennas should be destroyed by 1 M112 (x4) charge, though more may be required for larger targets
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
a UH-1Y can carry 9 passengers
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;