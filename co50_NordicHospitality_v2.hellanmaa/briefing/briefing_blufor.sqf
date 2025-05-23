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
In the distant year of 2035, the Nordic countries are allowing a series of trial NATO-run 'outreach sessions' on Nordic land. However, the situation has rapidly deteriorated to the point where only a joint pan-Nordic surprise attack will be enough to communicate our displeasure. Specifically, we have evidence of NATO forces:<br/>
- Littering in the woods despite the 'no littering' signs<br/>
- Keeping their shoes on when walking into homes, and loudly talking indoors to complain that no one else is speaking<br/>
- Implying all Scandinavians are 'the same'<br/>
- Disrespecting Eurovision<br/>
These insults must be paid for, in blood. We will begin by launching an assault on a nearby NATO vehicle depot to take out any mechanized reinforcements before proceeding into the main outreach center-come-outpost in Taipale and proceed to firmly, politely, and lethally remind them about the limits of proper guest behaviour.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Around a company of NATO forces. If we succeed we should take out the majority of their mechanized reinforcements, leaving only motorized support. However, be aware that mechanized reinforcements may be sent in from the north.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
The Norwegians and the Danish have told us they're running diplomatic interference (or so we presume, since we could barely understand the Danish point of contact). The Finns were staring off at the direction of another outpost and sharpening all of their many knives, so we felt it was rude to disturb them. For this assault, we are on our own.
<br/><br/>

<font size='18'>TERRAIN AND TIME</font>
<br/>
The area around Taipale is thickly forested, broken up by fields. We will begin our assault at 0215.
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
Destroy NATO vehicles at <marker name='mk_depot'>the depot</marker>, then take and hold <marker name='mk_taipale'>Taipale</marker> against any immediate counterattacks.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We will be proceeding on foot through the area. Initially we will have the element of surprise so we should aim to preserve it as long as possible, however once we begin fighting properly we should seek to advance quickly to put ourselves in good cover to avoid having to fight through the relatively sparse cover in the forests.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We will move on foot at platoon command's discretion.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Team leaders and squad leaders have access to demolition blocks to destroy enemy vehicles at the depot.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Team leaders and squad leaders have access to demolition blocks in ACE Arsenal.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;