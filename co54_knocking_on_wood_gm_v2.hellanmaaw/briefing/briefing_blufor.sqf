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
Time: 1700, Weather: Light Fog
<br/><br/>
Our front line near Taipale has temporarily collapsed and friendly units were forced to rout from a surprise offensive launched by a company of Russian forces. In order to plug the gap, the unit you are part of are called in to stop the flood of enemy forces advancing southwest immediately. It is crucial for us to retake the initiative and push back them back to where they have come before the situation gets out of control.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
We are dealing with approximately a company sized motorized rifle element of the Russian Army. Our enemies force composition are dominated by a mixture of dismounted infantry, BTRs, and BMPs. But do expect support from a couple T-series MBT attached to the company as well.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of Finnish Army supported by Leopard MBTs.
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
Intercept Russian advances along this <marker name = 'm_obj1'>MSR</marker>.
<br/><br/>
Lead a counterattack, advance and secure these area <marker name = 'm_obj2'>here</marker> and <marker name = 'm_obj3'>here</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
You should proceed with due haste to intercept the Russian advancement along this <marker name = 'm_obj1'>MSR</marker>, be on the look out for hostile forward recon elements that have broken through the front line in the forests preceding the roads leading into that MSR, primarily around Kangas. Once the initial waves of enemies are stalled and defeated, take the initiative and launch a counterattack immediately to retake lost ground.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You have Humvees available for transportation.
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
<font size='18'>RESUPPLY</font>
<br/>
No resupply options are available.
<br/><br/>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;