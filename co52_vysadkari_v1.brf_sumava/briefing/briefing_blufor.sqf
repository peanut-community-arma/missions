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
June, 1989
<br/>
Soviet forces begin their push into NATO territory, the Czechoslovakian 22nd Airborne Brigade will be playing a key role in these intitial engagements against West German forces.
<br/>
Their task is the airborne assault on the <marker name='marker_air'>primary military airbase</marker> for the region.
<br/>
Following this monumental task, they will rapidly re-deploy using the supplies captured at the airfield to assault the <marker name='marker_rad'>radar installtion.</marker>
<br/>
The radar installation has a series of <marker name='marker_qrf'>barracks</marker> to its North, expect infantry and tankettes.
<br/>
And finally the town of <marker name='marker_hq'>Rabi</marker>, where West German command is operating a communications outpost in the local castle.
<br/>
The Soviet airforce has carried out a series of successful SEAD operations in the area, followed by aerial reconnaissance.
<br/>
Areas of concentrated enemy build up are marked with the red cross-hatch squares, and remaining SPAA are marked with red triangles.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
West German forces wear olive drab uniforms similar to our own with M1 style helmets and operate G3 rifles and MG3 machine guns.
<br/>
Armour includes the M113 APC, Wiesel Tankette and Leopard 1A3 MBT.
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
- Assault and capture <marker name='marker_air'>airbase.</marker>
<br/>
- Assault <marker name='marker_rad'>radar installtion.</marker>
<br/>
- Assault and capture <marker name='marker_hq'>castle</marker> in the town of Rabi.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Assaulting the airfield first allows Phantoms to use resupply trucks present.
<br/>
Platoon does not need to defend the radar installation.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Using Phantom's to move between objectives.
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
- The Mi-8TV3 holds 18 total.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;