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
Due to the recent economic downturn, the Claus Group has had to diversify their factories into other industries. A paramilitary gang, angry after receiving coal for Christmas, have launched an attack on a Claus Group weapons factory. They used a bioweapon on the workers to turn them into giant elves that are loyal to the paramilitary gang. They are now preparing an attack on another weapons factory <marker name='marker_workshop'>here</marker>.
<br/><br/>
The workers there have built fortifications before being evacuated due to the bioweapon threat. Claus Group have deployed their advanced security force, us, to defend the workshop. However our plane crashed due to the poor weather. Luckily the workers had a Bluking delivery device set up nearby that we can use to deploy to the factory. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The paramilitary gang wear white business suits and wear black tacvests. They use G36 rifles and M249 machine guns.
<br/><br/>
The giant elves are wearing old winter camo uniforms and armour. They are armed with the weapons they built at the factory, the same as the ones we have. Reports have come in that they have raided an old garage full of military vehicles, including technicals, transport helicopters, IFVs, and two T-80 MBTs.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
None, all remaining workers were succesfully evacuated before our arrival.
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
Stop the enemy from taking over the <marker name='marker_workshop'>factory complex</marker>. 
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The enemy will attack from every direction. The workers managed to fortify a few buildings, <marker name='marker_building_001'>1</marker>, <marker name='marker_building_002'>2</marker>, <marker name='marker_building_003'>3</marker>, <marker name='marker_building_004'>4</marker>, and <marker name='marker_building_005'>5</marker>. It might be a good idea to assign sectors to defend centered on these buildings.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the Bluking delivery device to be deployed straight into <marker name='marker_building_004'>building 4</marker>, then set up defensive positions. The workers set up blinky pylons near ladders and stairs that lead to weapon emplacements. An example blinky pylon is in front of the Bluking kiosk.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Each road into the complex is covered by one autogun. There are also weapons emplacements among the fortifications.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
None.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Once you spawn in be sure to use personal arsenal to give yourself ammo for your weapons. 
<br/><br/>
If you don't like your gun you can see if anyone else sharing your role is willing to trade. If you get a weapon from a DLC you don't own, you are allowed to ask an admin for a loadout refresh.
<br/><br/>
Everyone gets a random disposable launcher as well. 
<br/><br/>
Once everyone is ready, look at the burger billboard and teleport to the mission zone. Every player has to do this individually.
<br/><br/>
When any player is in the mission zone, you have 5 minutes until the mission starts. An alarm will sound when the mission begins.
<br/><br/>
There are ammo caches among the fortifications, use ACE interact to access arsenal with unlimited ammo and M72 LAT tubes. Don't take autorifle or sharpshooter ammo if you are not those roles.
<br/><br/>
You are allowed to steal enemy guns and can even get ammo for them from the supply boxes.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;