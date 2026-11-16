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
<br/>
August, U.C. 0079
<br/>
Zeon forces have steadily increased troop deployments to South America attempting to counter Federation reliance on the Jaburo fortress.
<br/>
With the sucess of Operation V, frontline Federation forces have been seeing increased success against Zeon mobile suits, but each victory comes at the cost of damaged machines in need of replacement components and weaponry.
<br/>
That's where this logistics corps comes in.
<br/>
Brave the surface of Zeon guerilla fighters and make your way to a nearby <marker name='marker_obj'>strong point</marker> where repair operations of the Gundam-type machines are underway.
<br/>
Our safety is guaranteed once we cross the <marker name='marker_safe'>second bridge,</marker> as the surrounding area of the <marker name='marker_obj'>strong point</marker> has been cleared of any Zeon presence.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
These Zeon dolts have no idea how to blend in to the multi-coloured chaos of Earth, especially her jungles, away from the manicured environments of their space colonies they have no idea how to operate an effective war.
<br/>
Their uniform's camouflage are a combination of greens, browns and tans with painted helmets mimicking this same scheme.
<br/>
They're a cunning bunch, expect ambushes along the route. 
<br/>
Beyond the infantry presence within the jungle, Zeon forces are supported with lightskin vehicles such as the BRDM, BTR-60, BTR-90 and Jeep with M2.
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
- Reach the friendly <marker name='marker_obj'>FOB.</marker>
<br/>
- Keep the three logistics vehicles alive.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
- Keeping to the roads, although dangerous, is far better than getting lost in the jungle.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Using the vehicles available drive a convoy through the jungle, dismount when you think it's necessary, but keep the vehicles close.
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
- Stryker holds 11
<br/>
- Humvee holds 10
<br/>
- MTVR holds 13
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;