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
A Royal Army mixed armor company retreated from a tough engagement yesterday into a nearby valley. They have dug in and are repairing their armor. We cannot waste this opportunity to wipe it out completely so a platoon has been deployed with IFV support to destroy this company.
<br/><br/>

<font size='18'>TIME</font>
<br/>
Your attack will start around midday.
<br/><br/>

<font size='18'>TERRIAN AND WEATHER</font>
<br/>
The enemy has holed up in a large valley with a few villages. The weather is clear and will stay clear for this operation.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The Royal Army has dug in and has set up numerous defenses in the valley. They are in a rush to repair their armor but still have a number of M60A3s and ASVs that can fight. Thankfully they have sustained damage and should be easier to destroy. The infantry have easy access to AT as well. Expect up to 12 possible pieces of armor in the area.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A friendly IFV will be deployed to make the clearing process easier. Satchel charges can be found in your vehicles use them freely.
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
You must find and destroy all of the armor in the area. Recon reports 12 of them, a mix of M60A3s and ASVs in the AO based around the village of <marker name='town'>Turovo<marker> and <marker name='town2'>Dobroye<marker> . The <marker name='valley'>valley<marker> between the villages is heavily defended so armor can be found there as well.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Use the terrain to our advantage the enemy wants to defend the armor so they're unlikely to going chasing any contact unless its close by. The valley itself is a massive killzone so use proper recon to plan the best course of attack through it.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
N/A
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
Explose Satchels can be found in all transportation vehicles. The ammo truck can be moved as needed to resupply the IFV.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;