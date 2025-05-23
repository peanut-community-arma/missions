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
<font size='15'>IT IS IMPERATIVE THAT YOU READ 'Important Mechanics' AND DO NOT PLACE MAP MARKERS OR DRAW ON THE MAP!
<br/><br/>
<font size='18'>SITUATION</font>
<br/>
It has been nearly 3 months since the Incident threw our way of life into chaos. Symbiote life forms roam the forests and people in black uniforms are slaughtering anyone they find. 
<br/>
With our food and water supplies running low, we cannot stay here any longer. We must flee to the sea in search of a new home...
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Government Spec-Ops and Unknown life-forms
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Local survivors(?)
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
Scavenge for supplies to defend yourself.
<br/>
Reach the remaining non-tainted coastline to the south-west and locate a boat to leave the country.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>GROUP LEADER'S INTENT</font>
<br/>
Regardless of if we called this place our home or if we came here from afar, we must leave via the coast to the south-west. The barren, tainted, landscape caused by the symbiotes isn't suitable for us to live off of. It goes without saying, but avoid entering the 'Edge' of the map at all costs.
<br/><br/>
While we will most likely find a boat on the coastline, it won't have any fuel. We will need to find a jerry can of gas and bring it with us; should be some gas up north. Also, we have no idea if there are even enough boats to ferry everyone left in the region out of here. Be mindful of this going forward.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Movement is at the discretion of local survivor leadership.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Only support you might get is by finding another survivor group and joining forces. That is, assuming the other group cares for your survival...
<br/><br/>

<font size='18'>HOSTILE INTEL</font>
<br/>
What we have gathered about the Government crooks in black hazmat suits isn't much, but we should assume that once we start moving around the terrain to encounter theses people. Make no mistake, they *will* shoot you on sight and relentlessly chase you. Exercise extreme caution on contact, as they are well equipped and potentially traveling in groups.
<br/><br/>
For the Symbiote, they shouldn't bother you if you avoid them, but those fuckers are tough to take down. Headshots seem to be the only reliable way to kill them beyond using explosives or dumping an obscene amount of bullets into them.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Important Mechanics","
<br/>
<font size='18'>SHARING MAPS and MAP DISTORTION</font>
<br/>
You will notice that all players, minus the group leader, do no have a map. Finding a new map will most likely be impossible, so the group leader can 'share' their map by having those without a map stand next them and open the map using the map key (M). Do be aware, due to government interference with our high tech maps, you MUST be standing still in order to view your map without being disconnected from the map view. (Obtaining a GPS will, however, allow you to move freely while viewing your map.)
<br/>
It bears repeating, DO NOT PLACE MAP MARKERS OR DRAW ON THE MAP!
<br/><br/>
<font size='18'>PLAYER CARGO</font>
<br/>
Each player has access to one ACE Cargo slot, visible through ACE Self-Interact, that can allow you to carry a jerry can of gas on your back. You will load the jerry can as you would any other item using ACE Cargo.
<br/>
Do note, if you die while a jerry can is in your personal 'Cargo' inventory, the fuel will be spilled onto the ground and lost entirely. Bear this in mind as you play the mission.
<br/><br/>
<font size='18'>LOOTING</font>
<br/>
During the mission, you will scavenge for supplies by looting various builing scattered around the terrain. Keep you vision sharp to find items of use as some may be obvious while others may take a discerning eye to locate...
<br/><br/>
<font size='18'>MEDICAL CHANGES</font>
<br/>
If you slotted as an RFA, or found a stitch kit out in the wild, be advised that ACE Sutures are in play. This means that you have a limited number of charges to be able to perform stitches on patients, governed by the amount of Sutures you have on your person. You can find more Sutures through looting and maybe on those government goons.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;