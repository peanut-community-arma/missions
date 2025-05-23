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
Oct 10th 2021 05:45:00, Pulau Airborne Special Service (PASS), 303rd Commando Rangers 1st Plt.
<br/>
<br/>
While there is peace on the greater Archipelago of Palau, In the last 2 days the situation on Pulau Monyet has deteriorated into open war. Pirate factions have formed an alliance named the Pulau Autonomous People’s Army (PAPA) and have begun to take hostile actions on the south side of the island. Our forces have been in disarray and many civilians are now stuck within this Pirate controlled zone.<br/>
<br/>
One of these pirates' main source of income is from ransom and so one of their first actions was to take hostages at the <marker name='hotel'>Nirwana Hotel</marker>. These hostages include guests and local staff members. We have a limited time to go in and rescue these people before they are moved into the jungle and eventually out to sea. Our air force has already dropped mines in the entrance of the inlet to Nirwana, to give ourselves precious time to conduct this mission.
<br/>
<br/>
We will be the first part of a 2 stage operation to rescue these hostages and begin to retake control of the island. In the early morning we will insert behind the enemy forces and move to quickly take control of the Nirwana Hotel and conduct our search and rescue operation. Simultaneously a Mechanized Platoon will sweep down the coast, Capturing <marker name='Larete'>Larete</marker> and then moving to link up with us.<br/><br/>
<br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The pirate forces are armed with soviet era equipment and many have no body armor. However don’t underestimate them; many are seasoned fighters who have been working in the jungles and at sea for many years.<br/>
<br/>
Our UAV has spotted the majority of the enemy forces to the <marker name='marker_21'>west in the jungle,</marker> however there will most likely be enemy reinforcement to the <marker name='Larete'>north</marker> at the start of the operation before our friendlies have taken Larete. There are some pirates who are using the <marker name='town'>homes nearby the hotel</marker> to live in and, who will most likely have heard our helicopters dropping us off and be ready for a fight.
<br/>
<br/>
While we hold air superiority, the enemy is equipped with AA capabilities, using technicals to keep these heavy weapons mobile and hidden from us. As a result close gunship support is not available and you will need to deal with the technicals on your own. We expect some to be armored and fielding heavy weaponry.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
There will be 1x Mechanized Plt. Driving LAV-25’s To the north cutting off enemy reinforcement. <br/>Supporting there is 1x Helicopter Plt. which has acted as your transport and 2x UAV’s monitoring the area."]];

/* ================================================================================
	MISSION
	 - Describe any objectives that the team is expected to complete.
	 - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission = ["diary", ["Mission","
<br/>
<font size='18'>MISSION</font>
<br/>
- Clear the <marker name='hotel'>Hotel</marker><br/>
- Clear the <marker name='town'>Town of Nirwana</marker><br/>
- Secure the Hostages and Defend against counterattack<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
UAV reports indicate that there should only be light patrols on the south side of the objective and so your concern should be focused on clearing your objectives and holding from counter attacks.
<br/><br/>
The pirates will be able to attack us from the north at the beginning of the battle. However our friendly forces should be able to divert their attention away from us on that front, allowing you to turn your attention towards the west.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We will be moving on foot
<br/><br/>

<font size='18'>ROE</font>
<br/>
You are free to fire on all armed combatants. Do not harm any civilians or damage any buildings.
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
<br/>
<br/>
There is no need to extract the civilians, just secure their safety
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;