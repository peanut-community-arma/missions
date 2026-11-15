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
<font size='18'>ARSENAL</font>
<br/>
You have access to the BLUFOR arsenal, so it's honour system to only use it for cosmetics, all firearms and explosives are for the BLUFOR team only.
<br/><br/>
<font size='18'>DISCLAIMER</font>
<br/>
The role of REDFOR is not to play optimally, it can easily lead to an un-fun game-mode where players are simply waiting out the time-limit.
<br/>
REDFOR are also poorly equipped, it is very likely that first contact will be unexpected and decisive, make peace with that fact that you might die very early in.
<br/>
Not engaging in the fun of waiting will make for a poor experience.
<br/>
Suggestions of entertainment include, but not limited to, role-playing as a Metal Gear Solid guard, guitar playing, log stacking.
<br/>
The reality of this game-mode is that BLUFOR get to be engaged with stealth and planning, REDFOR just has to wait, I hope people accept this reality to the fullest.
<br/><br/>
<font size='18'>THE GAME</font>
<br/>
You as REDFOR are tasked with defending two intel documents in the <marker name='marker_fob'>base</marker> for 45 minutes.
<br/>
Both documents are located on the second floors of the intel buildings.
<br/>
<br/>
There will be time-limit notifications for 20, 10 and 5 minutes remaining.
<br/>
<br/>
BLUFOR can approach from any direction, so thought must be put in to maintaining a perimeter.
<br/>
The red flag in front of you teleports you to the centre of the base.
<br/>
<br/>
There are also four sub-objectives available to you.
<br/>
Two that provide a direct benefit to BLUFOR are the <marker name='marker_radio'>radio tower</marker> and <marker name='marker_power'>power generator.</marker>
<br/>
Two that provide a benefit to REDFOR are the <marker name='marker_ammo'>ammo truck</marker> and <marker name='marker_mortar'>mortar pit.</marker>
<br/>
Destruction of the <marker name='marker_radio'>radio tower</marker> removes your ability to communicate over radio.
<br/>
Destruction of the <marker name='marker_power'>power generator</marker> switches off all lights in and around the fob, excluding the radio tower that runs off it's own electricity.
<br/>
The <marker name='marker_ammo'>ammo truck</marker> provides you with additional ammo, explosives, handheld flares, flare trip-wires, limited amount of PKM's and GP AK's with HE rounds.
<br/>
The <marker name='marker_mortar'>mortar pit</marker> provides you with three flare rounds to spot BLUFOR easier. (As of right now, mortar flare rounds are broken, so its a box with a gl and flare rounds)
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
BLUFOR have superior equipment, night-vision, suppressors etc.
<br/>
Your numbers are your advantage.
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
<br/>
- Defend <marker name='marker_intel_1'>intel.</marker>
<br/>
- Defend <marker name='marker_intel_2'>intel.</marker>
<br/>
<br/>
<font size='14'>SUB-OBJECTVES</font>
<br/>
- Defend <marker name='marker_radio'>radio tower.</marker>
<br/>
- Defend <marker name='marker_power'>power generator.</marker>
<br/>
- Utilise <marker name='marker_ammo'>ammo truck.</marker>
<br/>
- Utilise <marker name='marker_mortar'>mortar pit.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>MAKER'S INTENT</font>
<br/>
If played optimally this game-mode becomes considerably more un-fun for everybody, an effort must be made to keep REDFOR engaged.
<br/>
Divide you teams to patrol, defend, react.
<br/>
Perhaps role-play as Metal Gear Solid NPC's will keep people engaged.
<br/>
Expectations must be kept that playing as REDFOR in this game-mode will mean that death is quick and will likely come from nowhere.
<br/><br/>
<font size='18'>TIPS and TRICKS</font>
<br/>
Due to BLUFOR's small size, direction of contact can inform garrison movements.
<br/>
The building that contains <marker name='marker_intel_1'>intel</marker> has a searchlight on it's roof.
<br/>
The <marker name='marker_ammo'>ammo truck</marker> can be destroyed by BLUFOR from a LAW shot, spacing may be needed to avoid a catastrophic loss.
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
- Mission should automatically end when all of BLUFOR are eliminated, if you think you got all of them and the mission continues, think again!
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;