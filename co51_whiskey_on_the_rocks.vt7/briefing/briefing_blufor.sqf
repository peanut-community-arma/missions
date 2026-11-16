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
October 1981
<br/>
It appears a <marker name='marker_1'>Soviet submarine</marker> ran aground on Swedish soil.
<br/>
We only became aware of it when a significant landing force left a port from Latvian SSR and made landfall securing the site from any incursion.
<br/>
To risk major conflict with NATO we believe whatever that submarine holds is of grave importance.
<br/>
This infantry platoon formed on short notice will push through the Soviet lines and ensure that submarine cannot be tugged back into Soviet hands. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Substantial Soviet landing force, majority infantry with a scattering of amphibious vehicles and even heavy armour.
<br/>
The landing ships themselves are of no use to us, they have already unloaded their contents.
<br/>
Radar reports helicopter contacts, likely additional infantry transports.
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
- Push through Soviet forces and secure the <marker name='marker_hq'>HQ</marker> established on the peninsula.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Moving on foot southwards, through Soviet forces.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the armoured cars provided to get close to the frontline and dismount to avoid any mass casualty events.
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
- Armoured cars hold 7.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;