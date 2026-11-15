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
September, 2009
<br/>
It has become clear that the Chernarus goverment has no intention of suppressing the anti-Russian National Party, also known as NAPA.
<br/>
They have carried out multiple terror attacks on Russian soil, so now we must take action.
<br/>
The Ministry of Internal Affairs, MVD, are taking part in the deployment across the Chernarus border with the goal of destroying a known NAPA training ground located in the old <marker name='marker_obj'>Soviet military base</marker> built outside the town of <marker name='marker_dep'>Kamensk.</marker>
<br/>
Intelligence suggests the town of <marker name='marker_dep'>Kamensk</marker> is not actively garrisoned by NAPA insurgents, but will still have an active patrolling presence outside of the civilian homesteads present.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
NAPA forces are armed with 7.62 AKM rifles, wearing surplus woodland and flecktarn camouflage.
<br/>
Limited number of armed technicals and BTR-60s.
<br/><br/>
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
- Eliminate NAPA presence from the town of <marker name='marker_yar'>Stary Yar.</marker>
<br/>
- Eliminate NAPA presence from the town of <marker name='marker_dep'>Kamensk.</marker>
<br/>
- Control the <marker name='marker_obj'>Kamensk Military Base.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Keep to the high ground for majority of the operation, only deviating for the town of Kamensk if necessary.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Operation will be on foot.
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
- Designated Marksman rifle and magnified optics are not available to the wider curated arsenal.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;