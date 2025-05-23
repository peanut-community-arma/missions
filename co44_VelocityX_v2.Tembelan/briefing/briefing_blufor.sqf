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
The Gendarmerie have tracked our group's hideout at FOB Tinggi and kicked us out! Worse yet, they stole our sports tuned suvs and plan on demolishing the massive ramp we have spent the past 3 months (illegally) building. Fortunately, the two predominant gangs of our group, the Teku and Metal Maniacs, have provided the required weapons and gear for us to take back our home by force.
<br/><br/>
However, after we recover our home and wheels, we'll need to send a message to keep this from happening again. As such, we will launch one of our cars off of the ramp and into Tambang Bay, asserting our dominance and triggering the orbital laser the Teku setup to wipe out the <marker name='police'>Gendarmerie HQ in the southern portion of Lapangan Futsal</marker>.
<br/><br/>
The Demolition is scheduled for tomorrow, so we must succeed today!
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Gendarmerie Infantry Forces.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A group of the Teku's and Metal Maniac's finest gangsters.
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
Secure the port and mining complex of <marker name='dock'>Ekspor</marker>
<br/>
Recover our SUVs from the <marker name='lot'>impound lot</marker>.
<br/>
Launch one of our cars into the mouth of <marker name='bay'>Tambang Bay</marker>.
<br/><br/>
OPTIONAL: Remove all Gendarmerie from <marker name='fob'>FOB Tinggi</marker> so that other members of the gang have easy sightlines to the laser's fire mission.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We must have a rat, because the Gendarmerie know about our plans and planted a <marker name='minefield'>minefield</marker> at the southern enterance of our shanty town. Luckily, we have a makeshift <marker name='bridge'>bridge</marker> setup to cross over towards the Ekspor dock property. Since they know of our whereabouts, prepare for contact soon after crossing the bridge. Additionally, expect a significant defense at Ekspor and FOB Tinggi with a potential counter attack when we start moving towards the impound lot. Be mindful that if, somehow, we manage to lose all five of our SUVs in the impound lot, the mission is considered a failure.
<br/><br/>
A couple notes when launching your car into the bay: 
<br/>
You MUST land it inbetween the two buoys at the mouth of Tambang Bay in order for the car's targeting computer to properly sync up with GRAVITY to perform its tasking. (Do not ask how this works, you will not get a straight answer).
<br/>
Aim to have the vehicle reaching around 200kph prior to hitting the ramp, at minimum. You may need to have the SUVs start from around the <marker name='launch'>Mud Flats</marker> in order to get enough speed.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Movement is at Gang Leader's discretion.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Orbital laser platform, callsign GRAVITY, is on standby to strike the HQ, but ONLY when we have successfully demoralized them through our superior stunt track driving skills.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Please do not blow up all the vehicles in the impound lot. Also, there is a half ramp at the tip of the big ramp on the right hand side of said ramp in FOB Tinggi. This will let you corkscrew your car through the air. It is *strongly* recommended you try to hit this for style points.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;