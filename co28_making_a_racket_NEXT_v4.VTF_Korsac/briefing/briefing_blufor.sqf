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
We've spent 20 long years in the clink after our little dust up in Fapovo. Now we're free and in new lands ripe for profiteering! <br/>
We've scouted out a couple of <marker name='marker_0'>industrial sites</marker> under the protection of a local crew, we're gonna go introduce ourselves.<br/>
We'll see if we can come to an 'agreement' about whose responsibility it is to 'protect' these folks, eh?
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
A whole lotta wise guys rocking surplus American kit, tough customers.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A whole lotta OUR wise fellas rocking all kinda kit, old AND new, plus a sweet armored truck the boys welded up!
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
Travel in force to the <marker name='marker_0'>industrial sites</marker> near Rostok and eliminate our competition, clear the factories of the rival crew. They have a significant presence in the area, expect them to call backup to the factory.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We're sending a message, if one or two get away, good, they can spread the word.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Travel with our vehicles as far as we can, abandon them if we must, it's not a long walk.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A
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
We've got a transit bus that can fit all the soldiers, 3 sedans that seat 4 each, a motorcycle and the armored truck, that's 2 in the front, 4 shooters in the back.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;