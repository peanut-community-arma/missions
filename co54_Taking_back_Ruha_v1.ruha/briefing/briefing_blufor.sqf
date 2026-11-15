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
A counter offensive against Russian invasion forces will be launched on sunrise in an effort to halt their rapid advance through the region. Intelligence report that the Russians are temporarily holding near the village of Ruha, we will seize this opportunity and drive out the Russians before they can reorganize and reinforce their troops.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Approximately a company sized Russian Marine mechanized armor forces — expect dismounted infantries supported by BTR-80, BMP-2, and T-72.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a full platoon of German Bundeswehr soldiers.
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
-Seize and secure <marker name = 'obj5'>Ruha</marker><br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The Russians are temporarily holding off their offensive and are halted near <marker name = 'm_obj1'>Ruha</marker>, expect troops occupying nearby villages at <marker name = 'm_obj2'>here</marker> and <marker name = 'm_obj3'>here</marker>.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the transport trucks to move around the AO, you should dismount your main fighting force around Ulvila and proceed on foot from there.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
A NATO Helicopter were shot down in the area earlier and possibly crashed somewhere near the secluded swamp <marker name = 'obj4'>here</marker>, confirm its location and look for any possible survivors.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size='18'>LOGISTICS</font>
<br/>
There is vehicle resupply at the spawn and the helicopter was shot down while carrying supplies for our platoon.
<br/><br/>
<font size='18'>TRANSPORTATION</font>
<br/>
Each IFV can holds up to 8 passengers, the HEMET Transport Truck can hold up to 18 passengers.
<br/><br/>
<font size='18'>IFV ARMAMENT</font>
<br/>
Each IFV will have 280 rounds of 30mm HEAT Shell, 120 rounds of 30mm AP Shell, and 4 Mini-Spike ATGM.
<br/><br/>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;