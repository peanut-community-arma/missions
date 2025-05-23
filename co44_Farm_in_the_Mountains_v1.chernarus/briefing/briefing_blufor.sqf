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
Our PMC has been tasked with investigating radio and magnetic interference that seems to be centered on <marker name='marker_3'>Green Mountain</marker>, after a civilian investigator went missing. Civilians in this area have reportedly been behaving strangely, cult activity is likely.<br/><br/>

Due to restrictions in the area, our weapons are limited to hunting weapons and whatever we could scrounge, the same should be true of any armed resistance we may encounter.<br/><br/>

Your <t color='#00ff00'>compass</t> may be of some use in detecting magnetic anomalies, but note that your 'internal' compass is not affected. The <marker name='marker_4'>bus stop</marker> near our staging point is an example of one such magnetic anomaly.<br/><br/>

Our <marker name='marker_7'>HQ</marker> disguised as a Hospital/Office has also been out of contact since shortly before we arrived, but this may be due to the radio interference.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Possible cultists.
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
- Investigate <marker name='marker_3'>Green Mountain</marker> to the best of our ability<br/>
- Regain contact with <marker name='marker_7'>HQ</marker><br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
They just kept talking about legendary fish for some reason.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
SUVs are available, but a short hike couldn't hurt either.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
None.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Disabling the source of the radio interference is not critical, but would likely help us.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
7x SUVs loaded with some supplies.<br/><br/>
Your (physical) <t color='#00ff00'>compass</t> may be helpful in finding nearby magentic interference.<br/><br/>
Beofeng 888S, not the best radios, but they have decent range, and audio feedback for which channel you're switching to when turning the channel dial.<br/><br/>
Cable ties are available for securing any civilians you may find.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;