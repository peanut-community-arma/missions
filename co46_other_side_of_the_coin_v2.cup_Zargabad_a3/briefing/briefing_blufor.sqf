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
March, 2009
<br/>
The war was lost but we fight on.
<br/>
Informants in the U.S. supported government forces have provided us with the route plan for a prominent minister that sold our country for a spot on the new government.
<br/>
This city has been labeled a green zone by the occupiers, they think it's safe so most of the security is handled by the government forces with minimal U.S. personnel present.
<br/>
We can move safely through the city, avoiding the <marker name='marker_air'>airfield</marker> until we start our attack.
<br/>
We will have 8 minutes to establish an ambush for the HVT taking the <marker name='marker_route'>route</marker> marked.
<br/>
The HVT will likely be in the centre SUV of the convoy wearing a suit with ballistic vest, they're still cautious of assassins.
<br/>
With that time we can access any of the four caches of equipment that have been setup ahead of time by our allies.
<br/>
There is a <marker name='marker_depot'>depot,</marker> where a local metal worker have been modifying two trucks to provide additional armour, only one of them is armed with a DShKM.
<br/>
There is a <marker name='marker_ied'>explosives cache,</marker> to provide heavy ordanance for the ambush.
<br/>
There is a <marker name='marker_mmg'>heavy weapons cache,</marker> to provide medium machine guns.
<br/>
And finally there is a <marker name='marker_rpg'>cache</marker> containing RPG's.
<br/>
There's a limited amount of supplies per cache, be best to split them between teams.
<br/>
Once the ambush is successful we will assault the <marker name='marker_air'>airfield</marker> and destroy any equipment present to embarrass the local forces defending it.
<br/>
There will be a QRF of U.S. helicopters that will respond to this attack, it is platoon's call to be there or not when they arrive.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Local government forces wear U.S. surplus choc-chip uniforms using AKM's.
<br/>
The HVT is protected by a private security force, expect plain clothes with MP5's.
<br/>
Limited US presence is MARPAT and M4s.
<br/><br/>
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
- Ambush <marker name='marker_route'>convoy.</marker>
<br/>
- Assault <marker name='marker_air'>airfield.</marker>
<br/>
- Escape to the countryside.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Collect equipment from cache's and find a suitable area to ambush the HVT.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use cars provided to reach caches and establish ambush.
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
- Countdown to ambush begins after crossing <marker name='marker_start'>blue line.</marker>
<br/>
- Government forces will spawn at bunker towers when the ambush begins.
<br/>
- Convoy will spot you from a distance and attack you on sight so stay hidden.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;