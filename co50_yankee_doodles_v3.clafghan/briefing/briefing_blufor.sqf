/* ================================================================================
	GENERAL BRIEFING NOTES
 - Uses HTML style syntax. All supported tags can be found here - https// community.bistudio.com/wiki/createDiaryRecord
	 - For images use <img image='FILE'></img> (for those familiar with HTML note it is image rather than src).
	 - Note that using the " character inside the briefing block is forbidden use ' instead of ".
*/

/* ================================================================================
	SITUATION
	 - Outline of what is going on, where we are we and what has happened before the mission has started? This needs to contain any relevant background information.
	 - Draw attention to friendly and enemy forces in the area. The commander will make important decisions based off this information.
	 - Outline present weather conditions, players will typically assume that it is daylight with sunny weather.
*/

private _situation = ["diary", ["Situation", "
<br/>
<font size='18'>SITUATION</font>
<br/>
The Takistani military is under new leadership that is quite unpleased with our presence. They'll be here soon to tell us in person. <font color='#ffb5b5'>We need to hold our ground until we can get proper support.</font color>
<br/><br/>
It turns out the American CIA has some listening posts in town. They heard about the attack before us and have already bugged out. Apparently, they bugged out too fast and left a bunch of sensitive information behind. So the CIA has politely requested that we clean up their mess before the Takistanis find it. Their exact words were, quote: 'Oy mate, if you could give us a hand before things get fully cooked, that'd be grouse.' Very polite.
<br/><br/>
There are three listening posts: Northwest, northeast, and south of our fort. <font color='#ffb5b5'>The yanks want us to grab some valuable intel they forgot to back up, and blow up everything else.</font color>
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
It sounds like the Takistanis are sending everything they have at us. Expect a whole lot of motorized and mechanized infantry, some T-55s, and potentially some air presence.
<br/><br/>
They'll be approaching from the east and the west, but the city gives them plenty of room to maneuver around our north and south as well.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
High command should be scrambling support for us. We just need to be alive when it gets here. We're on our own until then.
"]];

/* ================================================================================
	MISSION
	 - Describe any objectives that the team is expected to complete.
	 - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission = ["diary", ["Mission", "
<br/>
• Withstand the Takistani assault
<br/>
• Retrieve the intel in all three listening posts
<br/>
    • We're looking for paper documents
<br/>
• Destroy all three listening posts
<br/>
    • Each post is stocked with explosives
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution", "
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Our fort is more than able to withstand this attack. Hold it as our fallback and staging point while we make our excursions out to the listening posts.
<br/><br/>
The Takistanis don't know about the listening posts and they're focused on our fort. As long as we're still fighting, there's no rush to deal with the listening posts. Slow and steady, one at a time.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
High command will surprise us with something. Hopefully.
<br/><br/>
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration", "
When you're ready, start the mission by interacting with the flagpole next to the HQ building.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
