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
A <font color='#ffb5b5'>heavily armed insurgent group recently took over some islands</font color> off the coast and are gearing up for some kind of major attack. Ordinarily we could just bomb them to oblivion, but good intel says <font color='#ffb5b5'>they've acquired a sizable amount of nuclear material.</font color>
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Lots of well-armed infantry dug in on the islands or transported by boat. <font color='#ffb5b5'>There won't be any ground vehicles to worry about, but maybe some mounted weapons.</font color> The insurgents know we'd come for them and know they're outgunned, so watch out for sneaky tactics.
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
• Sweep through the islands and neutralize the insurgent forces
<br/>
• Locate and secure the stolen nuclear material
<br/>
    • Exactly 6 canisters of nuclear material must be secured
<br/>
    • An inert example of the nuclear material is at spawn so you know what to look for
<br/>
    • You don't need to extract the nuclear material, just report its location to high command
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Use the boats to ferry our infantry between the islands and provide fire support in the meantime.
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
The boats hold 11 people - 3 crew and 8 passengers.
<br/>
The boats can return to the harbor for resupply if needed.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
