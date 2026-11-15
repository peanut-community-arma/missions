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
March, 1971
<br/>
A USMC platoon was sent out on foot to clear suspected VC positions, found some equipment and not much else.
<br/>
Now we find ourselves on the other side of the <marker name='marker_mine'>minefield</marker> next to Hill 220.
<br/>
Closest clearing for a landing zone is the assortment of buildings at <marker name='marker_pick'>Kangleng Krohthnak.</marker>
<br/>
Looking at the map, following the road may be our best bet, and once we hit the north-most point we peel into the jungle to reach the air-lift.
<br/>
Phantom airlift will take us to <marker name='marker_land'>Fort Emery.</marker>
<br/>
There is movement in the jungle, you must make it to the landing zone and safely extract, or risk being overrun.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Viet Cong are not as well equipped as the PAVN forces, but are not to be taken lightly, assortment of AKM's, SKS and French MAT-49 submachine guns.
<br/>
Expect contact from all angles, we're almost certain there's been a unit trailing us since we arrived.
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
- Reach the <marker name='marker_pick'>jungle clearing</marker> and escape.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
- Following the road will save us from getting lost, but we'll have to peel off eventually if we want to make it to the landing-zone.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
It'll be on-foot all the way.
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
- The flag present at spawn teleports the phantom pilots to the FOB.
<br/>
- The UH-1D carries 12 total.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;