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
	Our combination beach resort-firing range has seen decreased business revenue after somebody left a one star review. Our analysts have finally traced the review back to the commander of the 'Multicam Haters' mercenary group stationed in Kavala. Their uncouth sensibilities have left a stain on our sterling reputation, and we must correct it at once. As such we will strike deep into the heart of Kavala and eliminate the enemy commander, thereby invalidating their review and returning us to our proper 5 star rating.
<br/>
	Since the Altis government has largely consolidated its population on the eastern half of the island due to the years of conflict, it has leased the remaining land to various nations, militaries, and other groups. As such Kavala has become a mercenary city for the Multicam Haters, and there is no civilian presence.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
	Enemy forces consist mainly of lightly armored mercenaries sporting small caliber SMGs and shotguns. The HVT has been seen wearing a red beret and surrounded by his personal guards, which have upgraded arms and armor. Enemy forces utilize lightweight unarmed and armed Takhions, as well as armed GAZ Tigrs to patrol the Kavala highways. Enemies can be identified by their love of woodland camoflauge.
<br/>
	The bulk of enemy forces are stationed in Kavala itself, with sparse patrols and garrisons around the outskirts. Hostile strongpoints can be identified by sandbags and red flags, otherwise most buildings will be unoccupied. Enemy reinforcements are expected to approach from the northeast Kavala Highway Patrol and Aggelochori itself.
	
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A platoon of motorized dapper resort businesspeople. No other friendly forces are in the area.
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
Eliminate the 'Multicam Haters' Commander, located at their <marker name='marker_obj'>Kavala HQ</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Use the provided transportation to assault the enemy mercenary company. Long ranged engagements are not advised due to the short ranged equipment present on both sides.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Unarmed transportation has been provided. There are multiple routes into Kavala, including the South Kavala Highway as well as the roads leading in from the outskirts.
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
	Polaris DAGORs seat seven.
<br/>
	The firing range is free to use for all employees. The ranges are 50m, 100m, and 200m.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;