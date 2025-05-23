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
Awful terrible no good very bad streamer scum have taken over the town of Nisul. They have a monopoly on all the fun party supplies and also, fun cars in the area. We are going to steal their shit and then come back and have a party and not die and have a good fun nice time :)
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
A fuckload of streamers, almost all on foot. There's a convoy incoming from the <marker name='mk_airbase'>air base</marker>, with ION PMC vehicles, largely MRAPs or cars with guns on top. It's headed towards the Nisul streamer mansion. If you're fast enough you could probably steal it.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of Cool Friends who unfortunately have to drive buses into town (each bus fits 13 people).
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
- Get to <marker name='mk_mansion'>the streamer mansion</marker><br/>
- Steal the party supplies (they're on the roof, remember to get both snacks and hats)<br/>
- Steal one car (or more) from the streamer mansion<br/>
- <marker name='mk_home'>COME BACK FOR PARTY</marker>: remember to change into your party hats<br/>
- DO NOT DIE DURING PARTY<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
You can either just make sure everyone has at least one snack and a party hat, or try to ACE load the entire party crate inside a car. Each one has a ACE Cargo Size of 4. Be wary of party poopers and gatecrashers.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
DRIVE (ditch the buses whenever, steal better cars for cargo)
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
BRRRRRT
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Hijack the convoy :smile: Have fun :smile:
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
You get one free LAT tube but no more (it's fine)
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;