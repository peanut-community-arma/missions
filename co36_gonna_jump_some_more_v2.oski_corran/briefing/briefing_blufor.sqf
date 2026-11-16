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
03:47 April 1978
<br/>
<br/>
NATO's success in destroying advanced Soviet anti-air along the frontlines has forced Soviet forces to redeploy rear-line defences leaving multiple airfields open to paradrop efforts.
<br/>
<br/>
British paratroopers will secure one of these airfields located in Denmark, allowing for friendly forces to open a new frontline against the Soviet flank.
<br/>
<br/>
Soviets have fortified the <marker name='marker_fort'>mountains</marker> with sandbag emplacements and light anti-air guns.
<br/>
<br/>
Early reconnaissance has seen VMF units move soft-skin transports into a local farmstead as a make-shift <marker name='marker_depot'>vehicle depot.</marker>
<br/>
<br/>
Soviets will hear the transport aircraft and begin searching for platoon from <marker name='marker_townsouth'>Clovullin.</marker>
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Intense loses for the Soviet Navy and Army have forced the deployment of Soviet Naval Infantry to the defence of these rearline airfields.
<br/>
This is enemy territory so expect threats from all directons.
<br/>
They're equipped with a robust array of amphibious armour and small selection of unarmed helicopters with T-55 and T-72 tanks housed at the airfield itself.
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
- Regroup after paradrop at <marker name='marker_jumpzone'>dropsite.</marker>
<br/>
- Assault and secure the <marker name='marker_airfield'>airfield.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Free to take whatever direction to assault the airfield, mountains are fortified but allow for elevated firing positions into airfield, roads are safer but longer travel.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
After paradrop platoon will be moving on foot, but can secure transportation from a nearby makeshift <marker name='marker_depot'>depot.</marker>
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
Platoon lead interacts with flagpole at spawn to initate the drop.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;