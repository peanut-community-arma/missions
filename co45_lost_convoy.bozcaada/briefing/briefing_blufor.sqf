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
Time: 1700   Weather: Clear 
<br/><br/>
The situation on Bozcaada is grim — Sarahni's offensive has proved successful and we have lost contact to our entire forces to the South. To make matter worse, a small convoy carrying a high ranking officer has been ambushed somewhere around within <marker name = 'm_ao'>this area</marker>. We are part of the task force assembled to rescue this officer no matter the cost, we will be setting off into heavily contested area in search for the survivors.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The area is overrun with troops of the Royal Army Corps of Sarahni, they are armed with an assortment of western weapons and light mobility vehicles.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of Verdanian Armed Forces soldiers. 
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
Find the convoy somewhere within <marker name = 'm_ao'>this area</marker>.
<br/><br/>
Rescue the VIP and EXFIL to a safe area.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Secure high grounds and search for any signs of the lost convoy, we have little information with regards to its whereabouts and it is without a doubt that the RACS will be swarming in the area. Expect the heaviest concentration of enemy forces around where the ambushed convoy is at; as such, speed is of the absolute essence here, do not get bogged down in heavy fighting but it might be necessary to push through heavy contact in order to get to our VIP — evacuate immediately once the VIP is secured.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You will have TIGR MRAPs at your disposal.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
N/A.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size='18'>LIMITED AMMO CAPACITY</font>
<br/>
The ammo you can bring from the arsenal will be limited, any excess will be removed.
<br/><br/>
The general summation are as follows: 24 Rifle Mags, 10 Machine Gun Belts, 4 Hand Grenades, 2 Smoke Grenades, there will be some differences in what your exact ammo cap is based on your role.
<br/><br/>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;