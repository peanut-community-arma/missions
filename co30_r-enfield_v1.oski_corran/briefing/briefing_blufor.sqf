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
Informants have confirmed that North Ballachulish has fallen under the control of a group of vampires. The population of the village has been turned into Renfields; human thralls that have been mentally torn down and rebuilt as attack creatures. 
Our job here is to prevent the vampires from spreading their influence by destroying them in their lair as soon as possible, day or night, rain or shine. <br/>
We have some advantages: that we were able to identify the vampiric prsence by informants rather than forensic analysis means that this group is either young, overconfident or both. We'll be attacking during daylight meaning that the vampires will be forced to stay in their lair and can't escape overland.<br/>
However we do have some complications: the local police aren't in the know and will view our attack as a terrorist attack in relation to the ongoing Troubles. The response in the region is slow at least - we're making our move during the change in shifts. <br/>
Find and destroy the vampires in their lair, don't get caught by the police. Easy as.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Renfield thralls at various levels of deterioration along with 3 of their vampire masters, typically armed with CZ handguns, double-barrelled shotguns and KAR98-equivalent rifles. <br/>
Police forces are to be considered dangerous but not necesarily hostile. Police forces will shoot at Renfields and hunters alike. Police units are primarily armed with SPAS-12 shotguns, 9mm pistols with ballistic shields and Ruger Mini-14s.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Vampire hunting paramilitary forces armed with the following: <br/>
 - Lee-Enfield Mk.4 and Mk.5 varieties, Home Army vintage surplus. <br/>
 - STEN-pattern submachine guns, illegally produced. <br/>
 - Enfield FAL rifles, stolen from government armories.<br/>
 - Pump-action shotguns with a mix of #00 buck and slug rounds, license pending.<br/>
 - Handguns, various makes. Individual purchase. <br/>
 - 1 BREN machine gun, reactivated museum piece.
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
Locate the vampires' lair in North Ballachulish and remove the vampires within. <br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Locate the vampires' lair in North Ballachulish and destroy the vampires within. Then retreat to the vehicles for extraction. Do not get caught by the police.<br/>
Mnimize collateral damage. There are no civilians at least - everyone who could leave has left and the remaining unfotunates have all been turned into Refields.<br/>
We don't have any information on forces in the forest, but there are rumors of hostile, wild humanoids have started showing up.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Insert into North Ballachulish on foot, complete the mission and return to the starting point for extraction.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
No fire support is available.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Avoid getting killed by the Police. Police should arrive within 30 minutes once the shooting starts.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Refields are the enthralled servants of a vampire. As far as Control can tell this is done by destroying the victim's personality and capacity to interact with society.<br/>
Early-stage Renfields retain most capabilities and  weaknesses of mortal humans and can wield firearms, primarily handguns and hunting equipment that is common in the region.  <br/>
Late-stage Renfields lose the ability to use firearms but have increased strength, speed and pain resistance and will try to rush you. <br/>
Surviors of vampire encounters report being disoriented in the presence of vampires. <br/>
Vampires and late-stage Renfields are vulnerable to the hawthorne wood that tips your shotgun slugs and take 20x damage from them. <br/>
Local police are not read in on the vampire threat. Admittedly it doesn't help we're acting in a vigilanted capacity.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;