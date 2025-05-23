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
20:00:00 July 9th 2036, Special Air Service Regiment<br/>
<br/>
The Russian army has broken through the LDF’s lines and are now causing havoc to their supply lines. They are disrupting the convoys and taking the LDF soldiers prisoner. It will be our job to rapidly deploy to the locations of the convoys and rescue any soldiers before the russians can extract them.<br/>
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
We will be facing a russian mechanized company
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Our LDF allies are preoccupied with retaking their lost ground and so we will be alone in this mission
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
Rescue all the captives within 90 min<br/><br/>
-Rescue the captives from <marker name='obj1'>Objective 1</marker><br/>
-Rescue the captives from <marker name='obj2'>Objective 2</marker><br/>
-Rescue the captives from <marker name='obj3'>Objective 3</marker><br/>
-Rescue the captives from <marker name='obj4'>Objective 4</marker><br/>
-Extract the platoon<br/>

"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
You will have 90 min from the start of the mission to achieve your objectives. You will need to move fast and extract the captives before the Russians can.<br/><br/>

If you fail to complete your objectives in the time frame, you will still need to extract the platoon.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We will be using MH-60 Blackhawks for insertion and extraction (15 passenger seats)
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
We have the DAP version of the blackhawk to provide fire support from the air.
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
You will have 90 min from the start of the mission to complete all objectives. 
<br/>
<br/>
There are 4 captives around each objective. Search the area to find them.
<br/>
<br/>
The blackhawks fit 15 passengers and are equipped with 76 Hydra LAU-130A rockets. You may change their loadout using the ammo truck at the FOB if you wish
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;