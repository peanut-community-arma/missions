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

Stratis Air Base was the testing site by ARMAcham for an army of clones designed to be the ultimate soldiers in the battlefield. Unfortunately, the genetic template and commander of this replica army has gone rogue and turned against all non-clone personnel. 
<br/><br/>

After losing contact with the base, a recon team was sent in to investigate the situation, but shortly after reporting the loss of their helicopters, contact with them has been lost. UAV surveillance shows that their Black Hawks crash-landed at <marker name='gas'>the gas station</marker> east of the airbase.
<br/><br/>

Platoon's objective is to search for the missing recon team, rescue any survivors, and assault the airbase to eliminate the clone commander. 
The commander can be distinguished from other replicas by their lack of a helmet.

<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Recovered records of the ARMAcham project indicate that the replica army is the size of a full company and possess a significant quantity of Soviet Bloc APCs. In addition, records show that the army is in limited possession of heavy armor and air assets.  
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
The missing recon team is dressed in black camoflage and armor. Several members were known to have possessed anti-air and heavy AT weaponry.
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

-Search for the missing recon team <marker name='gas'>at the crash site</marker> and rescue any survivors.
<br/><br/>

-Advanced into <marker name='hospital'>Stratis Air Base</marker> and eliminate the replica garrison along with their commander. 
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Movement is at the discretion of platoon command, but it is recommended to approach the base from either the coastal road north of the gas station or the valley south of hill 85.  
<br/><br/>

<br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
Platoon will move on foot to carry out their objectives.
<br/>

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
IR Strobes are available to all roles via the personal arsenal. The breacher role has access to a shotgun in their backpack, which may prove to be useful in clearing out the airbase.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;