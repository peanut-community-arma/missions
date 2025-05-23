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
05:30:00 December 10th 2025, Russian Spetsnaz <br/>
<br/>
2 hours ago a Tu-95 Plane went down while taking recon photos of CDF positions. This plane was violating a no fly zone and so if the data from the flight gets out it could cause a international incident.
<br/>
We are being sent in to destroy any data the CDF is pulling from the plane and to recover the 2 pilots of the plane.
<br/>
The exact location of the wreckage is unknown, however the last transmission from the pilot indicates that they were going to try crash landing in a lake.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The CDF garrison in the area are not equipped with night vision capabilities but the plane crash has put them on alert and they are bringing more reinforcements into the area.
<br/><br/>
The garrison troops are equipped with soviet era gear, with some BTR’s in the immediate area. However a BMP platoon is expected to be reinforcing the airfield.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We are deep  behind enemy lines with no support.
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
-Search both <marker name='black'>Black Lake</marker> and <marker name='willow'>Willow Lake</marker><br/>
-Search the <marker name='airport'>Airstrip</marker><br/>
-Destroy any evidence or any technology that could be holding the flight data<br/>
-Make sure the pilots are not captured by the CDF by any means necessary<br/>
-Extract<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We will have the element of stealth and the advantage of night vision. Use this to your advantage for as long as possible. Enemy Reinforcements will not stop so we will have to make this a hit and run attack.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We will be inserting and extracting by RHIB
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Destroy the radio tower at <marker name='radio'>Olsha</marker><br/> to cause confusion in the enemy reinforcements.
<br/>
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
You will have aproxamatily 1 hour from mission start until the sun begins to rise.<br/>
<br/>
the RHIB's seat 8 people.
<br/>
Destroying the buildings that contain any objectives will count as destroying the objectives if they blast does not destroy them.
<br/>
There may be good ammo and medical supplies stored at the airfield for resupply.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;