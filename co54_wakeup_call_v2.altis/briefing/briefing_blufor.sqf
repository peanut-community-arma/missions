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
<font color='#ffb5b5'>Russian forces have captured the southern peninsula of Altis</font color> and have established a stronghold from which to launch their full invasion. The AAF has brought them to a stalemate at the isthmus connecting the mainland. However, Russian artillery has been hammering the mainland with impunity.
<br/><br/>
We were running amphibious exercises with our American friends nearby, so we're the first NATO forces on the scene. <font color='#ffb5b5'>We've been tasked with eliminating the Russian artillery.</font color> Recon has narrowed the location of the artillery batteries to the interior of the peninsula, south of the Russians' <marker name='marker_fob'>primary FOB</marker>. <font color='#ffb5b5'>Recon estimates multiple artillery batteries with multiple guns each, approximately 10 guns total.</font color>
<br/><br/>
<font color='#ffb5b5'>We're deploying from a NATO assault ship for an amphibious landing</font color> on the south of the peninsula. We're assaulting at dawn to mask our approach under the fog. AAF forces will launch a diversionary attack on the <marker name='marker_stronghold'>northern stronghold</marker>, simultaneous with our deployment.
<br/><br/>
Both AAF and Russian AAA are keeping the skies clear. <font color='#ffb5b5'>We aren't expecting friendly or enemy air assets.</font color>
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Russia has amassed a significant ground force on this peninsula, including tanks, light armor, and mobile AA. They are expecting and ready for counterattacks. Expect to encounter lookouts and patrols.
<br/><br/>
The AAF's diversion should draw the most significant assets away from our AO, but they will eventually realize the scheme and reorient their forces. We need to be gone when that happens.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We won't be receiving any direct support from friendly forces.
<br/><br/>

<font size='18'>ENVIRONMENT</font>
<br/>
We'll be setting off under dense and low fog, but it will burn off shortly. Aside from that, we should see a beautiful sunrise.
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
• Locate and destroy all of the artillery batteries in the AO.<br/>
• Withdraw to the boats and escape before the enemy rallies their forces against you.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Make landfall, locate and destroy all of the artillery batteries, and get out fast. Avoid engagement with the <marker name='marker_fob'>enemy FOB</marker> at all costs.
<br/><br/>
The heaviest enemy assets should be distracted when we arrive. Once things go loud, it's only a matter of time until the tanks start rolling in. Execute the mission with haste to avoid contact with the brunt of the enemy force.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We are to insert at the south end of the peninsula by boat and proceed inland on foot. We'll be extracting by the same boats, so don't beach them.
<br/>
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
