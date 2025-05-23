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
Time: 0700    Weather: Clear
<br/><br/>
It is the year 2011, civil war has broke out in Takistan — this tiny land locked nation has suddenly became the focal point of global super power vying for strategical control over its mountainous region. The Russians in particular had been deploying a sizable forces of paramilitaries that actively participate in the selling of armament to various local rebel groups. Our leadership has received intelligence on some of those ammo dumps whereabout in a remote area and it is critical that we destroy them as it contains a not insignificant amount of ammunitions and heavy weapons.
<br/><br/>
A team of special forces soldiers is dropped behind enemy lines under the cover of the night and now must make their way to those ammo dumps. The paramilitary have checkpoints and patrols all around the valley guarding the area, you must avoid detection while making your way to the objectives and neutralize any enemy guarding the caches.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Expect heavy resistance from the OPFOR while infiltrating the area, but you still have the advantage of surprise and stealth. The bulk of enemy soldiers will likely be found guarding the ammo dumps or found patrolling the area, these are standard fighters armed with nothing more than your typical small arms and rocket propelled grenade launchers.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a full platoon of US SOF soldiers.
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
Search and destroy ammo dumps at <marker name = 'm_obj1'>here</marker>, <marker name = 'm_obj2'>here</marker>, and <marker name = 'm_obj3'>here</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The mountainous terrain is difficult to navigate, and OPFOR has set up multiple checkpoints and patrols to guard the area. It is advised that you avoid detection as much as possible while making your way to the objective. Neutralize any enemy guards that you encounter and plant the c4 on any ammo caches that you may find. You are expected to deal with heavy enemy resistance but you would have the element of surprise and stealth.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You are moving on foot.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
N/A.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size='18'>EXPLOSIVES</font>
<br/>
C4 Charges and firing devices can be found at the cache in your starting area.
<br/><br/>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;