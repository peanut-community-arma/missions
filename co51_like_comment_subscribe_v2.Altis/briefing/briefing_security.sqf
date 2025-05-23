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
10 AUG 2029. You thought you'd rake in money hand over fist when you left the military to start your own security company. But money's been hard to come by ever since the sanctions, so when a bunch of rich foreign web stars offered you stupid amounts of money to keep them safe, of course you said yes. 
<br/><br/>
Now, you've been charged with babysitting three professional idiots and their production team while they drive around the Altian countryside. Officially, the entire country is deemed unsafe for travelers because of the threat of kidnapping by local gangs and corrupt police - and guess what, they're right! And the insufferable tourists treat you like you're stupid just because you understand exactly how dangerous things are. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The AAF in the region are pretty touchy ever since you... borrowed... some equipment to start up your company, and you're not actually sure if the cops are sufficiently bribed to not shoot. FIA are present through the forests and they might take offense to someone rolling through 'their' forests with a camera. To make things worse, there have been recent spates of roadside ambushes and IEDs. It would be best to conduct thorough sweeps of town before you let them monkey around with their cameras and weird stunts.
<br/><br/>
The two towns have civilians inside, but no one goes north of Abdera these days because of the constant FIA-police-AAF firefights. The AAF have also probably set up checkpoints between the two towns - you should be OK so long as you don't shoot first or trespass. The AAF obviously don't want anyone in their <marker name='mk_helo'>local base</marker>, and FIA are protective over the <marker name='mk_airstrip'>dirt airstrip</marker> they use for arms smuggling.
<br/><br/>
<font size='18'>'FRIENDLY' FORCES</font>
<br/>
One to three 'stars', and a small camera/production crew. Somewhere between 10-40 fixers trying to keep their heads literally on their shoulders. The local guys you hired are solid but a bit flaky sometimes, but given your reputation you can probably keep them in line.
<br/><br/>
The following vehicles are available for use:<br/>
- 1x Offroad (Production)<br/>
- 1x Volkswagen Golf, decorated (Streamers)<br/>
- 1x Jeep Wrangler (Apex DLC; Security Chief)<br/>
- 3x Van (one per fixer squad)
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
- Finish filming three on-location scenes: by the <marker name='mk_galati'>Galati kindergarten</marker>, the <marker name='mk_abdera'>historic church in Abdera</marker>, and the <marker name='mk_beach'>beach at Krya Nera</marker>.<br/>
- Don't let them get kidnapped, killed, or (seriously) injured.<br/>
- Grab a briefcase, containing the last known records of the quartermaster's inventory when you started this company, from <marker name='mk_helo'>the AAF base</marker>, discreetly. There might be a minor shootout but you can probably talk it over with the tourists. <br/>
<br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
You've got a reputation to uphold - feel free to assert yourself for safety and security reasons. Conduct your mission thoroughly, professionally and with utmost caution - you never know when the next ambush might be. If you get weird requests, remind them that it'll cost extra, but unless it actually actively endangers them it's probably some dumb streamer thing that's fine to indulge.<br/><br/>
The <marker name='mk_airstrip'>dirt airstrip</marker> is a local hub for FIA arms-runners. There's probably some nicer gear in there worth grabbing - again, if you can do it without looking shady, you should help pad out our profit margin. Look for caches in the reeds and in the buildings nearby.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>

<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
*** Insert movement instructions here. ***
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
*** Provide details on any available fire support. ***
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
*** Insert instructions for specific units here. ***
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["OOC mission notes","
<br/>
We're all here to actually have fun with each other, and while the mission is set up to be semi-antagonistic, try not to push unless you KNOW for a fact that people are comfortable and in on the joke. Remember that different groups of players have vastly different 'objectives' due to the way the mission is set up - let people have their fun, but also remember that the mission will almost literally grind to a halt if you don't give a little and compromise.
"]];

player createDiaryRecord _administration;
/* player createDiaryRecord _execution; */
player createDiaryRecord _mission;
player createDiaryRecord _situation;