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
MAY 10, 2040. 05:00:00
<br/><br/>
One week ago Livonian scientists discovered an anomalous device (now referred as the Rainstorm device) and moved it to the <marker name='marker_obj3'>Lukow Research Lab</marker> for study. Four days later the Research Lab sent out a distress call before going silent. Evacuation orders were issued for the surrounding towns while the local LDF forces investigated before contact with them was lost as well. Due to the anomalous nature of this, the Livonian government has turned to the United Nations for help, and deployment of the 'Combating Redacted, Onotlogical, and Unknown Units'(nick. CROW) Division has been authorized.
<br/><br/>
Analysis of the situation has revealed that the device recovered by the Livonians has activated and is projecting a memetic field around it, turning everyone in its surroundings into its thralls. Reconnaissance via satellite has revealed that the local LDF garrison and responding force has fallen victim to this, and now patrols the surrounding area. A quarantine was established around the affected area, largely using the river as a natural barrier, however this memetic field is increasing in size, and decisive action must be taken to stop the spread.
<br/><br/>
The operation is threefold: first, neutralize the encroaching thralls around <marker name='marker_obj1'>Bielawa</marker> threatening the southern quarantine zone. Next, neutralize any materiel located in <marker name='marker_obj2'>Lukow Airfield</marker> to prevent their use by the Rainstorm Device should destruction measures fail. Finally, an assault on the <marker name='marker_obj3'>Lukow Research Lab</marker> in order to destroy the Rainstorm Device. Once the device has been destroyed, exfil back across the quarantine line immediately, as there may be collateral effects.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Enemy forces consist of possessed LDF infantry using soviet era surplus equipment supported by contemporary armed MRAPs. Additionally, satellite imaging has spotted several IFVs patroling around Lukow Research Lab.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
One platoon of the UN CROW Division with attached MRAPs. No other support is available. No civilians are present in the area.
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
-Clear the town of <marker name='marker_obj1'>Bielawa</marker>
<br/>
-Destroy caches and materiel at <marker name='marker_obj2'>Lukow Airfield</marker>
<br/>
-Destroy the Rainstorm Device at the <marker name='marker_obj3'>Lukow Research Lab</marker>
<br/>
-Exfil back across the river
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The quarantine forces have kept the immediate urban areas across the river safe from enemy forces. Expect enemy forces to be present in the areas past them. It is recommended to assault the lab last, as enemy forces may converge on you from behind otherwise.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Utilize the provided transportation to move between objectives and open areas.
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
All starting MRAPs seat 6.
<br/>
Demo blocks and firing devices are available.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;