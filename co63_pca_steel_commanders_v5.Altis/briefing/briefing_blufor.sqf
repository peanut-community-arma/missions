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
We have just received intel on a meeting Colonel Manago of the AAF is having with a known Russian arms dealer Aleksei Produnov in the city of Sofia. Aleksei is known to almost exclusively deal with WMDs. It doesn’t take a geneus to figure out that this meeting is likely to involve WMDs changing hands, the real question is who is the buyer and who is the seller.
<br/>
Due to the short notice and the critical nature of the mission a more subtle approach is not practical. 

<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
AAF and Russian mercenaries 
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
1 US army infantry and tank platoon
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
The main objective is to disrupt the meeting and capture as much intel as possible. It is likely that there will be multiple places with good intel.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The tanks are intended to support the infantry to allow them to reach and clear the town and provide overwatch from reinforcement when the infantry is in the town.
<br/>
There is no need to stay in town if all intel has been captured.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
It is intended to for the MRAPs to be used for movement however using the Logi Stryker for movement is possible.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
the tanks 
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
M1240 (the smaller MRAP) carries 5, 1 driver, 1 gunner, 3 passengers <br/>
M1232 (the bigger MRAP) carries 11, 1 driver, 1 gunner, 9 passengers <br/><br/>

Logi Stryker can carry 9 in the back, however their main job will be supporting the Sierras <br/>
Logi Stryker has a cargo capacity of 10, a track takes 2 spaces, wheels and resupply boxes take 1 <br/>
The repair depot has ammo resupply for the Vics, is a medical and repair facility <br/>

"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;