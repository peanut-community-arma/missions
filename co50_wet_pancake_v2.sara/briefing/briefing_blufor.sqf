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
Recently, CSAT had made landfall on the northern coast of Sahrani and has aggressively pushed southbound, with them yesterday having captured the city of <marker name='paraiso'>Paraiso</marker>. However, intel from our scouts indicates that they have overextended themselves in order to reach the city, and with a storm coming with high enough winds to ground aircraft, NATO command has dictated that this is the perfect opportunity for a gambit to cripple their air capabilities in order to mount a counter-offensive.
<br/><br/>
With the storm incoming, an under-strength NATO strike team sets up in the early morning to attempt a daring assault to neautrilize CSAT's forward radar capabilities.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
CSAT Griffin Regiment
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
NATO Backed Latvian Strike Force
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
Find and Destroy two CSAT R-750 Cronus Radar emplacements.
<br/>
Eliminate the local CSAT Officer and steal their hat.
<br/>
Extract to the town of <marker name='somato'>Somato</marker>.
<br/><br/>
Priority of the Platoon's safety overrides the mission. At Leaderships discretion, abort and extract the AO if catostrophic losses are sustained. Mission WILL be considered a failure if the entire platoon is killed, regardless of objective status.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Our primary goal is to establish a foot-hold in <marker name='paraiso'>Paraiso</marker> so that we may locate and destroy the two Cronus Radar emplacements, along neutalizing the local CSAT officer to halt any further advance. Once this is done, we will need to retreat back to the town of <marker name='somato'>Somato</marker> per NATO high commands orders.
<br/><br/>
For the officer, intelligence indicates that their command post is <marker name='north'>somewhere in the northern portion</marker> of Paraiso itself. For the radars, CSAT troops have been moving them constantly so, unfortunately, we do not know their exact location. Our scouts had to evac before being able to give us exact postions as to their wherabouts. You will need to find them yourself.
<br/><br/>
The forces stationed in the town, and the surrounding smaller hamlets, are of a motorized element. So expect somewhat light armor with a mix of GMG and HMG equipped vehicles. Reports state the enemy, sans vehicles, are not night-vision equipped.
<br/><br/>
Platoon Command should aim to have the operation last no longer than one hour from step-off, as by that point, CSAT heavy armor reinforcements from the north will roughly be arriving at that time. If the objectives are not able to be completed prior to the time-limit being reached, command must prioritize the safety of the platoon and begin retreating to Somato.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Prior to our arrival to our staging grounds, an SF team secured a forward resupply point and as such, we have obtained a number of Otokars and Karatels for transport and fire support. These vehicles have already been pre-loaded with our remaining supplies for this operation, minus demolition charges which are reserved for leadership.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Platoon Command should either utilize the vehicles to punch into the town proper or as a fire support element to enable the Infantry to advance into the town itself. <font color='#A52A2A'>Be advised, our scouts have reported that TOW launcher emplacements have been deployed in Paraiso itself.</font> Vehicle crews should exercise extreme caution on approach to the main city.
<br/><br/>

<font size='18'>WEATHER PLAN AND SPECIAL NOTES</font>
<br/>
As mentioned previously, the weather once we step off will intesify with heavy winds and rain planning to last the entire duration of this operation. Smoke grenades will prove to be not effective for concealment, and night-vison will also be hampered by the heavy rain.
<br/>
Additionally, Infantry will find it harder to maintain situational awareness and <font color='#A52A2A'>their built-in radars to be not as strong as they normally would be.</font> Fireteam and Squad leadership should stress cohesion moreso than normal.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Each Squad will have one Otokar and one Karatel assigned to them, with spares and overflow in the form of flatbed trucks available if Pltco chooses to use them. 
<br/>
We are unable to perform repairs for these vehicles, so if a driver and gunner are de-crewed without being killed, it will be up to leaderships discretion to either fold them back into the main fireteam or send them back for another vehicle.
<br/><br/>
To stress it again, survival of the Platoon is of greater importance than completing the objective. If the platoon is wiped out in the process of having the objectives completed, the mission is considered a failure. 
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;