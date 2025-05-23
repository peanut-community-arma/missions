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
Roughly a month ago, IDAP efforts to restore parts of the south west coast of Altis were reported to have been halted due to the sudden surge of a criminal element, calling themselves 'Reunion', who then overtook IDAP's humanitarian camps. <br/> 
<br/> 
IDAPs attempts at brokering peace with the group have born no results and with local AAF force's growing concerns about the group pushing east, Rhodes Island LLC have been offered a contract to reclaim IDAPs property and to cripple the gang's operational capacity in the surrounding area.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Company Sized Organized Gang, 'Reunion'
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Rhodes Island Paramilitary Forces, A4 Platoon 
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
-For each town respectively
<br/><br/>
Zaros - Clear out the gang's presense, and retrieve loose intelligence files from the two IDAP camps within the city.
<br/>
Therisa - Locate and secure the gang's confirmed base of operations.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Our goal with this operation is to fully eliminate the gang presense in the AO, whilst also recapturing the IDAP camps they overthrew and clearing out their suspected hideouts nearby. 
<br/>
While we have been told that there are two IDAP field camps in the city of Zaros, we don't have an exact mark of their location. Once found, clear them of any gang members and secure the loose intelligence folders on site. Additionally, we have reports from local law enforcement to suggest that this gang also has some kind of IED facility within the city. If found, we are tasked with securing it for local EOD teams to sweep.
<br/>
Once Zaros is secured, we are to move east to the town of Therisa. This is the gang's alledged base of operations according to the reports from IDAP. This all being said, areial recon of the area shows little to no forms of emplacements, suggesting they have set-up within the city structures or through some other means. Be prepared for possible underground tunnel fighting.
<br/><br/>
<font size='18'>HOSTILE FORCES </font> 
<br/> 
Preliminary information of the group shows them to be poorly equiped. That being said, we believe that they have a possible vehicle response in the form of armored technicals.
<br/>
<br/><br/>
<font size='18'>MOVEMENT AND WEATHER PLAN</font> 
<br/> 
Movement is at the discretion of the platoon through the use of the many trucks we have, with one being HMG equipped. Be advised that the weather is forecasting a rapidly approaching storm, with low to no light conditions in less than an hour from now. Ensure Leaders bring an ample amount of flares and that squad members carry hand flares as backup.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size='18'>SPECIAL TASKING</font> 
<br/>
IDAP has stressed the need to limit collateral damage to Zaros and Therisa as we remove the gang from each of the towns. As such, they have stipulated in the contract that we are forbidden from using explosives of anysort, and this includes any explosives we find on site. Plan accordingly.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;