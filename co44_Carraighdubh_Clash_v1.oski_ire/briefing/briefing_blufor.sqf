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
It is late morning. The skies are moody, with the last hint of the morning's fog withering away. The world is at war.
<br/><br/>
NAPA has pushed our forces a long way West - it's time to push back. Our job is to retake the town of <marker name='town'>Carraighdubh</marker> from NAPA, as well as two strategic points on its outskirts, the <marker name='warehouse'>warehouse</marker> and the <marker name='stables'>stables</marker>. Holding these points will make it easier to defend NAPA's reinforcements, which will undoubtedly begin to filter in from further East once the battle is joined.
<br/><br/>
NAPA is expecting an attack from us, and may even have some light entrenchments. They have patrols set up in a wide radius out from the town. Knowing this particular NAPA commander, we expect them to blindly launch a heavy counterpush out West from the town when we make our presence known or are spotted. We'll have a precious couple of minutes to manuever while they mobilize, but we obviously can't know exactly when they become aware that we're here unless we fire the first shots.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Several battalions of NAPA infantry, with some BTR support. NAPA infantry can be identified by the intense color saturation of the reds and whites in their woodland camo, as well as by their lack of helmets. They are concentrated in and around our objectives, as well as East of them.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We are a platoon of Irish Army soldiers. We are on our own. We have 2x HEMTT transport trucks here at our insertion point that we can use to retreat further west, should we fail to complete our objectives.
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
-Take and hold the <marker name='town'>TOWN</marker>, <marker name='warehouse'>WAREHOUSE</marker>, and <marker name='stables'>STABLES</marker>.
<br/>
-If you are unable to do the above, retreat west using the HEMTT <marker name='trucks'>trucks</marker>, live to fight another day.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The expected counterpush (see 'Situation' tab) is a serious threat and should be considered as such. We can either take good cover and do our best to fight it directly, or skirt North or South so as to dodge and then flank the brunt of the assault. Exact movement is at PLTCO's discretion.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
See above.
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
We have access to 2x HEMTT transport trucks, each seating 18, for the purposes of retreating if needed.
<br/><br/>
There is a wide assortment of red dot choices available in the arsenal, courtesy of Masada.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;