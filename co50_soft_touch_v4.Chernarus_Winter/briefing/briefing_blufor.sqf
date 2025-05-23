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
1 NOV 2026. Russian forces have invaded Chernarus, and we are engaged in a desperate defense of the region. CDF forces have retreated to the town of Staroye following recent attacks, vacating the village of Shakhovka to the north. Our primary objective in the sector now is to defend the Oreshka Pass. However, we have reason to believe that the invading forces have overextended in their haste to capitalize on current gains, leaving them open to a counterattack.
<br/><br/>
To this end, our SOF platoon is tasked with conducting a strike behind enemy lines to delay their advance, allowing time for our forces to reposition and for civilian evacuations to complete. Our mission today is to move on foot through the Black Forest and strike the enemy's position at Guglovo, and root out a mortar position in the ruins of Kumyrna. We are additionally authorized to seize on any targets of opportunity that present themselves in the course of the mission.
<br/><br/>
Our mission begins at 0600. The current forecast is clear, but the day is expected to be overcast. We will be moving through dense evergreen forests, on lightly hilly terrain.

<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
We have identified several motorized rifle companies based in the Novy Sobor area, responsible for setting up a tentative hold in Guglovo. These groups are largely fitted with BTR-80s, BTR-80As, and a small handful of BMP-2s. One tank, presumably on loan, has been sighted heading towards Guglovo. 
<br/><br/>
Preliminary intel suggests additional recon platoons are advancing from the north-east towards recently-vacated Shakhovka, and forward units may have already set up in the town. These recon platoons are motorized, not mechanized. Advanced sniper teams may have already set up in Shakhovka, posing a further obstacle in the area.
<br/><br/>
We expect most enemy presence to be near the roads and trails in the region, with a decent infantry force around the occupied villages.

<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
One stay-behind platoon of CDF SOF, possibly supported by an attached MMG team and/or sharpshooter team. No reinforcements are expected, since all other available forces have been committed to the defense and evacuation of Staroye and Mogilevka.
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
Advance south to destroy enemy men and materiel in the village of <marker name='mk_guglovo'>Guglovo</marker>, and destroy or disable the enemy mortars set up in <marker name='mk_ruins'>Kumyrna</marker>. After the mission is complete, retreat southward towards friendly lines.
<br/><br/>
Intel suggests that a sniper team is establishing itself in Shakhovka, supported by scouts. If the opportunity presents itself, destroy this sniper team in <marker name='mk_shakhovka'>Shakhovka</marker>. 

"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Speed is key. Until we are able to disable the mortar nest, we are likely to be fired upon, and even afterwards lingering for too long in a single area is likely to attract artillery fire from the enemy HQ. Take advantage of the enemy's long chains of communication to defeat enemies in detail - isolate and destroy the enemy then move onto the next location. We do not expect significant enemy presence in the forest itself, so use it to your advantage.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Move on foot through the forest. You may commandeer vehicles to expedite extraction.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
MMG teams should act at PltCo's direction.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
*** Insert information on administration and logistics here. ***
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;