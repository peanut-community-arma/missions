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
Soviet forces landed on Halsoy a week ago, taking the island in a surprise move. They've been reinforcing their position since then.
We're still putting together a task force to retake the island, however an opportunity has arisen from this crisis; 
last night a new Soviet frigate arrived with a reinforcement convoy, one that we've never seen the type of before. <br/>
Intelligence thinks that this is some crossbreed of the Neustrashimy-class frigate and a MEKO 200, outfitted with enough technology to force the change in profile. 
If we can sink it it'll be a blow to their forces in the region and may be a stragetic setback for the Soviets overall. 
We've dedicated a commando platoon with submarine support to this task. <br/><br/>
Your goal is to draw out this ship by assaulting <marker name='landing_zone'>their position near Lepsoya Port</marker>. 
Once you've confirmed that the target has responded to your actions, find the transmitter in the Soviet FOB and send a signal to the submarine to surface for the attack. 
At that point you'll need to use the laser designator and UAV terminal to paint the target frigate and guide the missiles in for the kill. <br/>
After the mission is complete, disperse into the hills and await extration.
<br/><br/>

<font size='18'>WEATHER</font>
<br/>
Weather forecast for the 23rd of October is expected to be a bright and clear night with a full moon out.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
A company of Soviet motorized infantry reinforced by a SPAAG platoon, in addition to the target.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
USS Tuscon (SSN-770) is offshore to provide the anti-ship component of the mission. 
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
- <marker name='landing_zone'>Destroy forces around Lepsoya Port</marker> to draw out the target vessel <br/>
- Seize a transmitter, likely in the FOB, to send authentication key to waiting support vessel <br/>
- With assistance of support vessel, lase and destroy target vessel
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The goal is to draw out and destroy the target vessel. We can do this either by destroying their landing zone or by damaging their landing ships' AA cannons. <br/>
No matter how we draw out the target, we'll still need to send a signal to the Tuscon to let them know that the target is coming in. 
We don't have a transmitter capable of directly contacting the submarine - you'll need to borrow one of the Soviet ones on-site.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Gound team commander has discretion on how to advance on the target.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
USS Tuscon is providing anti-ship missiles as support. These missiles are laser guided and will need a target painted by the ground team.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
The spotter, if present, should be responsible for painting the target and optionally controlling the cruise missile launch as well.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
- Team is provided a <marker name='boat_spawn'>spawner for inflatable assault boats (seat 5 each)</marker>. Spawner is found at northeast of the spawn. Move the spawned boat before spawning another one.<br/>
- Team is provided with <marker name='critical_equip'>one (1) remote laser designator and one (1) UAV Terminal at the starting position</marker> in case spotter role is not taken.<br/>
- The support unit won't recieve from a data link until the team transmit the authentication code. <br/>
- Once the data link has been established, the team can direct a missile strike by connecting to the ship via the UAV Terminal. <br/>
- To lock onto a painted target: place down the laser designator, use the UAV terminal to control it and lase the target. Then, take control of the VLS launcher using the UAV terminal and hold down the 'R' button (default button, check bindings). <br/>
- Once the target is locked by the launcher, use left-click to fire a missile. <br/><br/>

Anachronistic remote designator added by veerserif, please pretend it's beat up and old.
"]];



player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;