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
2015, September
<br/>
The ceasefire we were mediating has fallen apart.
<br/>
With the conflict restarting we have gotten reports that the town of <marker name='marker_ani'>Anizay</marker> is being shelled.
<br/>
Observers present in Anizay have determined that this shelling is coming from the smaller town of <marker name='marker_obj'>Khas</marker> to the south.
<br/>
We are being deployed to bring a stop to this shelling to protect the civilian population of Anizay.
<br/>
Between us and the objective are three occupied towns.
<br/>
Trying to bypass them is too risky, we would lose valuable time and the roads are not as reliable in the desert.
<br/>
Observers reported that OPFOR have built up defences in the village of <marker name='marker_t3'>Musakhan.</marker>
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
OPFOR are wearing a mix of plain green and semi-arid uniforms equipped with old green SSh-68 helmets and 7.62 FN FALs.
<br/>
Reports of soft skin vehicles present, ranging from armed technical to BTR-60's.
<br/><br/>
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
- Push through the village of <marker name='marker_t1'>Landay.</marker>
<br/>
- Push through the village of <marker name='marker_t2'>Zaranj.</marker>
<br/>
- Push through the village of <marker name='marker_t3'>Musakhan.</marker>
<br/>
- Determine the location of the mortars present at <marker name='marker_obj'>Khas</marker> and eliminate them.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The fastest way from the airfield to the town of <marker name='marker_obj'>Khas</marker> is straight through the three occupied villages.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Mechanised force using M113's to move rapidly between objectives.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
We are still operating as peacekeepers here, rules of engagement have been loosened to only firing when fired upon.
<br/>
There is a <marker name='marker_mos'>mosque</marker> present at the town of Khas, UN forces are not permitted to enter but can return fire if engaged by OPFOR from within.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
- M113 holds 13 total.
<br/>
- Ural holds 15 total.
<br/>
- UAZ holds 7 total.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;