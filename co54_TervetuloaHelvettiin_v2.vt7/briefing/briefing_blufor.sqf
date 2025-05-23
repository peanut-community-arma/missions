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
<font size='18'>SITUATION<br/>1989-05-05</font>
<br/>
The Politburo has decided to liberate Finland and bring it into the Soviet Union. We are amongst the first units to enter Finland, directly across the gulf from Talinn.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Finnish Army. They have a lot of Soviet-designed weaponry and vehicles, so keep track of your comrade's locations.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
An LSTful of Soviet Naval Mechanized Infantry.
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
• Secure the town of <marker name='obj'>Klamila</marker> to cut off Finnish Army movement along the highway.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The Finns are on alert and may have patrols or defenses south of the town; remember that your main goal is cutting the GLOC running through Klamila.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Remember that all your vehicles are amphibious — you will be able to ford across the inlet to <marker name='ford'>Kelkkaniemi</marker> (or further west), if you so choose.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Comrades with long-range radios can call in SU-25 strafing runs. It will take ten minutes for the plane to rearm between strikes.
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
• 2x BMP-2, each seats 3 crew + 17 passengers (7 internal, 10 riders).<br/>
• 2x BTR-80, each seats 3 crew + 18 passengers (8 internal, 10 riders).<br/>
All your vehicles are amphibious. BMP drivers should raise their snorkel before disembarking, or this may be a short mission.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;