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
A foreign insurgency has recently moved into the island of Malden and has pushed out half of our local, home grown insurgencies from the island due to better equipment and LAVs. 
Now that our friend Ivan over in La Pessagne has fixed up his T-34 we can finally make our assault. We plan to push the enemy out of the port town of Le Port to cut off their heavy supply lines.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
About a company sized forces with mechanized and motorized elements. They have begun setting up fortifications east of Chapoi.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
1 Platoon of infantry with some T-34s.
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
-Secure the compounds at the north end of Le Port marked <marker name='OBJ1'>OBJ 1</marker> and <marker name='OBJ2'>OBJ 2</marker>
<br/><br/>
-Hold the compounds against potential QRF from the north. Ammo caches should be around in the compounds to resupply as they are being used as staging areas.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
-Push through enemy defenses and secure objectives in Le Port.
<br/><br/>
-Hold compound against any counter attacks
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Advance at squad leaders discretion, 2 technicals and trucks are available for infantry.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
-The objectives should contain our old caches to resupply our weapons.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;