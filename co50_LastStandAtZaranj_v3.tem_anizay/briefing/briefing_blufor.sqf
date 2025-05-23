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
We are an advance militarized wing of the Zaranji Freedom Party operating under the sponsorship of our CSAT benefactors. On a recent run to hit a nearby Anizay Liberation Army supply depot, we stumbled upon some documents containing some sensitive information, but our return convoy was subsequently ambushed. We have made it on foot to the nearby town of Zaranj, where we will call in a relief force to arrive from the east. Until they arrive, we must hold out and survive. Once they get there, mark a landing site for them with whatever signalling items you have and evacuate the location with haste.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
We have kicked the hornet's nest. Expect to face a rough company or more of Anizay Liberation Army soldiers and militia forces, supported with light vehicles. The ALA are equipped with a mixture of old FN FALs and PKMs, while their militia are furnished with AKMs and SKSes. Rumour has it that a small group of spec-ops units are also on standby and may make an appearance.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Our CSAT contact assures us a helicopter relief force (consisting of two grey Mi-8MTs) will be on the way any moment now. Otherwise, we are on our own.
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
Hold out in <marker name='mk_zaranj'>Zaranj</marker> until relief forces arrive. Once they arrive, mark a landing site for them and evacuate the area.<br/>
<br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
Retrieve abandoned supplies from <marker name='mk_ambush'>our ambushed convoy</marker>, and from the <marker name='mk_caches'>hidden eastern caches</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
In our haste we left many supplies with the remains of our convoy. It may make sense to retrieve what supplies remain in the area when possible, bearing in mind that ALA forces may have retaken that area. Sympathetic locals have also helped us stash weapons in crates to our immediate east, though we do not know their precise location.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We will be moving on foot.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
If we can find HE rounds, the mortar team may use them to defend Zaranj.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Retrieve abandoned supplies from <marker name='mk_ambush'>our ambushed convoy</marker>, and from the <marker name='mk_caches'>hidden eastern caches</marker>.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The satellite phone used to call in help will start the mission <b>immediately</b>, removing arsenal access and triggering spawns. <b>Do not leave spawn</b> until it is triggered!<br/>
<br/>
CO, SLs, TLs and CLSes have access to radios. Other team members should not have access to radios. The mortar team is not meant to have access to HE rounds. These must be found.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;