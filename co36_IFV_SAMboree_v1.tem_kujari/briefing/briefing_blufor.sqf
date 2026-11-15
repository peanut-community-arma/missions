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
CSAT set up a <marker name='marker_Kaoya'>smelly air defense onion</marker> that is causing our pilots to cry. Command has sent our mechanized infantry platoon in to destroy the air defenses so that our pilots can be happy and bomb things again.
<br/>
Expect civilians in the AO as command was unable to deliver leaflets telling them to go away and/or hide.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The CSAT in this area use 5.8mm rifles and mostly use LAT and wear tactical gear similiar to ours. Enemy SF 'bugmen' are in the AO, armed with MAT, with probable locations noted below.
<br/>
CSAT in <marker name='marker_BiriBoula'>Biri Boula</marker> have set up emplaced weapons including HMGs and GMGs. They also have LSV and MRAP support.
<br/>
CSAT has established a FARP in <marker name='marker_Bora'>Bora</marker>, so expect armed transport helos attack us from here. LSV and MRAPs are bolstered with autocannon BTR and GMG IFV support. The outer layer air defense starts here with two ZSU-35 SPAAGs.
<br/>
<marker name='marker_Kaoya'>Kaoya</marker> has more BTR support, and at least one platoon of SF 'bugmen' split between here and <marker name='marker_Souri'>Kawiya Boukar Souri</marker>. The main air defense is located here and consists of ZU-23 turrets, ZSU-35 SPAAGs, and a Radar with SAM launchers.
<br/>
By the time we reach the location of the main air defenses, the enemy are likely to send reinforcements from the east consisting of heavy IFVs and additional armed transport helos, both filled with angry bugmen.
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
Move in and clear <marker name='marker_BiriBoula'>Biri Boula</marker> of enemies. Then do the same for <marker name='marker_Bora'>Bora</marker>, keeping in mind the presense of enemy SPAAGs. Lastly, move to <marker name='marker_Kaoya'>Kaoya</marker> and <marker name='marker_Souri'>Kawiya Boukar Souri</marker> and destroy any remaining enemies including the heavy air defenses.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Use the IFVs and do sick combined arms tactics in battle. The enemy FARP in <marker name='marker_Bora'>Bora</marker> will have logitics vehicles you can use to logistify your IFVs. Be careful advancing on <marker name='marker_Kaoya'>Kaoya</marker> as the enemy will likely set up the SPAAGs to look over your advance and shoot you alot with their autocannons.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the IFVs to drive around the AO and deploy the infantry, and also shoot things with autocannons and ATGMs. 
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Your Pandur II IFVs have 30mm autocannons and Mini-Spike ATGMs.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
None, unless you count avoiding civilian casualies a special task instead of a normal task.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The Strider seats 4 and has a fancy periscope with thermal imaging.
<br/>
The Pandur II IFVs each seat 3 crew and 8 passengers. They are armed with a 30mm autocannon, 7.62 NATO coaxial MG, and Mini-Spike ATGMs. They have been filled with extra ammo for their weapons.
<br/>
The vehicles are loaded with extra ammo and medical supplies for the infantry, but you are encouraged to add more as each squad needs.
<br/>
Demolition charges are available if for some reason you want to use those instead of just destroying the SAM site with autocannons.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;