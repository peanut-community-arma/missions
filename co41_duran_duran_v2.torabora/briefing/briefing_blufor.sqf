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
March, 1984
<br/>
<br/>
This area is under total Soviet control, Miller's been captive for ten days, not much time left.
<br/>
Infiltraion of the Soviet main ground forces, should be the perfect warm-up.
<br/>
Miller is being held in <marker name='marker_obj'>Wanat</marker> to the South, it has dense anti-air so you can't fly in directly.
<br/>
Only problem is, we don't know his exact location.
<br/>
Between us is <marker name='marker_qrfn'>Sanaag Bari.</marker> The villagers fled the war and evacuated a while back. 
Since then, it's become the base of the Soviet's 70th Army.
<br/>
To the east of that the Soviet's have established a <marker name='marker_fort'>FOB</marker> with a large tower to observe the desert.
<br/>
Then there's the two additional villages to the <marker name='marker_qrfe'>east</marker> and <marker name='marker_qrfs'>south</marker> of Wanat.
<br/>
He can't have much left in him.
<br/>
I'd give him three days, tops.
<br/>
If we fail-and he dies-we lose our chance at revenge.
<br/>
Afghanistan is a big place.
<br/>
I expect you'll become quite familiar with those binoculars as you plan your next move.
<br/>
How and where you make it...well that's up to you.
<br/>
Let the legend come back to life!
<br/>

<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Soviet forces scattered across the four towns and one fort.
<br/>
Wheeled vehicles such as BTR's are the favoured vehicles of Soviet forces.
<br/><br/>
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
- (Optional) <marker name='marker_qrfn'>Sanaag Bari</marker> holds intel on Miller's location.
<br/>
- (Optional) The Soviet <marker name='marker_fort'>FOB</marker> holds intel on ZU-23 locations.
<br/>
- Make it to <marker name='marker_obj'>Wanat.</marker>
<br/>
- Find Miller.
<br/>
- Successfully extract him back to base.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Avoid landing too close to <marker name='marker_obj'>Wanat</marker> and have infantry clear any AA threat to allow for helicopter extract.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use helicopters to travel long distance.
<br/><br/>
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
- MH-60L DAP can hold 16.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;