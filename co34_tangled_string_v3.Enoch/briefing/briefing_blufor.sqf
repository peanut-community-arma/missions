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
<br/><br/>
Mission directly inspired by Shears, paradrop script by Danvers and additional scripting help by Alien.
<br/><br/>
<font size='16'>No ORBAT markers or arsenal ammunition.</font>
<br/><br/>
<font size='16'>House rule is no map markers after paradrop until regroup.</font>
<br/><br/>
<font size='16'>Everyone has one demo charge and clacker for sub-objectives.</font>
<br/>
<br/>
March, 2036
<br/>
This whole operation was fucked before we even stepped foot on the plane.
<br/>
The night-vision goggles we were promised never arrived, the officers were the only ones to recieve encrypted radios and despite all this new equipment the parachutes we're jumping with were not made to handle the total weight of a full kit.
<br/>
The moment the plane crossed the border into Livonia we were hit with every kind of jamming under the sun, and then the anti-air fire that the first wave of cruise missiles were supposed to have eliminated began to fire so the damn pilots increased elevation.
<br/>
Now everyone and our equipment is <marker name='dropZone'>scattered</marker> across the Livonian country-side, far from our objective of <marker name='marker_nab'>Nadbor.</marker>
<br/>
Your task is to attempt to regroup with as many members of platoon as possible, attacking any secondary objective where able and ending with control over the town of <marker name='marker_nab'>Nadbor.</marker>
<br/>
The hashed zones in <marker name='marker_nab'>Nadbor</marker> mark concentrated OPFOR presence.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Livonian Defence Forces use 5.56 AR and AK pattern rifles, they're equipped only with flashlights.
<br/>
Livonian vehicle fleet includes repurposed offroad cars with 50. machine guns, humvees, MRAPs and a limited number of wheeled auto-cannon IFV's.
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
The sub-objectives are broken into three tiers.
<br/><br/>
Tier 1: Fire-team sized element recommended.
<br/>
There are multiple kinds of Tier 1 objectives that includes, Livonian caches, generators, fuel trucks and unmarked roadblocks.
<br/>
There are two jammer transmission towers in the zone, marked with purple, 343 signal will degrade but 148 should still work, these towers will require multiple demo charges.
<br/><br/>
Tier 2: Squad sized element recommended.
<br/>
The three kinds of Tier 2 objectives are the <marker name='marker_rad'>Swarog Radar Installation,</marker> the town of <marker name='marker_pol'>Polana</marker> and the four MLRS trucks operating inside the region.
<br/><br/>
Tier 3: Full platoon recommended.
<br/>
The only Tier 3 objective is the final one of <marker name='marker_nab'>Nadbor.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Use a low level chemlight to make yourself somewhat more visible, regroup with whom you can to take on sub-objectives, eventually joining forces with other groups of players to assault the final objective.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
After intial paradrop everything will be on foot.
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
- Flagpole at start ideally teleport paradrops everyone over the <marker name='dropZone'>drop zone</marker> with a scroll wheel interaction.
<br/>
- Paradropping with the players are supply boxes full of useful equipment, including additional ammo and heavy weapons.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;