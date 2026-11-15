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
Yesterday, mysterious airborne forces parachuted onto a US Navy LHD and flew off with 2 of our helos filled with precious cargo. USN AEW tracked the helos to <marker name='marker_base'>this US Army base</marker>. It seems this Army battalion commander lost a big bet on last year's Army-Navy Game and has enacted their revenge on the Navy.
<br/><br/>
The USN has sent our USMC rifle platoon in to recover the 2 <marker name='marker_obj'>CH-53E</marker> helicopters from the Army and deliver them to <marker name='marker_end'>2 USN ships</marker> before they shell the shit out of the Army on this island. Our <marker name='marker_boat'>stealth insertion vehicle</marker> unfortunately was destroyed and sunk so we don't have to worry about recovering it.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The enemy has approximately 1 light infantry company each in <marker name='marker_FOB'>this FOB</marker>, the town of <marker name='marker_town'>Lakka</marker>, and the <marker name='marker_base'>military base and factory area</marker>. Each company has an MRAP, HMMWV and truck that may be armed with HMGs. Expect possible Stryker and helicopter support from nearby areas.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
2 USN <marker name='marker_end'>Liberty-class destroyers</marker>. Unfortunately command did not provide us with the necessary equipment to enable fire support from the ships.
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
Recover both CH-53E helicopters from <marker name='marker_obj'>this base</marker> and deliver them to the ships <marker name='marker_LZGlory'>USS Glory</marker> and <marker name='marker_LZMicdonals'>USS Micdonals</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Taking the <marker name='marker_FOB'>FOB</marker> provides us with high ground to cover and anvance into the <marker name='marker_town'>town</marker>, then we can regroup and advance to the <marker base='marker_end'>main base</marker> and recover our helos then fly to the <marker name='marker_end'>ships</marker>.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Advance north on foot, maybe steal some Army vehicles, then eventually fly the helos to the ships.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
If something chases you to the ships the CIWS will likely kill it.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
You have to yell 'Oorah!' a bunch.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Most enemy mags are compatible with your guns so it's basically infinite ammo.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;