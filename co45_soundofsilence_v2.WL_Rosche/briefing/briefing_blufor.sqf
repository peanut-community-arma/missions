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
February 1969
<br/><br/>
The Soviets have begun their charge across Germany. NATO forces in the region are being pushed back to the Elbe Canal, where they're digging in for a firm defense.
<br/><br/>
Copious Soviet air defenses have been holding back our air forces. <font color='#ffb5b5'>We've identified a concentration of AAA around the town of Klein Malchau.</font color> This is putting an umbrella over the towns of Rosche and Ratzlingen, major staging areas for the Soviets.
<br/><br/>
<font color='#ffb5b5'>We've snuck through enemy lines to kill this AAA and open a pocket for our air forces to operate in.</font color> The AAA has been churning through ammo continuously, so there must be stockpiles close by. <font color='#ffb5b5'>Those ammo stockpiles would make for some nice fireworks if we get the opportunity.</font color>
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The AAA is accurate and mobile - probably Shilkas. There will be a light garrison guarding and supporting them. Expect some small patrols, as well as general troop movements through the area.
<br/><br/>
Just north of here is one of the main highways through the region and the two biggest towns. That is a primary staging area for Soviet forces. <font color='#ffb5b5'>Once things go hot, they could send anything and everything down to steamroll you.</font color>
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We're all alone out here.
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
• Destroy AAA positioned around Klein Malchau
<br/>
• Withdraw to the south or west and break contact
<br/><br/>
Secondary:
<br/>
• Destroy ammunition caches stored within Klein Malchau
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
This is a stealth mission. We're behind the enemy lines and we could trip over a company of sleeping ruskies at any turn. Be careful and avoid any unnecessary contact with the enemy.
<br/>
This is also a hit and run mission. Once the shooting starts, it's only a matter of time before we're hopelessly outnumbered and crushed.
<br/><br/>
<font color='#ffb5b5'>Sneak in. Destroy the targets. Run like hell.</font color>
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
*** Insert information on administration and logistics here. ***
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
