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
During a training operation of the Croatian Army with NATO allies on the island of Malden, a paramilitary force has seized a weapons depot from the local military. They then used these weapons to occupy the town of Le Port, its harbor, and its power plant. Old surplus chemical weapons were stored at the weapons depot and there is a risk that they will be used. All civilians have evacuated the town and a Croatian light infantry platoon has been tasked with engaging the paramilitary. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The enemy is dressed primarily in M81 camouflage, carrying Galil rifles and SS-77 machine guns. They have M72 LAWs and RPG-7s. It is also known that they have commandeered multiple APCs and two (2) Leopard 1A3 tanks. 
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Support is available from an M270 MLRS (Seara). This can be accessed by the Plt Co and WPT Leader.
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
The mission objective is to liberate the area of operations entirely, including the town of Le Port, as well as its power plant and harbor, by destroying all enemy forces and their equipment. Gas masks are required due to the chemical weapons risk. The area of operations is marked in a box on the map, contact can appear anywhere within this AO. 
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
UAV reconnaissance has revealed that the enemy forces are concentrated within and near the buildings of the town. There is no contact expected on top of the large hill that the town wraps around, but it appears to be mined. Avoid the marked area on the map. Approach the town from the direction of your choosing and clear through the buildings methodically. There is a cliff face to the south of the town across the bay that offers an excellent overwatch position for the weapons team, utilize it. 
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We have been lent allied Tatra T810 armored trucks (seating 13) and Land Rover jeeps (seating 8). Utilize the vehicles to approach the town at speed, then dismount and clear the town on foot. 
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
The MLRS can fire 12 227mm rockets with a high degree of accuracy. The blast radius of a single rocket is sufficient to take out multiple small buildings. As no reloads are available it's recommended you use the support in short firemissions of 1-2 rockets. All parts of the AO are considered acceptable targets for artillery.
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
Golf Squad can be thought of as a unified support team, it incorporates both an MMG and an ATGM, and can operate independently. Tatra T810 seats 13, Land Rover 110 seats 8. Artillery is using the vanilla support commands (8 in command menu).
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;