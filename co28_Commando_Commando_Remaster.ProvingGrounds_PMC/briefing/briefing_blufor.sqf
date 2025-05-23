/* ===============================================
	GENERAL BRIEFING NOTES
	 - Uses HTML style syntax. All supported tags can be found here - https://community.bistudio.com/wiki/createDiaryRecord
	 - For images use <img image='FILE'></img> (for those familiar with HTML note it is image rather than src).
	 - Note that using the " character inside the briefing block is forbidden use ' instead of ".
*/

/* ===============================================
	SITUATION
	 - Outline of what is going on, where we are we and what has happened before the mission has started? This needs to contain any relevant background information.
	 - Draw attention to friendly and enemy forces in the area. The commander will make important decisions based off this information.
	 - Outline present weather conditions, players will typically assume that it is daylight with sunny weather.
*/

private _situation = ["diary", ["Situation","
<br/>
<font size='20'>SITUATION</font>
<br/>
Zukov PMC has been operating in the region for quite a while under the 'false' cover of peacekeeping operation. We have been keeping tabs on their activities but weren't able to gather intelligence of any significance until a major recent breakthrough. The PMCs has been using the area as the development and test bed of a highly secretive WMD — the rural, remote area provides the mercenaries with the perfect cover for their experiments. Word is, the test trial of the WMD proved successful and they are in the process of transporting it away to a secure location.
<br/><br/>
We must deal with this situation before it gets out of hand, a task force of Australian Commandos nearby has been assigned with intercepting the WMD at once. The commandos must succeed in either capturing or destroying the WMDs.
<br/><br/>
<font size='20'>ENEMY FORCES</font>
<br/>
Zukov PMC — one of the largest Chinese-Russian mercenary firm for hire in East Asia, their operatives are well-trained and equipped with some of the best available gears, with access even to military grade armored vehicles and tanks. Expect a sizable hostile presence in our AO.
<br/><br/>
<font size='20'>FRIENDLY FORCES</font>
<br/>
Up to an up-sized squad of Australian Army Commandos.
<br/>
"]];

/* ===============================================
	MISSION
	 - Describe any objectives that the team is expected to complete.
	 - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission = ["diary", ["Mission","
<br/>
<font size='20'>PRIMARY OBJECTIVES</font>
<br/>
-Secure or destroy Zukov's WMD Device located <marker name = 'm_obj1'>here</marker>.
<br/><br/>
(The Device is likely loaded into a truck ready for transportation).
<br/><br/>
<font size='20'>SPECIAL TASKS</font>
<br/>
-EXFIL to a safe location (with WMD intact if possible).
<br/><br/>
-Might be worth investigating the local area, who knows what we can find?
<br/><br/>
"]];

/* ===============================================
	EXECUTION
	 - If there are further details regarding the intended execution of the mission here is the place to put them.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='20'>COMMANDER'S INTENT</font>
<br/>
Advance through the highway and clear out any Zukov sentries and outposts. Expect the area to be heavily guarded and additional reinforcement coming in upon first contact. After securing the WMD Device, either bring it to a safe location or destroy it, we cannot allow the mercenaries to have it either way.
<br/><br/>
<font size='20'>MOVEMENT PLAN</font>
<br/>
You are moving on foot. Exact movement plan at field leadership's discretion.
<br/><br/>
<font size='20'>SUPPORTS</font>
<br/>
You are on your own.
<br/><br/>
"]];

/* ===============================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size ='20'>TERRAIN</font>
<br/>
Mostly barren land and destroyed trees — likely the result from the WMD experiments. 
<br/><br/>
<font size ='20'>WEATHER</font>
<br/>
The weather is cloudy and foggy with poor visibility.
<br/><br/>
<font size ='20'>RESUPPLY</font>
<br/>
There are no resupply options available.
<br/><br/>
"]];

private _limitedArsenal = ["diary", ["Limited Arsenal","
<br/>
<font size ='20'>Usage</font>
<br/>
You have access to the limited arsenal via ACE self-action in a 50 meters radius from your start positions.
<br/><br/>
<font size ='20'>PSA</font>
<br/>
If you changes your gear, make sure you double check for any missing item and that you brought the necessary equipments for the mission (you can refer to the equipment tab for your starting loadout).
<br/><br/>
Contact the admin/mission maker should you need to revert back to the original loadout.
<br/><br/>
"]];

player createDiaryRecord _limitedArsenal;
player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;