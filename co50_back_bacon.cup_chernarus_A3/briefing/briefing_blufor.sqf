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
18:00:00 July 10th 2020, 5th Combat Engineer Regiment<br/>
<br/>
The US has begun to retaliate against the Russian’s for occupying Chernarus. After a short Naval battle, the seas are clear and it is time for ground troops to be deployed. Our American allies are going to be making their landings on the south coast to try and capture the 2 major cities and the Balota airstrip. While they make their landing, we are going to make a small landing on the east coast to disrupt reinforcements and eliminate some artillery.<br/>
<br/>

<font size='18'>ENEMY FORCES</font>
<br/>
There are multiple Russian Airborne and Mechanized companies in Chernarus which we expect to respond to our attack. A large portion of their forces are located at the <marker name='K1'>Krasnostav airfield</marker>. While there are other garrisons at the <marker name='S1'>Sobor towns</marker> and the <marker name='M1'>Main Chernarus airfield</marker>. We expect a convoy of BTR's with troops to come down the MSR within 5 min of your landing.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We have many American Ships out at sea, and many American soldiers on the south coast. But we will be alone for this attack.
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
- Intercept and eliminate the main QRF <marker name='obj1'>coming down the MSR</marker><br/>
- Destroy the <marker name='obj2'>Russian Artillery</marker><br/>
- Extract back to our carrier<br/>

"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
This will be a “Hit and run” Style attack. Destroy the first wave of QRF and then move quickly to destroy the artillery.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
RHIB boats (8 Seats)
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
The first wave of the QRF should be coming down the MSR within 5 min of your landing. There will be some BTR's with troops on top. 
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;