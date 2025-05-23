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
Syndikat Rebels have been harassing locals, and setting up Jamming networks on Sosovu and Yasa Islands. Today we will deploy a counter insurgency operation to neutralize their bases on these islands.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Syndikat is a poorly armed rebel group. They use AKM's, RPD's and PKM's.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We are CSAT Marine Forces.
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
- Destroy the 4 Jammers located on the islands.<br/>
- Destroy the <marker name='obj1'>first jammer</marker><br/>
- Destroy the <marker name='obj2'>second jammer</marker><br/>
- Destroy the <marker name='obj3'>third jammer</marker><br/>
- Destroy the <marker name='obj4'>fourth jammer</marker><br/>
- Sweep the islands for weapons caches.<br/>
- Destroy as many syndikat caches as you can find.<br/>
- Escape the AO.<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
You will have to boat to the islands, find the objectives and destroy them, and then exfiltrate off the islands. Team leaders have been provided demolitions to help facilitate this.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
RHIB boats (8 Seats)
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
There are 8 Syndikat caches on the island. If we manage to destroy half of them, we get a gold star. If they are all destroyed, Command will take us to go get some ice cream.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Each leader has been given 2 explosive charges and a clacker. Each jammer should only need 1 explosive placed directly underneath it.<br/>
<br/>
The Jammers estimated range is about 200m.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;