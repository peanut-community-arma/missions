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
The Iranian has broken the accord and held the local governor hostage in his villa at Deraz during the annual peace treaty meeting. We are the closet combat effective mechanized element in the area and we will respond at once to take control of the situation.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Approximately a company sized Iranian forces — expect infantries supported with an assortment of lightly armored vehicles.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a full platoon of Takistan Army soldiers.
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
-Find and rescue the local governor held hostage in his <marker name = 'm_obj1'>villa</marker>.
<br/><br/>
-Retake the <marker name = 'm_obj2'>governmental office</marker> in Anizay.
<br/><br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The Iranian took us by surprise and their forces quickly overwhelmed our troops in Anizay, the area will no doubt be swarming with enemy forces and it will be crucial to use the support from our BMP to cut a way through. Our top priority lies in finding and rescuing the governor; henceforth, it will be prudent for us to be firing at the villa and the governmental office.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the BMP and transport trucks to move around the AO.
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
<font size='18'>LOGISTICS</font>
<br/>
There are no resupply options available.
<br/><br/>
<font size='18'>IFV ARMAMENT</font>
<br/>
Each IFV will have 340 rounds of 30mm HEAT Shell, 180 rounds of 30mm AP Shell, and 4 ATGM missiles.
<br/><br/>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;