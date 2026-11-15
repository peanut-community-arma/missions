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
February 12th, 2031
<br/>
Federated Republic of Grozovia - Podagorsk island chain
<br/>
Longtime post-Soviet wounds have festered and grown into a conflict. The Republic of Ardistan has invaded the northernmost islands of Grozovia, claiming the islands were always Ardistani territory and the collapse of the Soviet Union had illegitimately put them under Grozovian control.
Podagorsk was quickly seized in the initial Ardistani push, and Ardistan has deployed sea mines and AA systems to keep Grozovian troops from being landed on the island. 
<br/>We are the first Grozovian Airborne troops to be able to land on the island since its seizure two months ago. We must weaken the Ardistani hold on the island in order for a complete Grozovian force to retake the island.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>At least two companies worth of Ardistani airborne troops and vehicles have been dropped into the AO. They wield 5.56 rifles and 7.62x54 machine guns and wear modern body armor. They operate Soviet and modern Russian vehicles, including airmobile BTRs and BMPs. 
<br/>
Tanks and heavier vehicles may have made their way into the AO via boat, but will likely only be used closer to the east end of the island. <br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A single platoon of Grozovian Naval Airborne troops and light vehicle reinforcements. Two license-produced Kopiník up-armored Warrior IFVs and several Land Rovers. 
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
Destroy the entrenched enemy anti-air systems located near <br/>
<marker name='obj1'>the bombed-out town and military base of Kronotsky,</marker><br/>
<marker name='obj2'>the power plant north of Kovrov,</marker><br/>
<marker name='obj3'>and one located within Kovrov itself.</marker><br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Take each site, destroy each AA battery, and prepare for a brief, intense counterattack. 
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We have access to enough wheeled vehicles to move the entire platoon quickly. The Land Rovers are unarmored and ideally should not be used for combat (excepting the GMG-equipped Land Rover assigned to the MMG team and the HAT-equipped Land Rover assigned to the MAT team). The rolling hills and forests make off-roading difficult and unpredictable, but likely safer than taking main roads.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
No air or artillery support can be provided within enemy territory. Use your vehicles' and MAT gunner's antitank and anti-structure abilities carefully. 
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
N/A
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
A crate with demo blocks and clackers has been provided - enough to give each individual SL enough demo blocks to blow up each AA piece themselves need be. <br/>
Please let me know if the scripting on the IFV guns breaks. I've set them up to use PKMs instead of the british chaingun thing and I'm not sure it'll work in multiplayer.<br/>
Instruct your players to bring additional ammo in their Land Rovers, especially if they're one of the DM/AARs. 
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;