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
The Cool Guys Federation (CGF) is planning on invading Suursaari, which is currently held by the Uncool Dudes Empire (UDE). We are a small group of Very Cool Forces that have been tasked with destroying weapons caches in the northern part of the island.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The UDEAF are a professional military. They have a few Boxer APCs armed with HMGs, a couple of armed Kasatka helicopters, and about a dozen Humvees armed with M240s.
<br/><br/>

<font size='18'>FRIENDLY SUPPORT</font>
<br/>
The CGFAF can paradrop members of the platoon that have less than 35kg loadout weight. (See Administration).
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
Destroy weapons caches:<br/>
• <marker name='obj_fort'>A cache in the old fort.</marker><br/>
• <marker name='obj_forest'>A cache hidden in woods.</marker><br/>
• <marker name='obj_lighthouse'>A cache nearby the central lighthouse.</marker><br/>
• <marker name='obj_coast'>A cache on the northeastern coast.</marker><br/>
• <marker name='obj_town'>A cache just outside Suurkylä.</marker><br/>
• <marker name='obj_south'>A cache hidden in a valley.</marker><br/><br/>
Extract on the MkV SOC.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>USEFUL NOTES</font>
<br/>
• If you want an element to paradrop, decide early and tell them so they don't have to scramble to adjust their loadouts.<br/>
• Each cache is likely to be guarded, so if you elect to paradrop an element, they should avoid dropping directly on top of a cache.<br/>
• Because the MkV SOC can't be pushed, you may want to plan your extract for a pier. There's one near Vähäsomerikonlahti and one on the northern coast.<br/>
• Most of the caches will be able to be destroyed from distance using AT or even 40mm grenades, if need be.
<br/><br/>"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size='18'>Paradrop Insert</font><br/>
A hold action on the windsock will allow anybody with less than 35kg loadout weight to paradrop at a location of their choice. After using the hold action, the map will open and <font face='RobotoCondensedBold'>you will be teleported to the location of your next click</font>.
<br/><br/>
<font size='18'>MkV SOC</font><br/>
The MkV SOC is extremely fast. It can hold 33 soldiers and has two M2 machine guns, a Mk19 GMG on the starboard side, and an M134 minigun on the port side.<br/>
<font face='RobotoCondensedBold'>It can not be pushed, so do not beach it</font>.
<br/><br/>
<font size='18'>Cache Detonations</font><br/>
The UDEF are lax on safety regulations regarding ammo storage. You may want to <font face='RobotoCondensedBold'>avoid hitting the caches with any kind of explosives while nearby</font>.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;