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
1945
<br/>
Enemy forces launched an all out assault on our lines, we held and now there is a window open to us to devastate their retreating forces.
<br/>
Platoon will paradrop into their trenchlines and secure them, using them against the retreating force.
<br/>
Due to the scale of their assault all trenchlines behind the first one are empty.
<br/>
Each Trenchline has a box full of illumination flares.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Soviet style WW2 infantry, primarily armed with mosins and a scattering of PPSH machine guns.
<br/>
Waves will intensify including armoured vehicles and even tanks.
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
- <marker name='marker_para'>Paradrop</marker> behind enemy lines.
<br/>
- Secure <marker name='marker_1'>frontline trench.</marker>
<br/>
- Hold off <marker name='marker_2'>retreating forces.</marker>
<br/>
- Fall back to <marker name='marker_3'>second defence line.</marker>
<br/>
- Fall back and hold last <marker name='marker_town'>defence line in the town.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
- Platoon's discretion when to retreat.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
- Movement will be on foot.
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
- Each wave starts from a trigger set in each trenchline, avoid setting off the second trenchline trigger until intended.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;