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
Our queen, of the Green Kingdom, wants to send her cousin some bananas for his birthday as they are his favourite fruit. Unfortunately he is only a vassal duke, and his king, of the Yellow Kingdom, wants the bananas for himself for some unknown reason. The king has deployed mechanized infantry to <marker name='marker_bastam'>Bastam</marker>, <marker name='marker_falar'>Falar</marker>, and <marker name='marker_feruz'>Feruz Abad</marker> in an effort to stop us and steal the bananas. In response, a gunship helicopter was dispatched to help protect the banana shipment. A sniper team was travelling in the gunship before it was diverted so they are now with us too.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The enemy use similiar weapons to us, as both kingdoms are under the same empire and use the same ammo. Their mechanized infantry battalion is reinforced by IFVs and tanks. They also have AA deployed in and around the AO, so our gunship should avoid flying high.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
The queen's cousin is waiting at <marker name='marker_jilavur'>Jilavur</marker> with his retinue, however they will not help us fight the Yellow Kingdom forces. They have different uniforms, from the Old Kingdom in the Before Times, when the cousin was an officer in the army.
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
Our mission is to secure the route to <marker name='marker_jilavur'>Jilavur</marker> by clearing <marker name='marker_bastam'>Bastam</marker>, <marker name='marker_falar'>Falar</marker>, and <marker name='marker_feruz'>Feruz Abad</marker> of enemy forces.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Secure the towns along the road to Jilavur. The helicopter should cover the convoy and easily destroy any heavy armour the enemy throws at us. It can also be used to deploy the sniper team in the high ground in the valley. 
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the transport vehicles to move along the road quickly, however they are not heavily armoured.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
One Mi-28 helicopter gunship, and a sniper team with an anti-material rifle.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Do not eat any of the bananas, they are not for you.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Regular infantry have access to LAT.
<br/><br/>
The big ellipse in the northwest of the AO is out of bounds.
<br/><br/>
The MRAP seats 5 total and is armed with an M2 HMG.
<br/><br/>
The trucks seat 17 total and are unarmed. They have supplies already loaded.
<br/><br/>
The banana transport only seats 2. It has special armour on it but it still needs to be protected.
<br/><br/>
The helicopter seats 5 total, the 2 crew and then 3 passengers. It is a heavily armed gunship with an autocannon, rockets, and ATGMs. Sniper team can also use it to deployed rapidly within the AO. The crew also get ejection seats.
<br/><br/>
There are logistics vehicles around the helipad at the start of the mission, the helicopter crew can use them to change the loadour of the gunship as well as rearm, refuel, and repair.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;