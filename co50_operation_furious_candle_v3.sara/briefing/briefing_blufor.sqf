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
The war is almost over but we have unfortunately failed to notice a giant rail gun pointed directly at our capital until now.
Our fleet is moving into position to intercept outgoing rounds to buy time for our assault to shutdown the superweapon.
Normally our air wing would help more but they lost 90% of their fighting power after losing one pilot somehow,
a flight will be sent to soften up the defenses as we make our landing.
<br/>
This is the final mission of the war, you can not fail, everyone is counting on you, etc. etc.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
About a company of entrenched infantry
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
one platoon of navy special forces
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
send the shutdown command from both control towers inside the complex. The paths to the two towers are marked by red and blue lights convieniently enough.
<br/>
Time is of the essence, our air defense can only hold out against the bombardment for so long.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Make an amphbious assault and push through the enemy ground works and into the facility proper.
the only enterance to facility. We need to make a direct landing due to time constraints but low tide and the geography 
of the beach mean initial landing sites should be shielded from direct fire. enemy vehicle presence is expected to be limited so feel free to dedicate most of your ordnance to 
fortification clearing
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
make landing onto the beach using rhibs and assault on foot
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
The airstrikes will be timed with our approach
<br/><br/>

<font size='18'>Weather</font>
<br/>
The assualt begins just before dawn with light fog.

"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
rhibs hold 12 including driver and gunner. 6 are available
<br/>
shutdown command is a hold action on the 3 screen computer in the control towers.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;