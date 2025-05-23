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
06:45:00 July 10th 2025, CSAT Pacific Fleet, 3rd Airborne <br/>
<br/>
The Royal Armed Corps Sahrani (RACS) have invaded the island of Tanoa during an internal power struggle. The king has brought those who are loyal to him to rule from Tanoa. Our pacific fleet is beginning an operation to liberate the Island from the rogue monarch.<br/><br/>

The main attack will be made by the marines at the <marker name='port'>Blue Pearl industrial port</marker> to secure our supply lines onto the island.<br/><br/>

However, Intelligence indicates that the king brought his royal guard regiments with him to Tanoa, which have been equipped with modern NATO gear and fighting vehicles. This may pose a major threat to the liberation. It is suspected that one of the regiments is gathering in the town of <marker name='obj4'>Omuéré</marker> and so it will be your job to draw out their main force and route them before they can mount their counter attack against the port.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The RACS on Sahrani are made up of mostly conscript forces using old American equipment and M855 ammo. However the Royal guard Regiments are trained to NATO standards and use M855A1 ammo with optics, aswell as using up to date NATO Vehicles. You will be able to identify the Royal Guard by their newer gear and tiger stripe camo.<br/><br/>

The enemy has full control of the island and has set up anti air positions near our landing sites. There is a battery in the town of <marker name='AA'>Vagalala</marker> as well as the heavily entrenched and heavily defended town of <marker name='obj4'>Omuéré</marker>.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Most all of the fleet's resources are dedicated to the landings at the port. There will occasional Naval bombardments and Jet attacks being made against targets on the island.
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
-Take control of <marker name='obj1'>Nandai</marker><br/>
-Take control of <marker name='obj2'>Luganville</marker><br/>
-Destroy the Royal Guard QRF that comes from <marker name='obj4'>Omuéré</marker><br/>
-Withdraw if the QRF becomes overwhelming<br/><br/>

[Optional] -Destroy the <marker name='obj3'>Communications tower</marker><br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Sweep the coast and break up enemy concentrations before preparing to ambush the counter attack. This is just a delaying action and so only fight for as long as you think you can before withdrawing.<br/><br/> Do not attempt to enter the town of Omuéré as it is heavily defended by AA emplacements and direct fire artillery.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You will be inserting via the Xi'an.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
The Xi'an is equipped with a 30mm cannon, 38 Skyfire FFAR's and 8x Vikhr AT missiles for fire support.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
The <marker name='obj3'>communications tower outside Omuéré</marker> is a key piece of infrastructure for the enemy communications but is being covered from airstrike by AA. Command has added a bonus objective to destroy the tower to the mission.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The Xi'an seats: 1 Pilot, 1 Gunner, and 14 passengers. There is Rearm, Repair and Refuel on the Carrier where you spawn. There is 1.8km of landing strip for you, you hopefully will not need it all.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;