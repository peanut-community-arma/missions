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
20XX. While backpacking through Livonia we found a run-down castle. Conveniently, building supplies have been scattered throughout the nearby forest. It is, obviously, our life's calling to turn it into its final and greatest form: a SLIGHTLY SHITTY SUMMER HOME. We will become RICH AND FAMOUS, beyond our WILDEST DREAMS.
<br/><br/>
Our path is clear: we will travel on foot with our meagre supplies to Branzow Castle, appropriate more where necessary, and use it to create a world class glamping facility. Let not such trivial matters as 'zoning law', 'world heritage sites', 'trespassing', or even 'certain death' stay us from our glorious duty. The world DEMANDS it, and who are we to deny destiny? 

<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Livonian local law enforcement, other gangs, the LDF. Expect the unexpected.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
One (1) gang. Follow the unmarked dirt track to glory.
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
Clear out garbage from Branzow Castle, and build a glorious summer home inside the buildable area. You must achieve a 3-star facility at minimum. It is at PltCo/admin discretion if you want to go for 4 or even 5 stars.
<br/><br/>
3-star BAREBONES FACILITY:<br/>
- 1x Military Cargo House (camp HQ), $60 <br/>
- 1x Power Generator, $40<br/>
- 1x Water Tank, $40 <br/>
- 2x Toilet Box, $20 each<br/>
<br/>
4-star SHIT RENTAL:<br/>
- 1x Tent (Dome-shape) per FIRETEAM, $30 each (more is better)<br/>
- 1x Toilet Box per FIRETEAM, $20 each<br/>
- 4x Recreation Facilities total (any swing, slide, carousel or see-saw), $15 each<br/>
- 1x Winner's Podium. Because you're a winner. $40.<br/>
<br/>
5-star MY SUMMER HOME:<br/>
- 1x Sandstone Statue, to give it some gravitas. $80<br/>
- Enough tents so that you don't feel cramped<br/>
- A backup power generator<br/>
- IDK whatever else you can imagine, get funky with it
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
Find and cash in (hold action) cargo net boxes ($40 each) to get enough money to fund construction. Cargo net boxes are marked with pink-purple smoke and are scattered throughout the AO. There are always at least 5 boxes in the area, with one at the castle.
<br/>
<br/><br/>
<font size='18'>VERY SPECIAL TASKS</font>
<br/>Theme the gang. Name the new resort. Pose for a group photo when it's done.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Building 4 Dummies","
<br/>
<font size='18'>HOW TO BUILD THINGS</font>
<br/>
1. Have Fortify tools on you<br/>
2. Have the money for it<br/>
3. ACE Self-Interact to bring up the 'Fortify' menu, which will also list how much $ the entire team has<br/>
4. Select the category and item you want to build<br/>
5. Use the on-screen instructions to build the resort of PltCo's dreams.
<br/><br/>
<font size='18'>FORTIFICATIONS</font>
<br/>
We can also build fortifications using our supplies. The available defenses are:<br/>
- Sandbag tower bunker, $20<br/>
- Sandbag bunker, $10<br/>
- Long or short sandbag fence, $5<br/>
- Round sandbag fence, $3<br/>
- Planks, various lengths, $2<br/>
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
DO NOT DROP YOUR FORTIFY TOOL!
<br/><br/>
HUGE thanks to Tyen and Alien314 for the scripting help!
"]];

private _zeus = ["diary", ["For Zeus","
<br/>
Premade enemy groups for deep-copy (Shift + Ctrl + C/V) are <marker name='mk_zeus'>available here</marker>. Be careful with the LDF/NATO units since their armor is heavier than the cops or looters. Available TMF roles:<br/>
- Looter (rifle)<br/>
- Looter (SMG)<br/>
- Looter (shotgun)<br/>
- Cop<br/>
- LDF Rifleman<br/>
- LDF Autorifleman<br/>
- LDF Grenadier<br/>
Of course, feel free to use whatever you want!
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
player createDiaryrecord _zeus;