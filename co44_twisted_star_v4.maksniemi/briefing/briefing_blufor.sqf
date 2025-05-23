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
We've just received word from command that Russian forces have advanced much further North than we anticipated. They are actively closing in on our position from the south and vastly outnumber us. 
<br/><br/>
Additionally, there are reports of Russian paratroopers landing to our north in the area roughly marked by the red oval on the map. They appear to be primarily focused on sabotage of our infrastructure for now, but if we take to long they may attempt to cut off our retreat.
<br/><br/>
We must get back to our <marker name='jeeps'>jeeps</marker> and <marker name='extract'>extract</marker> before we are caught and destroyed.
<br/><br/>
Ideally we can pick up the intel we left in a brown plastic case at the <marker name='lake'>lake</marker> on the way so that it does not fall into Russian hands.
<br/><br/>
----Loadouts courtesy of Masada-----
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Enemies are mechanized Russian late Cold War infantry. By avoiding roads we may be able to avoid heavy engagement with the Russian BTR-80s and BRDMs. We may face paratroopers at some point.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
You are on your own.
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
-Reach the <marker name='jeeps'>jeeps</marker> and use them to <marker name='extract'>extract</marker> to the northeast.
<br/><br/>
-Grab the intel case from the <marker name='lake'>lake</marker> on your way, if possible.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Russian forces will be spread out looking for us so we should be able to quickly punch through any elements that manage to get between us and our extract. Getting stuck and bogged down against the main thrust of the attack, from the South, will probably mean death as more and more enemies learn our location.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
See above.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A
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
We left 13 jeeps at the houses; each one seats 4, for a total of 52 seats. One of the Jeeps has an M2 on it.
<br/><br/>
There is a hold action on the intel case; a player will need to hold the interact button for 4 seconds (this is visualized) to pick it up. It will disappear when the hold action is completed.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;