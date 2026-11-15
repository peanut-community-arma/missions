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
May, 2006
<br/>
In the early morning Colonel Orlando, alongside multiple officers loyal to him stormed the <marker name='marker_parliament'>Sahrani parliament building</marker> and declared martial law.
<br/>
In a televised address shortly after he announced that King Joseph III had been placed under house arrest at the <marker name='marker_Estate'>Royal Estate</marker> due to the King's efforts to normalise relations with our northern neighbors of the Democratic Republic of Sahrani.
<br/>
The Colonel has control over the nation's capital of <marker name='marker_parliament'>Paraíso</marker>, the <marker name='marker_Estate'>Royal Estate</marker> and the main <marker name='marker_Tower'>radio tower</marker> overlooking the capital.
<br/>
Units loyal to the Colonel have established multiple checkpoints leading into the Capital, but have not deployed South beyond the town of <marker name='marker_Somato'>Somato</marker>.
<br/>
Using it Colonel Orlando controls the flow of information, destroying the <marker name='marker_Tower'>radio tower</marker> will allow the king to communicate with the nation and armed forces.
<br/>
Even with the radio tower gone Colonel Orlando can still communicate to units loyal to him, this crisis can only come to an end with both objectives carried out.
<br/>
It is the job of the Royal Commandos to rescue the king, destroy the <marker name='marker_Tower'>radio tower</marker> and arrest or execute <marker name='marker_parliament'>Colonel Orlando</marker>.

<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Sahrani infantry differ greatly from the Royal Commandos, wearing Six-Color Desert Pattern camouflage (Chocolate-chip) and using M16A2 rifles.
<br/>
Four company's of Royal Army Corps of Sahrani, motorised, mechanised, armoured and air.
<br/>
Motorised Company comprised of jeeps and trucks exactly the same as the Royal Commandos.
<br/>
Mechanised Company comprised of LAV autocannons and transports.
<br/>
Armoured Company of M-60A3 tanks.
<br/>
Air wing of UH-60 transports.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
The king has a contingent of secret service, we do not know if they are alive or dead.
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
- Rescue the King from the <marker name='marker_Estate'>Royal Estate</marker>.
 <br/>
 <br/>
 - Destroy <marker name='marker_Tower'>radio tower</marker>.
 <br/>
 <br/>
 - Eliminate HVT at the <marker name='marker_parliament'>Parliament building</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Platoon is free to execute objectives in what ever order they see fit.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Vehicles can delpoy the platoon quickly, but may lead to being discovered far quicker.
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
- Land Rover can hold 8.
<br/>
- Land Rover M2 can hold 4.
<br/>
- MTVR can hold 13.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;