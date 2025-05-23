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
We are currently engaged in carrying out United Nations Security Council Resolution 7043, which has tasked us to work on containing the violence within Takistan following the outbreak of its civil war. Operation Golden Resolve has so far been engaging in country operations for the past three weeks in containing the violence and bringing an end to the civil war.
<br/>
<br/>
Our mission for today has currently been tasked with moving into Zargabad to contain local violence and recent reports of organized militia action that are poised to try and retake the city and prevent follow-on UN aid from arriving in-country.
<br/>
<br/>
It is currently just before dawn, and weather is set to be forecasted to move towards some rain later today.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
We expect numerous Takistani militia forces both within the city and on the outskirts for the purposes of dealing with the caches. IEDs are expected in the area. There are rumors of hidden away Takistani T-55s and BTR-60s present, so keep your eyes out.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Friendly forces are composed of a slightly up-armed platoon, with attached HMMVWs and trucks for both road transportation and gunnery support. Two M2 Bradleys are attached for the purposes of fire support and to deal with the rumors of enemy armor in the area. An EOD team is attached to deal with both IEDs in the area and for detonation of the caches.
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
Mission objectives are to destroy a cache within each of the three cache zones, marked <marker name = 'Cachelocal1'>here</marker>, <marker name = 'Cachelocal2'>here</marker>, and <marker name = 'Cachelocal3'>here</marker>. EOD teams will identify and destroy them.
<br/>
<br/>
Friendly elements are not to shoot first. We can only fire if fired upon.
<br/>
<br/>
IEDs are present within the area, so keep your eyes out.


"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Commander's intent is to destroy each of the caches within the area and to secure Zargabad.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Movement plan is to move up the main road towards Zargabad.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Fire support is available in the form of a pair of attached M2 Bradleys.
<br/><br/>

<font size='18'>NOTES</font>
<br/>
The EOD teams have been equipped with a special new tracking device that can find the caches.
<br/><br/>
CLSs have their own dedicated medical radio net (for the purposes of testing).
<br/><br/>
<font size='18'>IED Defusal</font>
<br/><br/>
So you want to defuse an IED.
<br/><br/>
To begin with, once you spot an IED, you should approach slowly towards it. As your detector begins beeping in your ear, you should proceed to crawl towards it.
<br/><br/>
DO NOT SPRINT TOWARDS IT OR MOVE FAST. It will blow up.
<br/><br/>
As you arrive towards the IED, you can then proceed towards manually defusing it and 'safing' the IED. As an alternative, you can proceed to place a remote explosive upon it, and then back away slowly before detonating it.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
IEDs can destroy HMMVWs in one hit without time for crew to bail out. Trucks can take a hit allowing time for crew to bailout before it blows up. Bradleys will get detracked by an IED. Because of the way it is configured, EOD techs, please keep your mine detectors on hand.
<br/>
<br/>
The way this mission is configured, the spectrum tracker, will still 'show' the old items because of the way the script is configured, so do not worry about that.
<br/>
<br/>
With thanks to phronk from the Bohemia forums to devising the IED script and DayZMedic from YT for devising the spectrum tracker script, with then thanks to Splatty for further revising of the script.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;