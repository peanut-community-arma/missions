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
It's been nearly a month since the Belarusian invasion of Latvia began. The Belarusian army is straining across a widening front as our forces make incremental gains.  With their forces 
spread thin, now is the time to strike deep into their lines with a lightning assault. <br/>
The enemy is well entrenched with a layered defense, but they lack tactically available reserves. As such, our objective is to seize a swath of territory and collapse a flank of their 
line, culminating in a wider advance. <br/>
The enemy lacks significant heavy armor assets in the region, but a significant number of troops in the region are motorized and we can expect a number of armed cars and APCs. In particular, 
intelligence suggests that the Belarusians are fielding relatively new BTR-80s recently purchased from Russia. <br/>
It is currently 9:30am. The weather is partly cloudy and a little foggy, but is expected to clear up quickly over the next hour. The terrain consists of rolling hills, small forests, and some 
dense suburbs and industrial zones.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
-1x Company Belarusian Mechanized Infantry<br/>
-2x Company Belarusian Motorized Infantry<br/>
-1x Battalion Belarusian Light Infantry<br/>
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
-1x Platoon Latvian Mechanized/Motorized Infantry
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
-Sieze <marker name='marker_obj_Sitnik'>Sitnik</marker> and the <marker name='marker_obj_industrial'>industrial site</marker> on its outskirts <br/>
-Clear out enemy headquarters set up in and around the <marker name='marker_obj_power'>power plant</marker> and <marker name='marker_obj_village'>village</marker> to the south
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
First assault Sitnik and the industrial complex in any order, then take the village and power plant in any order. <br/>
As previously stated, the enemy is dug in but has limited access to reinforcements. There is no need to rush hastily through the mission. Leverage the Sierras for additional speed and protection when on the 
move as well as for firepower against entrenched enemies or enemy light armor.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Move mounted and on foot as needed. The APCs have some resistance to enemy LAT fire but may be vulnerable to heavier weapons or multiple strikes. Leverage defilade and concealment as needed.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Sierras are equipped with heavy machine guns. Should Whiskey be available it is equipped with a TOW missile launcher.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Intel reports the enemy has a D-30 artillery piece set up somewhere <marker name='marker_d30'>in this area.</marker> We suspect it will be turned to cover the main road through the AO once we begin our incursion. 
Maneuver to avoid or neutralize it as necessary.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Sierras each have 1200 rounds of .50 caliber ammo. Whiskey has six TOW missiles; two direct attack anti-tank (A), two top attack anti-tank (B), and two direct attack bunker-busters.<br/>
Sierras have seats for 10 people total, including crew. Depending on crew size that is 7-8 seats for passengers. Squad humvees seat 8, and the platoon and weapons team humvees seat 4. Whiskey seats 5.<br/>
Each squad should be assigned two Sierras for transport and is allocated a single open-backed humvee for their optional use. Additional humvees and the TOW humvee are assigned to platoon, weapons teams, and Whiskey, 
respectively. Only extra Sierra vehicles may be leveraged by the platoon, and only in cases of catastrophic destruction or bingo ammo; vehicles allocated to other teams that are unavailable are not authorized to the rest of 
the platoon.<br/>
Note that Sierra 343 radios are set to armor net by default, but platoon command is encouraged to have Sierras switch to their respective squad nets if the commander wants the vehicles closely integrated.<br/>
There is no resupply. Vehicles may be used to carry extra supplies as necessary.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;