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
Well, this is it folks. The Soviets are making their charge across Germany. Our platoon managed to hold Testorf yesterday, but the line north and south of us collapsed and retreated in the meantime. <font color='#ffb5b5'>We've been bypassed and surrounded by the Soviet forces.</font color> We're cut off, and command has much bigger problems than bailing out a few dozen GIs.
<br/><br/>
The Soviets are ignoring us for the moment, but they're going to try to wipe us out soon. <font color='#ffb5b5'>We're not getting out of this, but we're gonna make them damn Ruskies pay for it.</font color> The more of a ruckus we make out here, the more pressure we take off of our boys to the west.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
<font color='#ffb5b5'>We're looking at a bona fide sampler platter of Soviet forces. Motorized, mechanized, armored, airborne. It's all in play.</font color>
<br/><br/>
The enemy will primarily be coming from the east, but we are well and truly encircled. Expect some forces from the north and south, and they might even double back from the west.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
It's just us. Every other unit within 50 miles is getting hammered, and air support won't be getting around to us any time soon.
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
• Survive as long as possible
<br/>
• Kill as many Russians as possible
<br/><br/>
Godspeed.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We have some time before the attack starts. Pick your fighting positions and fortify them. Our handful of vehicles may best be used as static emplacements and supply stores, given our limited manpower.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Everyone is able to use Fortify. The budget is $500 and most objects cost $5 or $10.
<br/>
When you're ready, start the mission by interacting with the flagpole. Fortify will still be available.
<br/>
The provided supply crates can be carried and placed whereever they would be most useful.
<br/>
You have 4 M151s with M2s and 1 M113 with a Mk19. Hint: Use them as bulldozers!
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
