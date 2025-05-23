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
The enemy have occupied <marker name='marker_com2'>the comms base</marker> and <marker name='marker_airport'>the international airport</marker>. We need to take them back so we can tell the rest of the Empire what has happened and allow heavy reinforcements to be rapidly deployed. 
<br/><br/>
The vassal Red Kingdom Army managed to save one of their heavy transport helicopters from the initial enemy invasion and flew it here for us to use. They also have a <marker name='marker_AH6'>light attack helicopter</marker> available to us, but it has no fuel, so if we want to use it we need to <marker name='marker_start'>deliver fuel</marker> to it. 
<br/><br/>
Red Kingdom forces managed to push back the enemy who now only hold <marker name='marker_island'>our objective</marker> and <marker name='marker_SAM'>the military base</marker>. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The enemy use AK rifles and wear green camo. They have BTR-80As and ZU-23 trucks in <marker name='marker_island'>the objective area</marker>. They are not expected to be in the civilian buildings in the town itself. They also have a heavy presence including SAM sites around <marker name='marker_SAM'>the military base</marker> which friendlies have learned the hard way. They will likely fly in reinforcements from there including BMD-4s.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
The Red Kingdom Army have retaken most other military installations on the island. They wear red camo and use similar weapons to us. One platoon has set up defenses <marker name='marker_AH6'>here</marker> and <marker name='marker_friendly'>here</marker> and might be able to cover us on our mission. Another mechanized platoon has recently reported in that they will launch their own attack on the <marker name='marker_airport'>airport</marker> using a Stryker APC and HMMWV. 
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
Secure the <marker name='marker_airport'>airport</marker>, <marker name='marker_townbase'>town base</marker> and <marker name='marker_com1'>all</marker> <marker name='marker_com2'>three</marker> <marker name='marker_com3'>areas</marker> of the communications base.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Fly to the east then kill all the enemies.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the helicopter to tranport troops and supplies where they are needed. There are likely trucks still at the military sites.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Nearby friendlies might use their missile launchers to kill enemy vehicles, but don't rely on them.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Avoid friendly fire.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Regular infantry have access to LAT.
<br/><br/>
The transport helicopter should seat 1 pilot, 1 co-pilot, 1 gunner for the rear .50 cal, and 24 passengers. If this isn't enough seats you can either make multiple trips or sling load the 16 seat Taru transport pod. There are also sling loadable supply boxes at the spawn. There are 2 green ammo boxes and 1 orange medical box. If you want to use the AH-6 you will need to sling load the <marker name='marker_start'>fuel truck</marker> to <marker name='marker_AH6'>it</marker>.
<br/><br/>
The AH-6 has 1 heavy hydra rocket pod and 1 DAGR pod. The DAGRs can lock on to lasers, either from the AH-6 itself or FAC (also the CH-53). Locking on to external lasers was unreliable in limited testing, you will have to press the lock on key alot. The DAGRs must lock on to a laser before launch in both LOBL and LOAL modes to actually hit the target.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;