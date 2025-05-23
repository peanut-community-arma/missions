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
The NATO lap dogs in Latvia have grown insolent. Their army is undisciplined, their equipment rusty, and their doctrine dated. 
They spread their propoganda, provoke our leaders, and insult our people. No longer! 
It's time for Belarus to rid itself of the shame of being a landlocked state. Our army is prepared to take everything, all the way to the shores of the Baltic Sea. <br/>
Our job will be to create an opening for our main forces to exploit come dawn. We've successfully infiltrated across the border undetected and we're striking in the early hours of the morning. 
The enemy should mostly be concentrated around our objectives, although we expect a few scattered patrols and perhaps a strongpoint or two at key locations. <br/>
The terrain is hilly and forested - we should be able to use this to our advantage. Cloud coverage is light and is expected to dissipate further.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
We're fighting the Latvian Armed Forces. Enemy in the AO consist of: <br/>
-2x Company Latvian Light Infantry Border Guard <br/>
-1x Platoon Latvian Mechanized Infantry QRF w/ Armored Support
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
-1x Platoon Belarusian Spetsnaz
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
Our task is to destroy the <marker name='marker_radar_obj'>radar tower</marker> and the <marker name='marker_comms_obj'>communication tower</marker> in the AO to send the enemy into disarray, 
then take the Latvian <marker name='marker_base_obj'>base</marker> to use as a staging point. Command 'strongly encourages' that we hold the base and defeat the QRF, but optionally we may 
escape south once the initial clear is complete.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We expect the enemy to send a QRF in no less than 25 minutes once we begin assaulting the Latvian's infastructure. 
As such, command STRONGLY recommends that we split our forces and destroy the first two objectives simultaneously before converging on the enemy base. 
Otherwise, they may reinforce the position before we arrive.<br/>
The enemy QRF is stationed at another military base outside of Nadbor to the north. 
As such, expect most of the QRF to attack from the northern ark, though enemy could come from the east as well.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Move on foot. The terrain and visibility are to our advantage - be sure to move quickly, especially once we've assaulted the first two objectives.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
N/A
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Leadership positions have access to demolition charges. Use these to blow up the objectives - placing them at the base of the towers should be sufficient. 
Any extras can be used to breach the base walls in a pinch, though there are existing gaps in the walls and fences due to poor maintenance.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;