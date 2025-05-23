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
Now that our queen has been promoted to empress, our platoon has also been promoted to the Imperial Guard and given access to new weapons. 
<br/><br/>
While preparing for an operation, a neighbouring federation declared war and invaded our empire. Enemy forces landed at dawn in <marker name='marker_base'>Besar Airbase</marker> and forced the local army, the Red Kingdom Forces, to retreat. The enemy then moved into <marker name='marker_town'>Bagain</marker>, forced the civilians out, and garrisoned it. 
<br/><br/>
When the Red Kingdom Forces retreated from the base and town, an ammo box fell off a truck and washed ashore near <marker name='marker_ammo'>the local burger joint</marker>. There is also a tourist boat ride on the beach near a <marker name='marker_boats'>Gyros stand</marker>.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Two companies of airborne troops. They mostly use AK rifles and wear green camo. The first company used Tigr IMVs to quickly capture the town. Recon shows that the second company then landed and deployed BTR-80As at the airbase. BMD-4s were seen at other enemy landing zones in the invasion so be on the look out for those.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
No Red Kingdom Forces are remaining in the current AO.
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
Secure the <marker name='marker_town'>town of Bagain</marker> and <marker name='marker_base'>Besar Airbase</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Move into the town and secure it. The surrounding forest could provide good cover and concealment. Once the town is secure, move across the water to the island and secure the airbase. Don't forget the <marker name='marker_ammo'>ammo</marker> if your platoon needs it.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Initially you'll be moving on foot, however there are civilian <marker name='marker_boats'>boats</marker> that could make crossing the water faster. Stealing enemy APCs to quickly cross the water might be feasible too.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
None.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
None.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Regular infantry have access to LAT.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;