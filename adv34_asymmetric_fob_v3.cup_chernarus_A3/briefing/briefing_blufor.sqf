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
<font size='18'>THE GAME</font>
<br/>
You as BLUFOR are tasked with collecting two intel documents from the <marker name='marker_fob'>enemy base</marker> in under 45 minutes.
<br/>
Both documents are located on the second floors of the intel buildings, you have examples of what they look like and how to interact with them in front of you.
<br/>
<br/>
There will be time-limit notifications for 20, 10 and 5 minutes remaining.
<br/>
<br/>
You have four insertion points available to you, <marker name='marker_north'>north,</marker> <marker name='marker_south'>south,</marker> <marker name='marker_east'>east,</marker> and <marker name='marker_west'>west.</marker>
<br/>
Each flag around you corresponds to a mirror flag around the FOB, the flag to your north teleports you to the north insertion point, etc.
<br/>
<br/>
There are also four sub-objectives available to you.
<br/>
Two that provide a direct benefit to you are the <marker name='marker_radio'>radio tower</marker> and <marker name='marker_power'>power generator.</marker>
<br/>
Two that provide a benefit to REDFOR are the <marker name='marker_ammo'>ammo truck</marker> and <marker name='marker_mortar'>mortar pit.</marker>
<br/>
Destroying the <marker name='marker_radio'>radio tower</marker> removes the other team's ability to communicate over radio.
<br/>
Destroying the <marker name='marker_power'>power generator</marker> switches off all lights in and around the fob, excluding the radio tower that runs off it's own electricity.
<br/>
The <marker name='marker_ammo'>ammo truck</marker> provides REDFOR with additional ammo, explosives and some heavy weapons.
<br/>
The <marker name='marker_mortar'>mortar pit</marker> provides REDFOR with multiple flare rounds to spot you easier. (As of right now, mortar flare rounds are broken, so its a box with a gl and flare rounds)
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
REDFOR are lightly equipped soviet forces, they have limited ammo and little armour but make up for that with numbers.
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
- Collect <marker name='marker_intel_1'>intel.</marker>
<br/>
- Collect <marker name='marker_intel_2'>intel.</marker>
<br/>
<br/>
<font size='14'>SUB-OBJECTVES</font>
<br/>
- Destroy <marker name='marker_radio'>radio tower.</marker>
<br/>
- Destroy <marker name='marker_power'>power generator.</marker>
<br/>
- Destroy <marker name='marker_ammo'>ammo truck.</marker>
<br/>
- Destroy <marker name='marker_mortar'>mortar pit.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>MAKER'S INTENT</font>
<br/>
Using your superior equipment successfully engage REDFOR and collect intel in the alloted time.
<br/>
Delicate balance of aggression and caution to complete the mission.
<br/><br/>

<font size='18'>TIPS and TRICKS</font>
<br/>
- Enhanced Movement's ability to climb through windows with ctrl+v will allow you to avoid doorways.
<br/>
- <marker name='marker_radio'>Radio tower</marker> takes two M112 demo blocks or one M183 to demolish.
<br/>
- <marker name='marker_power'>Power generator</marker> takes one M112 demo block or two law shots to demolish.
<br/>
- The enemy can hear you, communicating over 343 on whisper will allow you to communicate without giving away your position.
<br/>
- There's a benefit to a lighter load, movement is key and you're not planning on a protracted engagement.
<br/>
- Pre-emptive morphine use can keep you in the fight longer.
<br/>
- An unconcious enemy does not mean they're out of the fight.
<br/>
- Medical may have to wait, contact means qrf.
<br/>
- It's a full moon night, being in the dark does not make you invisible.
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
- Collect intel through ace interact.
<br/>
- Collecting intel will notify REDFOR after 30 seconds.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;