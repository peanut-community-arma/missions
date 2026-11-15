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
We've been contracted to secure the interests of the local Ministry of the Interior in the ongoing civil war. 
Our area of concern is the Sefrou-Ramal region which while not on the front line is plagued by bandits and infiltrating rebels. 
In addition to our ongoing contract with the locals we recieve additional requests from our benefactors outside the country. 
The local government doesn't need to know about these side jobs we do so we've routed them through the <marker name='comms'>Comms Charlie</marker> tower that we control. <br/>
Last night we lost connection to the tower and thus our private contact with the outside world. Take a patrol out to restore the comm tower and make a sweep of the area while you are at it. 
We don't know if it was a technical glitch or a sign of hostile activity.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Light infantry with light vehicle and tripod-based weapon support, potentially up to light ATGMs and mortars. <br/>
Expect IEDs the further from the base you go. 
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
No other friendly forces are in the area. There are civilians in the area.
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
Restore function of the <marker name='comms'>Comms Charlie</marker> tower, then return to base.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Platoon is to make a patrol route that passes through the <marker name='comms'>Comms Charlie</marker> tower. The priority objective is to re-establish communications.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Platoon has been granted use of multiple MRAPs and trucks. Limited access has been granted to the imported Nemerra engineering vehicles.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
No indirect fire support has been allocated to the task. 
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
If there is time, check the following locations are meeting their production quotas: <br/>
  - Check <marker name='wp_Tiguisit'>Bir Tiguisit</marker>'s gas well is producing gas for export. <br/>
  - Check <marker name='wp_meharrize'>Meharrize</marker> will have goat milk for the garrison. <br/>
  - Check the locals aren't blocking the data center construction in <marker name='wp_construct'>Mhamid</marker>.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
- Tigr MRAPs havea capacity 6+1 crew (7). <br/>
- KAMAZ trucks havea capacity 16+1 crew (17). <br/>
- Nemmara Engineering Vehicles havea capacity 0+3 crew (3). Night Vision and Thermals are disabled for Engineering vehicles. <br/>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;