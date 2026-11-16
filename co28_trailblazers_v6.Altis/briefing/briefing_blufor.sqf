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
The AAF has captured a pair of NATO and Altian VIPs and have been keeping them on the move and hidden during negotiations. The VIPs have just been spotted in Syrta and we are go for a smash and grab before they move again.
<br/>
The extraction team will be moving by helicopter flying NOE through Ammolofi Bay and the valley inland. <font color='#ffb5b5'>Our job is to blaze the trail ahead of them by destroying any AA threats in said valley.</font color>
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
<font color='#ffb5b5'>The AAF infantry will be supported by light and medium armor, including Warriors.</font color> The AAF set up a depot near the airfield, and there will be garrisons in the valley protecting those. The depot, airfield, and garrisons are all probable AA sites.
<br/><br/>
SEAD will eliminate the large AA threats as you insert. <font color='#ffb5b5'>Your responsibility is clearing out the small stuff: basic AAA and IR SAM launchers.</font color>
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
SEAD munitions are scheduled to impact as we enter the AO. Shortly after, <font color='#ffb5b5'>two decoy UAV helicopters will pre-run the infil flight route to draw and reveal AA fire.</font color> The extraction team will follow 20-30 minutes after that.
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
• Locate and destroy AA threats in the designated valley <font color='#ffb5b5'>before the extraction team flies over.</font color>
<br/>
    • Note that any autocannon is also an effective AA threat.
<br/>
• Withdraw to the coast and exfil.

"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
This plan calls for speed and violence. We have a small window of time to clear the path for the extraction team. We'll have to play it fast and loose on the way in. But once the extraction team is through, we can take our time on the way out.
<br/><br/>
Make landfall, reach a vantage point, identify likely AA sites, and pounce.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
It will be safest to land on either side of Ammolofi Bay rather than go straight in. However, the speed may be worth the risk.
<br/>
It's highly likely that we will need to split up to reach all of the targets in time.
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
Each boat holds 5 people. Extra boats can be spawned at the crate.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
