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
We have tracked the rogue Corp® Inc. CORPBOSS™ to the <marker name='marker_town'>town of Anthrakia</marker>. Satellite recon shows many IFVs defending the main roads into the town so high command has given us upgraded AT to deal with the threats. We have been stealthily deployed on the opposite side of the town from the heavy defenses, however Corp® Inc. CorpSec™ are all over the area in and around the town. When we landed we realised that an MMG team was also in the stealth deployment vehicle with us so we have them here too now. The weather is partly cloudy and is expected to remain this way throught the entire operation.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
One Corp® Inc. CorpSec™ company armed with SMGs, shotguns and RPG-18s. They wear various clothing and wear tacvests. An additional Corp® Inc. CorpSec™ EssEff® platoon is in the area armed with 5.8mm AKs, 7.62 DMRs, and RPG-32s. They wear all black uniforms. Enemies have a few IFVs and MG armed land and air transports. They have checkpoints into the town on every major <marker name='marker_checkpoint_001'>here</marker>, <marker name='marker_checkpoint_002'>here</marker>, and <marker name='marker_checkpoint_003'>here</marker>, with heavier defenses <marker name='marker_checkpoint_004'>here,</marker> <marker name='marker_checkpoint_005'>here,</marker> and <marker name='marker_checkpoint_006'>here</marker>.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Just us.
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
Our objective is to go into the <marker name='marker_town'>town</marker> to find and destroy the Corp® Inc. CORPBOSS™. Once killed we have to grab its dog tag shaped RFID chip, then hold the town against enemy counter attack.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Head west to the town. There is a rocky hill with good sight lines into the town, but that also means the town can look right back. There isn't much cover between the high ground to the east of the town and the town itself, so the heavy defenses on the southwest side of the town might be able to engage from their positions. Clear out enemy checkpoints on the way into the town, then the town itself. The enemy has set up additional military buildings in the town that the HVT might be in. Look out for fortified civilian buildngs too. Once the HVT is down the the RFID chip is secured, prepare defensive positions for an enemy counter attack.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Move on foot into the town. The hill overlooking the east side of the town has viable approaches into the town on either side of it. Whichever way you decide to take into the town, putting MMG team in a position to cover the platoon during movement would be wise. Once the HVT is down and the town secured, the platoon should take defensive positions in the buildings in the checkpoints to use them against the enemy counter attack.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
None.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
None.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
To collect the 'dog tag shaped RFID chip' from the HVT body, use ACE interact to take the dog tags off the body. It would be best to give it to Plt Co or a squad leader to hold on to.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;