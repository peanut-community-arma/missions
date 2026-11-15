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
2021, September
<br/>
We are being dispacted to Kavala to rescue a unit that is currently pinned down in the city.
<br/>
The friendly convoy had pulled off the MSR and was ambushed on <marker name='marker_obj'>this side street,</marker> where survivors retreated into the compound to the <marker name='marker_nw'>north-west.</marker>
<br/>
Your task is to extract any living survivors, if there's no one left by the time you arrive, the dog-tag of the squad-lead identifiable by a beret will suffice.
<br/><br/>
Between you and me they got themselves into this mess, diverting off the MSR is strictly forbidden when moving through unsafe cities, and now we've got a full blown riot on our hands.
<br/>
Clean up this mess, if we make it through this they're looking at a court-martial, or god forbid a medal.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
FIA forces are predominantly armed with 7.62 AKM rifles, irregular mix of civilian clothing and body armour.
<br/>
Some mix of deserter AAF equipment, they all identify themselves with a blue arm-band.
<br/>
The riot in Kavala is still escalating, stay too long and you're looking at armed technicals and maybe one of the stolen BTR-80A's.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
The AAF convoy's equipment matches our own, they'll be rattled and shooting so be careful when approaching.
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
- Rescue surviving AAF infantry located in <marker name='marker_nw'>this</marker> compound.
<br/>
- If no survivors are located, the dog-tags of the squad lead wearing a beret will suffice.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Speed is of the essence, getting bogged down in firefights will eventually lead to the platoon being overwhelmed.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the vehicles provided to reach the compound and extract safely.
<br/><br/>
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
- Zip-ties have been provided to safely move survivors into vehicles for extract, be cautious when approaching them.
<br/>
- Fennek holds 4 total.
<br/>
- Land Rover holds 8 total.
<br/>
- KamAZ holds 17 total.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;