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
The date is May 15th, 1995. It is a dark night.
<br/><br/>
Belka is reeling. The Allied counter-offensive has stunted their momentum and our frontline forces are slowly grinding away at the Belkan positions.
<br/><br/>
Our intelligence believes that Belka is scrambling to develop some sort of superweapon for a last-ditch attempt to claw back the war, with its development centered here in <marker name='rosche'>Rosche<marker>. That's where we come in. 
<br/><br/>
Our task today is to sabotage the development of this superweapon, and we've been inserted deep into enemy territory to do so. According to our informant, the Belkans have distributed their project across four different labs hidden within Rosche. More specifically, we need to steal the laptops that centralize the data for each lab. Without these laptops, their project will flounder. You can safely ignore the <marker name='stables'>stables<marker> and water treatment plant, as satellite imagery indicates no activity in those areas, but consider all other parts of the city as potential lab locations.
<br/><br/>
Grab the intel and get out before the responding Belkan forces can locate and crush us. Be warned - with each laptop we steal, the Belkan response will intensify!
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Rosche is blanketed with enemy infantry - expect heavy contact. Critically, they lack any sort of night vision capabilities, which we can use to our advantage. As such it may be useful to shoot out lights in town to keep them in the dark.
<br/><br/>
We expect motorized and mechanized Belkan QRFs from the surrounding towns as our presence is eventually discovered and communicated. Belkan armor consists mostly of BRDMs and BTR-70s.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We are an Osean Special Forces team, equipped with night vision, silenced weapons, and IR strobes to avoid FF incidents. We are on our own.
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
-Locate the 4 labs hidden in Rosche and seize the central laptop of each lab
<br/><br/>
-Escape into the night and return to our insert point
<br/><br/>
-Enemy presence in the area is overwhelming; the mission will still be considered a success even if we cannot locate and acquire all 4 laptops, as long as we make it back to our insert. Just keep in mind that the fewer laptops we seize, the less we will be able to slow down the development of the superweapon. Use your best judgement.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Find an appropriate approach to sneak up to the edge of town before engaging if possible - the darkness should give us excellent concealment. Belkan forces will slowly begin to respond from nearby towns as they realize our presence, so being efficient is in our interest.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You have a wide variety of options for the inital approach to the town since the enemy is unaware of our presence, and the darkness will keep us hidden extremely well.
<br/><br/>

<font size='18'>LOCATING THE LABS</font>
<br/>
Locating the labs may be tricky, as we're not exactly sure just what the superweapon is - look for strange lights and unusual amounts of fortification and/or military gear.
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
When players use the hold action attached to the intel laptops, the laptop will disappear upon its completion. This is intended and counts as 'seizing the laptop'. Don't forget to let your superior know that you picked it up!
<br/><br/>
Use ACE interact -> attach item at the start of the mission to attach an IR strobe to yourself to avoid friendly fire incidents.
<br/><br/>
Our pistols are silenced and equipped with IR lasers, which may come in handy.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;