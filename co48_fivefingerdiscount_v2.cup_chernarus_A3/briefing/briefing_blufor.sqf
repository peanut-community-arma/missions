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
A democratic uprising in Chernarus is gaining serious ground against the notoriously corrupt government. The paper-thin military, equipped with little more than rifles and trucks, has already submitted. The politicians have turned out their deep pockets to hire seemingly the entire ION PMC to bail them out.
<br/><br/>
ION has been steadily pushing out from the <marker name='marker_airfield'>airport</marker> in the northwest of the region. They're still flying personnel and equipment into the country, and have prioritized light assets for rapid deployment. However, what they call 'light' is still beyond what we can field. So we're going to steal it.
<br/><br/><font color='#ffb5b5'>
Our job is to hit ION's primary <marker name='marker_patrol_base'>patrol base</marker>, steal everything that isn't nailed down, and destroy everything else. Vehicles, weapons, supplies - anything is good.
</font color><br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/><font color='#ffb5b5'>
We're facing the ION vanguard forces. Expect the usual infantry types with motorized and light air support. They are actively airlifting forces into the nearby <marker name='marker_airfield'>airport</marker>, so this could change quickly.
</font color><br/><br/>
ION has set up numerous checkpoints, as well as foot and motorized patrols. Once things go loud, expect those to converge on the area.<br/><br/>
Our target is their <marker name='marker_patrol_base'>patrol base</marker> at Stary Sobor. They're storing most of their combat vehicles there for repair and rearm, ripe for the taking.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We won't have any direct support in this operation. <font color='#ffb5b5'>Rebels hold the territory to the southeast, specifically <marker name='marker_guglovo'>Guglovo</marker> or <marker name='marker_mogilevka'>Mogilevka</marker>.</font color> They'll be waiting for us there, and ION knows that.
"]];

/* ================================================================================
	MISSION
	 - Describe any objectives that the team is expected to complete.
	 - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission = ["diary", ["Mission","
<br/>
• Assault the ION <marker name='marker_patrol_base'>patrol base</marker> at Stary Sobor.<br/>
• Commandeer and extract as many operational vehicles as possible.<br/>
      • Steal as much of ION's stuff as you can.<br/>
      • Destroy any vehicles and equipment that can't be extracted.<br/>
• Withdraw to rebel-controlled territory near <marker name='marker_guglovo'>Guglovo</marker> or <marker name='marker_mogilevka'>Mogilevka</marker>.
<br/><br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The patrol base is surrounded by open farmland on most sides. Close the distance before ION reinforcements make it a killing field.
<br/><br/>
<font color='#ffb5b5'>It's up to you to balance maximizing the assets recovered versus extracting in a timely manner.</font color> These vehicles have seen combat with the rebels, so they'll be in various states of damage and repair. You get to decide what's worth salvaging.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Picking up enemy weapons is very much allowed and encouraged in this mission.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
