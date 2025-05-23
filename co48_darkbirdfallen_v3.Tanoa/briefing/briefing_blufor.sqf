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
<font color='#ffb5b5'>We have a Black Hawk down(tm) in Georgetown</font color> due to catastrophic mechanical failure. Freak accident. That, combined with the metric gigaton of small arms it was transporting, means it was a hard landing with no survivors.
<br/><br/>
<img image='crash_site.jpg' width='400'/>
<br/><br/>
CSAR reported <font color='#ffb5b5'>massive movement throughout the jungle surrounding the city</font color>, so the TLA must have noticed the rifles spewing out of this bona fide cornucopia. Believe it or not, we actually don't want to supply weapons to this guerrilla force. This literal truckload of guns could transform the TLA into a serious threat to the region.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The TLA is numerous but lightly equipped, with the usual array of Soviet leftovers. <font color='#ffb5b5'>There will be plenty of improvised vehicular support. We don't expect any real armor.</font color>
<br/><br/>
The jungle is infested with TLA and there are currently no TLA forces in the city. They'll primarily be attacking from inland, but they'll have time and space to maneuver around you.
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
Infantry:
<br/>
• Push into the city from the north, secure the <marker name='crash_site'>crash site</marker>, and extract the assets.
<br/>
    • If a Bradley is unavailable to carry cargo, transport will have to be improvised.
<br/><br/>
Special forces:
<br/>
• Insert by air and prevent the immediate capture of the crash site. Hold until the infantry arrive.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Use Sierra to slowly but steadily steamroll into the city. Keep your eyes on the treeline and don't get surrounded. Fall back to the coast if things get rough.
<br/><br/>
Once Phantom drops Romeo off at the crash site, they can RTB and swap to attack loadout. Phantom will probably be most valuable watching over Romeo to make sure they don't get overwhelmed.
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
There should be plenty of cargo room in the Bradley to load the crates at the crash site.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
