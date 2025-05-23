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
Whether we wanted it or not, we've stepped into a war with Inc® Corp. mercs on Rosche. So let's get to taking out their command, one by one. Gaius Maluk. From what I can gather he commands Inc® Corp. IncSec™ from an Inc® Corp. IncSec™ SecPost™ inside of Ratzlingen. He's well protected, but with the right team, we can punch through those defences, take this beast out, and break their grip on Hanstedt.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
There is an Inc® Corp. IncSec™ SecBattalion® in and around Ratzlingen. Their infantry are known to carry APILAS launchers. The also have access to MRAPs and helicopters that may be armed. The roads leading into the town all have checkpoints. Our HVT is based in an Inc® Corp. IncSec™ SecPost™ which has HMG and SAM emplacements.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
None.
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
Kill the target somewhere in <marker name='marker_town'>Ratzlingen</marker> then recover his Inc® Corp. IncSec™ SecLaptop™ and bring it back to the <marker name='marker_camp'>camp</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The HVT we're after is pictured below. Use the vehicles to advance to Ratzlingen. There are checkpoints on all the roads leading into Ratzlingen, but you might be able to use the HMG on the MRAP to destroy enemy heavy weapons. Once in the town the HVT will most likely be located in green military cargo tower. Clear it out, kill the target, then locate the laptop and bring it back to the <marker name='marker_camp'>camp</marker>.
<br/><br/>
Here is what Gaius Maluk looked like right after a ritual known as a 'war crimmas'. Note his distinct glasses and rifle.
<br/><br/>
<img image='briefing\hvt.jpg'/>
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Most of the town is surrounded by farmland with lines of shrubs for cover, however there is forest on the east side of the town. Once inside the town the buildings can be used as cover for your advacne to the HVT location.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
None.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
None.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The MRAP has an HMG and seats 4. Each of the 3 trucks seat 17. 
<br/><br/>
Be sure to load the vehicles with any extra ammo and supplies you may want.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;