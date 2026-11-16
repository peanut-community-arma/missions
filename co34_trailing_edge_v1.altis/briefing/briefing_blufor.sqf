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
The AAF has captured a pair of NATO and Altian VIPs and have been keeping them on the move and hidden during negotiations. The VIPs have just been spotted in Syrta and we are go for a smash and grab before they move again.
<br/>
We have satellite imagery from less than an hour ago showing the hostages being taken into <marker name='obj'>this house in Syrta</marker>. <font color='#ffb5b5'>That location is exact</font color>, and there are no indications that the hostages have been moved since then.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The AAF has been moving the hostages discreetly, so <font color='#ffb5b5'>there are only infantry and light assets on location. But heavy assets are nearby and certainly ready to be scrambled</font color>. The QRF will include anything up to Warriors. Be gone before they escalate to tanks and helicopters.
<br/>
Major reinforcements will come from Agios Dionysios to the south, but expect some from Galati and Kore to the east and west.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
SEAD has just destroyed all major AA installations in the AO, and SEALs are currently neutralizing remaining AA threats on the coastline under your flight path.
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
• Assault Syrta and extract the two hostages in the <marker name='obj'>marked house</marker>.
<br/>
    • <font color='#ffb5b5'>The hostages are to be extracted dead or alive.</font color> If the hostages are killed, we're still bringing their bodies home.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
These hostages are the AAF's biggest bargaining chip. They're going to fight like hell to keep them. The goal is to grab the hostages and be gone before the AAF can bring that hell to bear on you.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
The AAF already knows the jig is up. There's no time for safe landings and long walks. Phantoms will need to drop you as close as possible and remain on station to pull you back out as soon as you have the hostages in hand.
<br/>
We've cleared as much AA as we can on short notice. The helos need to stay low to reduce exposure to anything remaining. <font color='#ffb5b5'>A flight ceiling of 75m AGL is recommended.</font color> The helos will likely need to loiter low in the valley north of Syrta while boots are on the ground.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
ACE makes loading corpses into vehicles weird.
<br/>
<font color='#ffb5b5'>To load a dead hostage into a helicopter, place the corpse right against the door, and use the hold action.</font color>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
