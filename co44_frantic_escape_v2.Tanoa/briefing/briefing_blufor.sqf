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
Command read the date wrong and the rebels took over the country a month before we were expecting them. We were ordered to bug out, but our bus crashed when the driver tried to avoid a goat on the road. Luckily we crashed right into a rebel weapons cache. We are taking their weapons and continuing to the <marker name='marker_airport'>airport</marker>. The rebels have likely taken over the defenses at the airport including AA emplacements. They should be destroyed before we leave. Since the rebels took control of the SAM sites on the island, we have to fly south and stay low to avoid getting shot down.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Rebel forces usually wear tiger stripe camo and are armed with a huge variety of small arms. They also have a few lightly armoured and armed vehicles.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
It's just us.
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
Head to the <marker name='marker_airport'>airport</marker>, destroy the AA, then take a plane and fly south out of the AO.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Fight your way to the <marker name='marker_airport'>airport</marker>, blow up any AA you see, then find a plane and leave to the south.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You might be able to avoid rebel patrols by moving through the jungle, but you might also run into rebel patrols in the jungle. If you find vehicles you can steal them then use the roads to get to the airport faster, but rebels will likely engage you with heavier weapons.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
None.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
None.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Once you spawn in be sure to use personal arsenal to give yourself ammo for your weapons. 
<br/><br/>
If you don't like your gun you can see if anyone else sharing your role is willing to trade. If you get a weapon from a DLC you don't own, you are allowed to ask an admin for a loadout refresh.
<br/><br/>
Everyone gets a random disposable launcher as well. 
<br/><br/>
You are allowed to steal enemy guns.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;