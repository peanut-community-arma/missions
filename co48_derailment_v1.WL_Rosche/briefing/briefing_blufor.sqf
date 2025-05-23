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
It is still the year 19-don't-worry-about-it. We are the Corroborean Army, and we continue to be fighting against the Derventio Armed Forces. High command is convinced that this is the assault that will truly end the stalemate once and for all, for real this time.
<br/><br/>
We have recieved word that sympathetic partisan forces in the region have sabotaged a Derventio supply train just north of our lines. We have hastily assembled this strike force to capitalize on this opportunity. Your mission today is to destroy men and supplies around the wrecked train, then retreat south back into friendly territory. Our operation begins at 1700. The forecast is clear.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Some number of Derventio infantry dogs.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of stalwart, brave Corroborean Army regulars.
<br/><br/>

<font size='18'>SIGNALS</font>
<br/>
Refer to Administration tab if radio channels aren't properly set/if it throws an error.
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
Assault the derailed train. Find and destroy as many enemy supply caches as possible, then retreat south past the marked blue line.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
This is a single-engagement plan, ideally. We expect most of the enemy to come from the northern arc of the AO, especially from the roads directly north or from Klein Bunstorf. Remember, Derventio military supplies tend to come in flat, green or brown stacked boxes. TNT charges and clackers have been provided for your use. Be wary of cookoff.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Walk, the AO is only 800x800m.
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
<img image='images\an-prc-77.jpg' width='448' height='281'/><br/><br/>

<font size='18'>RADIO TUNING</font>
<br/>
To set frequency on the AN/PRC-77, first turn the MHz tuning dial until the first two digits in the channel matches the digits for your desired frequency. Then turn the KHz tuning dial until the last two digits match the desired frequency.
<br/><br/>
Radio operators: use these frequencies if necessary.<br/>
- ALPHA: 31.00 MHz (all radio operators in Alpha)<br/>
- BRAVO: 32.00 MHz (all radio operators in Bravo)<br/>
- CHARLIE: 33.00 MHz (all radio operators in Charlie)<br/>
- PLT NET: 35.00 MHz (all leadership except FTLs)
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;