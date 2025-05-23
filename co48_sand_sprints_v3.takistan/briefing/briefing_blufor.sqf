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
Badistan hase been building up their military force concentration along the Republic of Gudar's eastern border for several weeks, and it seems like they've finally decided to act.<br/>
While most of our platoon was out on a routine reconaissance patrol of the area, our <marker name='marker_fob'>FOB</marker> came under heavy fire from enemy artillery. Our vehicles were 
destroyed in the barrage and the patrol elements consolidated at the <marker name='marker_sagram'>Sagram oil depot</marker> to regroup.<br/>
Command has instructed us to upload the latest recon data back to HQ, then retreat back to the rest of the battalion stationed at the <marker name='marker_military'>military base </marker>
outside <marker name='marker_rasman'>Rasman</marker>. We'll have to move fast - the enemy is probably launching their ground assault as we speak!<br/>
It is 9:30am. The weather is mostly sunny, and should more or less stay that way for the morning. The terrain consists of sandy hills and valleys. The enemy is equipped with locally-made 
equipment of Soviet design, plus some outdated surplus Soviet vehicles and technicals.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Up to a battalion of Badistani infantry, supported by some technicals and armored cars. They likely have a limited amount of IFVs that will be slower to deploy.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
One Gudari Reconaissance infantry platoon.
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
-Hold the <marker name='marker_fob'>FOB</marker> until we complete the data upload<br/>
-Retreat to safety at the <marker name='marker_military'>military base</marker> outside <marker name='marker_rasman'>Rasman</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The <marker name='marker_sagram'>oil depot</marker> is somehow interfering with our local data transmissions, so we won't be able to upload the reconaissance data until the patrol element 
exits the <marker name='marker_sagram'>depot</marker> and transmits the data back to the <marker name='marker_fob'>FOB</marker>. From there, we just need someone to approach the laptop outside 
the tent <marker name='marker_laptop'>here</marker> and begin the upload to HQ, which should take about 20 minutes.<br/>
Once the upload is complete, the platoon must extract west to friendly lines. If the platoon is not in contact, then reaching <marker name='marker_rasman'>Rasman</marker> should be sufficient; 
otherwise, we will need to get to the <marker name='marker_military'>military base</marker> before the enemy will break off their attack.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Our vehicles were destroyed by artillery, so we must move on foot. Use of enemy vehicles is discouraged except in case of emergency for IFF reasons.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Command strongly suggests that the patrol element return the <marker name='marker_fob'>FOB</marker> itself, both to help protect the data upload and to collect any personal items or something. 
However, this is not strictly necessary.<br/>
Be sure to balance the amount of equipment you're carrying; you'll want enough ammo to fight your way back to safety if necessary, but not so much that you'll get fatigued too quickly.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The initial transmission will execute automatically once someone exits the <marker name='marker_sagram'>depot</marker> in the direction of the <marker name='marker_fob'>FOB</marker>, though 
this will also alert enemy forces to our presence. Likewise, the data upload will begin once someone approaches the <marker name='marker_laptop'>laptop.</marker> We will get messages confirming 
both of these tasks have been executed.<br/>
There will be no resupply available once the patrol element steps off - not even at the <marker name='marker_fob'>FOB</marker>.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;