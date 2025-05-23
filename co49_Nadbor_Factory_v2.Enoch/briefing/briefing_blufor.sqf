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
2022 10/20/2022, 12:00:00, Townspeople of Nadbór.
<br/>
<br/>
The mayor’s daughter “Garfeilia” has gone missing! A search party has been organized to go look for her and bring her home safely. The only clue we have is she posted a selfie at the old factory to her snapchat story.
<br/><br/>

<font size='18'>OLD RUMORS</font>
<br/>
Hunters used to report seeing weird lights from the factory about a decade ago, but nobody talks about that anymore.
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
- Search the <marker name='fact'>Factory</marker> for the mayors daughter
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>MAYOR'S MOTIVATION</font>
<br/>
Your daughter means so much to you, you’ll do anything to find her again.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You will be moving on foot.
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
We have handed out all the chemlights and flares we could find.

There are secrets all over the map. Good luck trick or treating.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;