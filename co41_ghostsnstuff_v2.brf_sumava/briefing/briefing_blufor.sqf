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
Separatists have pushed south through the region and reached the MSR leading northeast from Sušice, where they have begun digging in. They are establishing strongpoints at the mountain pass of <marker name='marker_dobrsin'>Dobršín</marker> and the river crossing of <marker name='marker_cepice'>Čepice</marker>. We believe their local headquarters is in <marker name='marker_budetice'>Budětice</marker>. <font color='#ffb5b5'>Our mission is two parts: break up those strongpoints before they can solidify and then sack the separatist headquarters.</font color>
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The separatist forces are a militia that has been trained and equipped by clandestine Russian elements. The infantry will be <font color='#ffb5b5'>supported by a mixture of technicals and Russian armor, including BTR-80, BTR-90, and T-72. Basic AAA has also been spotted.</font color>
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A detachment of Ghost Hawks are providing transport and fire support to the platoon.
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
• Assault and clear the separatist forces out of Dobršín and Čepice.
<br/>
• Assault and capture Budětice.
<br/>
• Hold Budětice against counterattack.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The helicopters will deliver the infantry to the objective zones. At that point, the infantry will work their way through the towns while the helos watch over and sling Hellfires at any hard targets.
<br/>
You can split up to tackle Dobršín and Čepice in parallel, or go one at a time. It's up to you.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
The initial insert will be by helicopter. It's a pretty long walk from the first two towns to Budětice, so you'll probably want to airlift over the mountains.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
The Ghost Hawks are equipped with HE FFARs and laser-guided Hellfires. They will depend on the infantry to lase targets for the Hellfires. FAC, PLT, and SLs have laser designators.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Each Ghost Hawk carries 12, including the pilot. Rearm/repair/refuel is available <marker name='marker_rearm'>here</marker>.
<br/><br/>
Pilots: Press Ctrl+Tab to swtich between Hellfire LOAL modes and allow you to loft over hills.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
