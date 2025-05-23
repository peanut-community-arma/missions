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
	 Corp® Inc. CorpSec™ SecBattalion®
	Corp® Inc. Corpxecutive™
	Corp® Inc. CORPBOSS™
*/

private _situation = ["diary", ["Situation","
<br/>
<font size='18'>SITUATION</font>
<br/>
In Kujari we determined that Corp® Inc. CorpSec™ EssEff® was providing the insurgents there with weapons. After we acquired those weapons, we gave our old guns and vehicles to the civilians who will definitely form a very peaceful militia and tracked the escaping helicopter to a Corp® Inc. facility on Tembelen Islands. We deployed to a UN base on the island to start our investigation.
<br/><br/>
Our investigation was concluded when a Corp® Inc. Corpxecutive™ who is C1 FTL's cousin called and told us that a Corp® Inc. CORPBOSS™ has gone haywire and took over Corp® Inc. CorpSec™ to do bad things. A few other Corp® Inc. Corpxecutives™ defied the Corp® Inc. CORPBOSS™ and were taken to a facility to be pacified. The call was cut short after sounds of a struggle.
<br/><br/>
Our mission now is to secure the <marker name='marker_ysland'>island base</marker> and attempt to find and neutralize the rogue Corp® Inc. CORPBOSS™. If it isn't in the base there may be intel leading it it's location. The Corp® Inc. Corpxecutives™ are expected to already have been pacified so we are not purposely rescuing them.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
One Corp® Inc. CorpSec™ company armed with SMGs, shotguns and RPG-18s. They wear various clothing and wear tacvests. An additional Corp® Inc. CorpSec™ EssEff® platoon is in the area armed with 5.8mm AKs, HK417s, and RPG-32s. They wear all black uniforms. Enemies have a few IFVs and armed boats at their base, as well as transport helos.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
None.
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
Our objective is to secure the enemy <marker name='marker_ysland'>base</marker> and search for anything that might tell us where the Corp® Inc. CORPBOSS™ might have gone if it isn't in the base.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Insert via boat on the shore of the east most island. The enemy have heavy weapons looking over the canals which will certainly destroy our boats. Once landed, methodically clear the island of enemy presence while searching for the Corp® Inc. CORPBOSS™ or any intel (documents, maps, laptops, etc.) that may tell us what it's up to.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Boat to the island, avoiding the red marked areas, then clear the base on foot.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
The boats have HMGs that could be useful.
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
Each RHIB seats 12.
<br/><br/>
Also we found a box of shotguns so you can bring one if you want.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;