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
UN peacekeepers have been deployed to Pulau as an unprecedented series of typhoons continues to devastate it. The local government has collapsed and a number of gangs have taken this opportunity to seize power and loot.
<br/><br/>
<font color='#ffb5b5'>We've received word there are some civilians left in Loholoho that weren't able to evacuate to higher ground.</font color> They are now sheltering from both the storm and the gangs. We suspect they'll be holed up in some of the two-story buildings. Those are marked on the map in purple. <font color='#ffb5b5'>We're tasked with locating and escorting those civilians out of Loholoho.</font color>
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
There are ragtag gangs marauding throughout the area. They are lightly armed but numerous. However they may have commandeered equipment from the local police forces.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
One platoon of Turkish peacekeeping forces.
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
• Sweep through Loholoho, locate the civilians, and escort them back to higher ground (Our starting point).
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The storm is adding an extra layer of danger and confusion. IFF will be difficult outside of very short range. Move cautiously and stay close together.
<br/>
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size='18'><font color='#ffb5b5'>!!! WARNING !!!</font color></font>
<br/>
If someone goes unconscious underwater, they will drown! Be careful and watch your buddies.
<br/><br/>
Notes:
<br/>
• Cable ties are available in case civilians need to be re-cuffed for escorting.
<br/>
• The water in Loholoho is too deep to sprint or go prone.
<br/>
• Launched grenades will not detonate underwater.
<br/>
• The lack of smoke is intentional. The wind makes it useless.
<br/>
• The terrain disappears if you look down at a certain angle. Just some Deformer weirdness.
"]];


private _special = ["diary", ["Special Intel","
<img image='briefing.jpg' width='400'/>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
player createDiaryRecord _special;
