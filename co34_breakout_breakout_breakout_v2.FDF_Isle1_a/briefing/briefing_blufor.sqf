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
June, 2025
<br/>
You are Slovenian special forces that have pushed far into enemy territory.
<br/>
In a nearby <marker name='marker_hotel'>hotel</marker> an officer with beret of the Russian Armed Forces is living, eliminate him.
<br/>
Continue with the primary objective of assaulting a <marker name='marker_pow'>POW camp</marker> to release individuals of great interest to Allied forces.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The Russian armed forces have a significant presence in the region.
<br/>
Expect a wide array of armed vehicles and infantry.
<br/>
East of the hotel is a small <marker name='marker_fob'>FOB</marker> built on a defensible hill.
<br/>
The two crossings of the <marker name='marker_bridgewest'>road bridge</marker> and <marker name='marker_bridgeeast'>rail bridge</marker> are garrisoned with a defensive force.
<br/>
The <marker name='marker_pow'>POW camp</marker> itself has checkpoints on each road leading to it, as well as multiple foot patrols throughout the outskirts of the camp.
<br/>
There is an airfield to the South West housing multiple helicopters that will respond to the assault on the <marker name='marker_pow'>POW camp</marker> be quick.
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
- Kill HVT with beret at the <marker name='marker_hotel'>hotel.</marker>
<br/>
- Assault and free all individuals at the <marker name='marker_pow'>POW camp.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Be aware of the resources you have on hand, choose approaches and fights wisely.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
To ensure stealth platoon is moving on foot.
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
Remember to attach IR strobes to assist with ID.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;