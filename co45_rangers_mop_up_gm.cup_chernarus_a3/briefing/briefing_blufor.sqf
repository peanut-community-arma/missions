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
Time: 1700    Weather: Clear, approaching Dusk
<br/><br/>
The conflict between NATO and the Soviet Union has flared to a new height with major offensive erupting across eastern Europe. In our region, the coalition has been pushing back the Soviets backs for weeks and has gained the upper hand. We have been hammering our enemies' strongholds with heavy bombardment, leaving their bases in ruins and routing their elite troops.
<br/><br/>
A US Ranger unit of mostly light infantry with jeeps are deployed to exploit this moment of weakness and mop up what remaining resistance that the Soviets may still offer. Our enemies morale may be low but they can still poses a threat, neutralize them with surgical precision and squash what remaining hope they may have for regaining the momentum. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The Soviet forces are seriously battered by our artilleries and are left with very little armored vehicles that are still combat effective. Expect the bulk of OPFOR to be consisted of standard light infantry with small arms supported by a few armored BTR APCs or BRDM scout cars. 
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of US Army Rangers.
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
Neutralize any threats in <marker name = 'm_obj1'>Kamensk</marker>.
<br/><br/>
Clear out the <marker name = 'm_obj2'>battered military base</marker> near Kamensk and seize its command center. 
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Our constant artillery bombardment has left the Soviets low on morale and struggling to recoup their losses, it is crucial that we make sure it continues that way and exploit this moment of weakness. We are armed with jeeps that will allow us to quickly navigate through the countryside — use it to surprise our enemies with speed and smashes whatever defenses they may put up. Expect the ruined military base to be defended by the bulk of the Soviets and be on the look out for whatever remnants of other OPFOR elements that may attempt to consolidate at the military base.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You are inserting via armed Humvee Jeeps.
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
N/A.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;