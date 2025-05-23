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
The situation of Malden crisis continues to rapidly deteriorate — the military junta, supported by CSAT influences, has escalated their aggression through launching several ballistic missiles at the NATO Mediterranean fleet. This attack warrants the invasion of Malden with the objective of disbanding the junta and subsequently reinstating the old government of the island nation.
<br/><br/>
The militarized island in Southeastern Malden host some of the most advanced radio installation for the island nation, which are critical to the proper functioning of their military communications. By destroying these installation, we can effectively send our enemy into a disorganized chaos in which we can rapidly exploit in other fronts.
<br/><br/>
The junta exerts high influence over their military, and despite all oppositions you should expect their soldiers to maintain high spirit and will rarely flee from the battlefield. Expect the RMAC (Republic of Malden Army Corps) garrison to defend the island with everything they have got, be prepared for a tough fight ahead of us. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The island is heavily occupied by two company of forces supported by small detachment of motorized units — preliminary intelligence reports there are 5 BTR-70 and 3 BMP-2 present in the area. RMAC air force are also operating in the nearby area and you may expect them to dispatching MI-24 Hinds to the AO.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of British Army soldiers. Other friendly units will be operating in fronts that doesn't concern the scope of our mission.
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
-Secure the secondary <marker name = 'm_obj1'>RMAC garrison</marker>.
<br/><br/>
-Destroy the <marker name = 'm_obj2'>primary radio tower</marker>.
<br/><br/>
-Secure the primary <marker name = 'm_obj3'>RMAC garrison</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Make landing at the north-eastern tip of the island and start making your way through the your mission objectives — dense groves are disseminated throughout the terrains and you should pay extreme caution traversing these terrains, either advance through it with overwhelming force or to avoid it all together. For maximum security, it is recommended that you have elements in elevated positions that can cover each other as they advance.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You are inserting via boats (each holding 11 individuals), you will move on foot after landing.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
N/A.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size='18'>TRANSPORT</font>
<br/>
Each RHIB can hold 11 passengers, there are 3 boats on either side of the boat dock. Driver would need to use the scroll wheel action: ""unload vehicle"" to unload the boat.
<br/><br/>
<font size='18'>UNLOAD PROCESS</font>
<br/>
It is highly recommended that you unload the boats one by one, wait until all used boats to be unloaded before setting off.
<br/><br/>
<font size='18'>EXPLOSIVES</font>
<br/>
A cache containing 4 explosive satchels can be found at the heli-pad on the ship. 
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;