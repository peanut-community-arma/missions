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
08:00:00 July 10th 2020, Horizon Islands Defense Force Legionnaires <br/>
<br/>
High command hates us, they have given us gear they bought off the Vietnamese that they captured after the Americans lost the war. At least they didn’t cheap out on the ammo.<br/><br/>

<br/>The Legionnaires job is to go and die to secure footholds against rebelling island’s so they may be pacified. The commanders have chosen our platoon to conduct a beach landing against the communist separatists of Pulau after they shot some cannons at another island.<br/>

<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The Pulau People Republic Army are a communist separatist group which has taken over control of the Pulau Gurun island. It is believed that the French are bankrolling this group.<br/><br/>

They are armed with early soviet small arms and armor, aswell as early BTR and BMP’s<br/><br/>

Recon flights show 13 ZU guns scattered around the island other than the 8 in the main objectives.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We are the HLDF Legionnaires. A Ragtag force that accepts anyone as long as your not a bigot or an asshole. Kinda like the French foreign legion but a better class of person.<br/><br/>

We have third hand gear, but first hand ammo<br/>
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
-Destroy 3 D-30 guns in <marker name='obj1'>Bibung</marker><br/>
-Secure the <marker name='obj2'>Old FOB</marker><br/>
-Secure the <marker name='obj3'>Gurun Airfield</marker><br/><br/>
OPTIONAL: Impress command by landing the plane at the Gurun Airfield at the end of the mission
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Conduct a beach assault and then move in land to capture the airfield
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Once you make landfall, you will be moving on foot.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
We have been supplied with 1 Supertucano crew and plane.
<br/>It can use Laserguided missiles, hydra rockets, 500lb and cluster bombs.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
For style points, land the plane on the airfield at the end of the mission.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The Supertucano crew is on the plt. 148<br/>
The WSO can lase targets for the missiles making a FAC not 100% nesscary. Use Numpad plus and minus to change camera tracking style.  If flying the plane solo, get in the WSO seat and tilt the camera up slightly so you can use it to aim your bombs better
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;