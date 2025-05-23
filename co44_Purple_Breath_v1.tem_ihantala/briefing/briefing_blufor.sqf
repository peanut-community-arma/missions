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
We are in the midst of a large scale war with the Universal States of Britain. To keep our country, Argania, safe, we must travel to far away lands and fight them there instead. Here on the Incidental Front, our unit of the AACs (Arganian Army Corps) is tasked with weakening the Britican hold on the area.
<br/><br/>
In concrete terms, our platoon's task specifically is to seize the <marker name='farmhouse'>farmhouse<marker> and <marker name='crossroads'>crossroads<marker>, and then proceed to take and hold the <marker name='town'>town<marker>. As we are taking the town, we expect a Britican <marker name='qrf'>QRF<marker> to mobilize from our South and attempt to mount a counter-attack. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
A battalion of enemy Britican infantry, with motorized support for their QRF. Expect heavy contact once we engage the enemy.
<br/><br/>
Britican infantry are identifiable by their greenish brown uniforms and green helmets. They are equipped with Lee Enfield rifles and the occasional grease gun. Our intelligence reports suggest the presence of a handful of .50 cal machine gun nests as well.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We are a platoon of Arganian Army Corps soldiers. Civilians have been evacuated.
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
1. Seize the <marker name='farmhouse'>farmhouse<marker> and <marker name='crossroads'>crossroads.<marker>
<br/>
2. Proceed to take the <marker name='town'>town.<marker>
<br/>
3. Hold the town against the <marker name='qrf'>counter-attack.<marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Take control of the crossroads and farmhouse, then assault the town. Once taken, hold the town against the expected counter-attack.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Exact movement at PLTCO's discretion.
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
We have no available resupply at the moment - non-medic roles may want to grab extra ammunition during setup time.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;