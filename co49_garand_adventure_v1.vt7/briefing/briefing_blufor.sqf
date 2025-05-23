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
ATTENTION soldiers! We have been SENT into the FUTURE to defeat the FUTURE RUSSIANS!
<br/><br/>
Our mission today is to assault Russian positions in the area. We have a couple ammo caches to secure and then we will take the town of Skippari itself!
<br/><br/>
Around our <marker name='cache2'>second objective</marker> we'll have to stop and defend a reinforcing enemy garrison from Klamila.
<br/><br/>
To aid in this mission, we've gotten access to some SPECIAL FUTURE UNITED STATES TECHNOLOGY like the 'ATFours' some of you are carrying. I'm even told we may have a 'little bird' on station, whatever that means. I'm told they're quite big actually.
<br/><br/>
AUTHOR'S NOTE: I can't really stop you from picking up enemy small arms but I will say it's against the spirit of the mission to not use the Garand/Johnson. RPGs are fair game to pick up.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The enemy consist of Cold War Russian infantry supported by BTRs and BRDMs. They are concentrated exclusively near our objectives.
<br/><br/>
QRF INTEL: Our future spies say that the reinforcing QRF from Klamila should consist of 100-150 infantry, a handful of BRDMs, and a BMP-1.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We are WWII-era US forces. We may have access to a helicopter.
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
-Secure the <marker name='cache1'>first ammo cache</marker> (no need to destroy them, just locate them and clear the area of Russians)
<br/>
-Secure the <marker name='cache2'>second ammo cache</marker>
<br/>
-Hold the area near the <marker name='cache2'>second ammo cache</marker> against the Klamila QRF
<br/>
-Seize the <marker name='skip'>town of Skippari</marker> 
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Take the objectives in counterclockwise order (i.e. cache 1, cache 2, Skippari) -- not doing this may result in unexpected behavior like enemies spawning in the middle of your formation.
<br/><br/>
Once you locate cache 2 you should set up to defend a heavy enemy counter-attack from the NE. It should be relatively short but intense in nature. Once you have decimated the QRF, turn your sights on Skippari.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
See 'Commander's Intent' above.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
If you've slotted FAC and a pilot, you'll have access to 1 attack Littlebird and 1 transport Littlebird. FAC has a GL they can use to mark enemy targets with colored smoke, and the transport helo can be used as an escape option in desperate scenarios. As of this time there is no in-mission repair/resupply available for these vehicles, besides the toolkits in the littlebirds, so make them count!
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
*** Insert instructions for specific units here. ***
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
If you've slotted FAC and a pilot, you'll have access to 1 attack Littlebird and 1 transport Littlebird. FAC has a GL they can use to mark enemy targets with colored smoke, and the transport helo can be used as an escape option in desperate scenarios. As of this time there is no in-mission repair/resupply available for these vehicles, besides the toolkits in the littlebirds, so make them count!
<br/><br/>
The assault LB seats 3, including pilots.
<br/><br/>
The transport LB seats 9, including pilots.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;