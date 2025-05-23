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
15:00:00 Oct 12th 2024, 10th Special Forces Group<br/>
<br/>
We are doing some work for the CIA weakening the defenses of Malden to prepare for invasion. We will be conducting a deep raid against the island’s defense force to capture or destroy any material we find. <br/><br/>

After arriving by boat and climbing up the shore, we are coming close to our first contact now.<br/>
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The Infantry of the Malden defense force is equipped with soviet era small arms and armor.<br/><br/>

The armor presence on the island is made up of whatever the Malden Defense force could convince Russia to sell them. They were able to purchase current BTR-80 and 80A designs for APC’s but were only able to secure T–34’s and a select few T-55’s for MBT capabilities.<br/><br/>

We expect any enemy reinforcements from the <marker name='north'>North</marker> and the <marker name='east'>East</marker>.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We have no friendlies in the area"]];

/* ================================================================================
	MISSION
	 - Describe any objectives that the team is expected to complete.
	 - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission = ["diary", ["Mission","
<br/>
<font size='18'>MISSION</font>
<br/>
-Clear the AA threat from the <marker name='OBJ1'>Pic de Feas</marker><br/>
-Destroy or capture the Rocket Artillery trucks from <marker name='OBJ2'>Arudy</marker><br/>
-Withstand any counterattack or retreat to a safe distance once your objectives are completed<br/><br/>
-[Optional] Destroy or capture any materials at <marker name='OBJ3'>Lavalle</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Clear the objectives of the enemy and detonate their equipment. It is advised that you use fire and maneuver tactics in the longer ranges of the Malden Plateu.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You will be moving on foot.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
You may use any equipment you find in the field, just communicate within the platoon to avoid friendly fire.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
There is a optional objective for this mission, there is an additional cache location at <marker name='OBJ3'>Lavalle</marker> that you can also destroy and loot. UAV reports indicate that a BTR-80A is parked here without a crew and so you may be able to make use of that vehicle for the final objective.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
There will be no resupply
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;