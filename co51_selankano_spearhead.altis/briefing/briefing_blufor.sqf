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
You have made landing at the beachhead at Southeastern Altis — you will act as the spearhead for our main forces by securing a temporary foothold and repel the Altian defenders. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The New Altian Army special division branch will be responsible for defending the Southeastern sector, their soldier are better trained and equiped than your average NAA soldiers. Intelligence suggest that around a company of infantry and a tank platoon are present in the AO.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of Russian Army soldiers.
"]];

private _mission = ["diary", ["Mission","
<br/>
<font size='18'>MISSION</font>
<br/>
-Advance and secure <marker name = 'm_obj1'>the airfield</marker>.
"]];

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Although your primary objective lies in securing the airfield itself, your first piroitiy lies in securing the village of Selankano from the Altians — advance slowly but steadily using our armor support to clear out any enemy resistance.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You are moving on foot. Exact movement plan at leadership's discretion.
<br/><br/>
"]];

player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;