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
An unusually large number of regulars have failed to return from leave and are being declared AWOL. The local Czech authorities are calling up the reserves to fill key roles while they figure 
out what's going on. We'll be manning some checkpoints near our FOB while command sorts things out. There's another unit of regulars being transported via train that will relieve us soon.
<br/>
Despite rumblings of discontent with the current government amongst troops in the region, the higher ups are confident that this is nothing more than a clerical error. We'll stand around in 
the nice weather and look important for a bit, then go home. No problems!
<br/><br/>

<font size='18'>AWOL FORCES</font>
<br/>
Roughly a battalion's worth of troops stationed in the region are AWOL. They mostly are comprised of infantry and some mechanized infantry, equipped with modern Czech weaponry. A handful of a
rmored vehicles, both old soviet models few newer IFVs, are missing from their garages at <marker name='marker_metsala'>Metsala</marker> and elsewhere to the south east... but command has 
ensured us there's nothing to worry about.
<br/>
There are no reports of any AWOL pilots.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We are a platoon of reserve infantry equipped with Cold War era Czech weaponry. Reinforcements are expected to arrive in about an hour, at which point we'll be relieved.
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
Our mission is to occupy the checkpoints to the south east of <marker name='marker_korvenoja'>Korvenoja</marker> and <marker name='marker_jouttiluoma'>Jouttiluoma</marker>. The checkpoints are 
<marker name='marker_checkpoint1'>here</marker>, <marker name='marker_checkpoint2'>here</marker>, and <marker name='marker_checkpoint3'>here</marker>, with the northern and 
southern checkpoints on the two busier roads.
<br/>
In the extraordinarily unlikely event that this is some sort of coup, we are to hold the checkpoints for 10 minutes while we evacuate civilians from 
<marker name='marker_korvenoja'>Korvenoja</marker> and <marker name='marker_jouttiluoma'>Jouttiluoma</marker>. Then, we must hold east of the 
<marker name='marker_main_road'>main road</marker> while civilians from <marker name='marker_pauhu'>Pauhu</marker> and <marker name='marker_fob'>the FOB</marker> are evacuated. Finally, we'll 
have to protect the <marker name='marker_station'>train station</marker> until reforcements arrive.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Command doesn't expect any problems to arise. However, in the exceedingly improbable scenario that we are attacked, the enemy will likely try to seize the 
<marker name='marker_station'>train station</marker> to cut off the region from reinforcements, so we must protect it at all costs.
<br/>
We have to man the three checkpoints, at least initially. Optionally, we can also choose to station troops at various other points along the front line to tie the garrisons together and increase 
coverage. The <marker name='marker_estate'>Korpi Estate</marker> and a <marker name='marker_supplies'>nearby hill</marker> were noted as potential positions if we decide to do this.
<br/>
In the extremely low-probability situation where we face a coup attempt by the regulars, we may choose to leave the checkpoints at any time once the initial 10 minutes has passed, and may fall 
back west of the <marker name='marker_main_road'>main road</marker> after the subsequent 15 minutes has passed. Falling back will let us reposition and reconsolidate as a platoon, as well as 
buy us time, but may not always lead to better positions and lets the enemy get closer to the 
<marker name='marker_station'>train station</marker>.
<br/>
Keep in mind that <marker name='marker_fob'>the FOB</marker> is very well fortified and the nearby <marker name='marker_farm'>farm</marker> has good coverage to the north and north east. 
Command recommends taking up positions here at some point after civilians have been cleared from the area, especially if we start to get flanked. In the worst case scenario, the 
<marker name='marker_station'>train station</marker> should serve as our alamo if possible.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Take vehicles to the initial checkpoints. In the inconceivable development that a coup attempt is launched, we are free to retain or abandon them as needed.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
N/A
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Each truck can hold 15 people and each car can hold 7. Feel free to load the vehicles with spare ammunition or AT.
<br/>
There are also five supply crates with limited resupply inside; one for each squad and one for each weapons team. Platoon command can decide how these should be managed in the 
preposterously implausible development that we come under attack.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;