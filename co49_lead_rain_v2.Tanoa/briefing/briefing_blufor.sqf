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
September, 2036
<br/>
The state of anarchy that has gripped the islands of Tanoa has led to a local paramilitary gaining significant finacial and equipment power from local stockpiles and foreign sponsors.
<br/>
The island's location neighbouring Australia has pushed CTRG to deploy a sizable element to assist in the dismantling of this new force.
<br/>
We believe an officer that handles banking and maintains contact with CSAT sponsors has made himself at home in the town of <marker name='marker_obj'>Lobaka.</marker>
<br/>
Located in the top floor of the two story will be this individual's personal laptop, infront of it will be a data terminal, CTRG are to establish an uplink to our network to access all information needed to cripple this Tanoan paramilitary before they can flex this new found power.
<br/>
This download will take time, we believe 15 minutes, so the town of <marker name='marker_obj'>Lobaka</marker> must be defended.
<br/>
Once the download is complete, CTRG will extract using <marker name='marker_boat'>rhibs</marker> hidden on the shoreline.
<br/>
Due to the high-risk of this mission, we have been given access to the AV-44X Blackfish, operating out of one of the remaining <marker name='marker_base'>Australian airbases</marker> in the region.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Tanoan paramilitary's sport a mix of civilian and bespoke camouflage, armed with AKM's and other Soviet surplus firearms.
<br/>
Besides the technicals, they've also inherited the BTR force of Tanoa's old government and a limited number of heavier tracked vehicles, included a small number of T-55's.
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
- Assault the town of <marker name='marker_obj'>Lobaka.</marker>
<br/>
- Defend intel uplink download for 15 minutes.
<br/>
- Extract via <marker name='marker_boat'>boats.</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Use the Blackfish to deal with high-risk threats and extract safely.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
The operation will be carried out on foot due to heavy paramilitary presence.
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
- Data Terminal can be interacted with the scroll wheel, the individual that starts the download must be within 200m and stay alive. OPFOR cannot be within 60m of the terminal.
<br/>
- Blue flag at spawn teleports pilots to Blackfish airbase.
<br/>
- Rhib holds 5 total.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;