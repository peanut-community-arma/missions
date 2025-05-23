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
August, 2013. Yesterday you were a group of pro-government militia, and today you're officially part of the New Takistani Army (shout-out to PltCo's cousin's friend). However, it is quickly becoming clear that this 'promotion' is because the government control over the area is tenuous and concentrated only in major urban centers. Moreover, the government equipment that was supposed to reach us has been constantly delayed, leaving us with only what we can find from surplus WW2 supplies and equipment we already have.<br/><br/>

During this time, the NATO coalition has been supplying our controlled areas. One such convoy was set to depart from Loy Manara airfield, heading through the Sar-e-Sang pass on its way to our forward base in Feruz Abad. Last we heard, they had just crossed the pass, but it has been hours and we never recieved confirmation that they reached the checkpoint north of Sakhe. We are to investigate what happened to the convoy, and to prevent such mysterious silences from happening again.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Diehard remnants of the old Takistani Army and their supporters, largely consisting of Aziz's loyalists and allied militia groups, are active throughout the region. They have access to old military gear (mostly Soviet era motorized vehicles) as well as an assortment of technicals.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of New Takistani Army soldiers. We have access to the following vehicles, which contain our ammunition and medical supplies:<br/>
- 3x Datsun 620 Pickup/PKM, seats 5<br/>
- 3x Praga V3S, seats 14. These are also repair vehicles.<br/>
- 1x BRDM-2 (HQ), seats 4. This is PltCo's car and contains supplies for MMG/MAT teams.
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
Locate the lost NATO convoy, suspected to be somewhere around Sakhe. Defer to PltCo's orders as the situation develops.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
I've heard from my friend who works at HQ that they got the shipping invoice before the convoy got there, so unfortunately we aren't allowed to crack open any of those sweet NATO supplies for ourselves. As you can tell, our new bosses are kind of cheap, and to be frank the enemy might have nicer gear than we do, so feel free to grab small arms to stock up. Let your leaders know, obviously, but we didn't get this far by not taking advantage of a good deal when we see it.<br/><br/>

Also, seriously, don't lose the cars.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Proceed at platoon commander's discretion. 
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
We want to establish our dominance in the region, so do your utmost to destroy enemies where you see them.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Repair vehicles will allow anyone near them to repair damaged vehicles, so long as they have a toolkit in their inventory. The Praga V3S trucks are set as repair vehicles.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;