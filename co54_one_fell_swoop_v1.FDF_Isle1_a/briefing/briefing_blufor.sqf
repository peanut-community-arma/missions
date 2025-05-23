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
201X, 24 AUG, 1730. The occupying US Army forces are finally being driven out of this region of Podagorsk, after many valiant assaults and sacrifices from our Podagorsk Liberation Army siblinsg. With the US forces on the retreat, our task today is to inflict maximum casualties and destruction, in order to capitalize on their disarray. To that end, we have gathered here to conduct an assault on the old Bolshevik airbase to destroy whatever retreating forces have assembled there. From there, we will set up an ambush on the bridge between the airbase and the mainland and destroy any forces headed to the airbase.
<br/><br/>
Tonight's forecast is very foggy, which will limit our visibility. The airbase itself is surrounded by hills and forest, but the airbase proper is quite open and devoid of cover. Sunset begins at 1800.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
A company of US Armed Forces soldiers, scattered through the region with a sizable defending force at the airbase. They are supported by a variety of vehicles, mostly Strykers and Humvees. We expect the airbase garrison to be concentrated on buildings on the island, with some light patrols around the area.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of PLA irregulars, with potential platoon-level MMG or MAT teams. Each squad has been assigned 2x RHIBs; MMG/MAT should share an RHIB. Each RHIB seats 8 (requires Apex DLC to drive).

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
- Seize the <marker name='mk_airfield'>airbase</marker>
- Ambush retreating American forces <marker name='mk_bridge'>on the bridge</marker> - we expect them to show up about 60 minutes after we start
- Steal as much as you can, destroy the rest
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We'll want to strike fast so that we can set up our ambush well before the Americans arrive. As soon as we step off, we are on the clock - keep an eye out for radio messages from local scouts reporting on the movement of enemy forces as they try to make it to the airbase. There are no civilians here and the Americans know we're coming - you're free to engage any positively-identified target.
<br/><br/>
Given our irregular nature, you are clear to seize enemy weaponry if you believe it to be advantageous for the mission. In particular, keep an eye out for enemy anti-tank weapons, as even with a MAT team our forces are short on anti-armor capabilities. You are also cleared to commandeer any operable enemy vehicles - just report it up the chain and avoid friendly fire.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the boats to reach the island, then proceed through the rest of the AO on foot. We anticipate many vehicles to be present at the airbase, which we may be able to hijack and use to move around the AO.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Engineers, if present, are responsible for mining critical areas of the AO according to PltCo's directive.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size='18'>MINE TYPES</font>
<br/>
The TM-62M mines are AT (anti-tank) mines, while the OZM-72 and PMN-2 mines are AP (anti-personnel). The OZM mines have more TNT than the PMN-2, and they are available with 10m or 20m proximity fuzes.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;