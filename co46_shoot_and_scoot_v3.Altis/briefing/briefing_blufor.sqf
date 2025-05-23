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
0600, ALTIS, 2035 OCT 12. Amidst the chaos of the NATO-AAF war, the AAF's rank incompetence and internal fighting has presented FIA with a golden opportunity. The AAF's most incompetent artillery platoon is stationed in Molos. As a result, local sympathizers have reported that their KamAZ MRLs are scattered through the woods between Molos and Sofia, for reasons including:<br/>
- Parked on Cpt's luxury vehicle spot, got towed into the woods<br/>
- Wheels 'spontaneously' fell off during routine convoy, got towed into the woods<br/>
- Night-time rally racing got spicy, got towed into the woods<br/>
With their captain skimming off the top, the quartermaster taking a cut, and every sergeant skimming a bit off the bottom, we expect these vehicles to be under-armed, under-fueled, and wholly under-guarded. They also have a bad habit of leaving out laptops with juicy bits of intel just lying around.
<br/><br/>
We'll be moving into the woods on foot to find and steal the vehicles. We'll hop in, fire a few barrages at high-value targets, and skedaddle before the counter-barrage lands. Then we'll melt away back into the countryside once our mission is complete.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The primary enemy force in the region is the 2nd Regiment, Fourth Company, primarily composed of mechanized infantry (riding FV510 Warriors and Pandurs) with an artillery attachment. We'll be 'borrowing' that artillery. Also expect the garrisons in each town to respond, as well as potential helicopters equipped for CAS (of course, if we can figure out where the helos come from and smack that with the artillery...)
<br/><br/>
We should expect counter-artillery fire from artillery companies stationed well outside of this AO, so make it quick.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of FIA guerillas. We are far behind enemy lines, no extra support is forthcoming.
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
- Pick up enemy intel laptops to reveal high-value target locations<br/>
- Locate the misplaced AAF KamAZ MRL systems and hijack them<br/>
- Use the KamAZ MRLs to fire upon as many marked targets of opportunity as possible (min. 3 for success)<br/>
- Do not get obliterated by counter-battery fire or any QRFs<br/>
- Leave at PltCo's command

"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
As soon as get in an MRL, we WILL trigger a 30-90 second countdown. At the end of this countdown, the AAF is GOING to rain down HE shells directly on the KamAZ. Do not be nearby when this happens.
<br/><br/>
The MRLs are also very inaccurate. You'll want to throw at least two or three rockets at a target - note that firing will throw off your aim so you may need to let the entire system settle before the second shot. Or just aim at the vague center and hope for a good hit.
<br/><br/>
We know the location of exactly <marker name='mk_mrl_visible'>ONE of the MRLs</marker> are. This one will not attract counter-fire because it's too close to the military radar, but it's also likely to be defended and we'll be very exposed if we go for it.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Move on foot through the AO.
<br/><br/>
(Mission maker note: please treat marked area like the regular AO, if you move mainly outside of it you may run into AAF spawning from thin air.)
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
You. You're the fire support.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
We don't have reliable information on the exact location of the MRLs, so keep an eye out for them. Look for towing vehicles, road cones or random cargo containers out in the woods.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size='18'>BEGINNER'S GUIDE TO USING ARTILLERY</font>
<br/>
n.b. It will help a LOT if you have both Map Tools and the Artillery Range Table with your, or with your assistant. <br/><br/>
First, determine the <font color='#5796ff'>distance</font> and <font color='#5796ff'>direction</font> (bearing) of the target. You can use ACE Map Tools to help with this. With your map open, ACE Self-Interact to bring up the map tools ('small' map tools is probably most useful). Hold down ALT and drag to rotate the compass to get the bearing from your location to the target, and use the ruler to determine distance between you and the target.
<br/><br/>
Next, you will need to use the <font color='#5796ff'>artillery table</font> to figure out the appropriate elevation and charge for the distance. When next to, or sat inside, the KamAZ MRL, ACE Interact with it > Equipment > Artillery Range Table to bring up the KamAZ MRL range table. Reference the target's distance against the range table, and note down the <font color='#5796ff'>elevation in MIL</font> and <font color='#5796ff'>charge</font>.
<br/><br/>
Finally you are ready to fire. Hop in the gunner seat, and rotate until you have the correct bearing. Then, use the fire select mode button (F or 1) to add charges, and use PgUp/PgDn to change the elevation (hold Shift for finer changes). Once you have lined up the correct bearing, charge and elevation, fire.
<br/><br/>
<font size='18'>ARTILLERY USE SUMMARY</font>
<br/>
- Figure out bearing and distance to the target<br/>
- Use artillery table to determine appropriate charge and elevation for target distance<br/>
- Adjust the gun's bearing, charge and elevation to correspond to the target<br/>
- Fire when ready<br/>
<br/>
(spectators have fun looking at the targets xoxo)
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;