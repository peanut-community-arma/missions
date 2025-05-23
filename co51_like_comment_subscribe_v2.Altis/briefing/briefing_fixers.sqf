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
10 AUG 2029. Money's been hard to come by ever since the sanctions, so when a bunch of rich foreign web stars offered you stupid amounts of money to keep them safe, of course you said yes. Now, you've been charged with babysitting three professional idiots and their production team while they drive around the Altian countryside. Officially, the entire country is deemed unsafe for travelers because of the threat of kidnapping by local gangs and corrupt police - and guess what, they're right! But that's no reason to not make a quick buck on the side. And hey, you might even get famous in the process.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Whatever local AAF, police, and FIA presence are in the area. We're not talking serious hardware, the nastiest thing the locals have got are surplus small arms and a bunch of jeeps. But that's still plenty enough to kill a tourist.
<br/><br/>

<font size='18'>'FRIENDLY' FORCES</font>
<br/>
One to three 'stars', and a small camera/production crew. Somewhere between 10-40 fixers trying to keep their heads literally on their shoulders.
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
<font size='18'>JOB DESCRIPTION</font>
<br/>
Ferry the streamers and their camera crew to their different shot locations. Don't let them get kidnapped, killed, or (seriously) injured. Also, the boss wants us to snag a briefcase from <marker name='mk_helo'>the AAF base on the hill</marker> but like, discreetly on the DL.
<br/><br/>

<font size='18'>SIDE GIGS</font>
<br/>
Everyone knows the fastest way to a big tip is to please the customer. Try to accomodate their weird demands. If the weird demands contradict each other, go with whoever can probably make you richer and/or more famous.<br/><br/>
At the same time, a dead tourist can't tip - feel free to assert yourself for safety and security reasons.
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