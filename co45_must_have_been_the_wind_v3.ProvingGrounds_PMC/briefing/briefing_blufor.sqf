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
April 10th, 1985
<br/>
04:15 hours
<br/>
<br/>
Soviet forces have pushed far beyond the limits of their supply lines, resulting in their logistics corps establishing <marker name='marker_Obj'>ad hoc supply bases</marker> across the frontline.
<br/>
By allowing Soviet spearhead units to simply bypass our position we have infiltrated this rear line to sabotage one of these bases and cripple the units that rely on it's operation.
<br/>
<br/>
It is the task of this SOCOM infiltrator unit to search and destroy any equipment of interest and escape in the direction of <marker name='marker_Safe'>friendly lines.</marker>
<br/>
Due to the early morning a fog bank has developed that we can use for cover, and the unique landscape of this area has a number of dry riverbeds to use to our advantage.
<br/>
<br/>

<font size='18'>ENEMY FORCES</font>
<br/>
We are behind enemy lines so expect to be surrounded.
<br/>
This area is home to a number of Soviet foot patrols and rushed fortifications, including dug in vehicle nests scattered across the AO.
<br/>
<br/>
Troop concentrations are situated around the MSR, specifically the twin bridges close to our insertion point, with the <marker name='marker_OuterBridge'>outer bridge</marker> 
 only being manned with a small sentry force compared to the <marker name='marker_InnerBridge'>inner bridge's</marker> far more robust garrison.
<br/>
<br/>
The <marker name='marker_Obj'>supply base</marker> itself is home to a line of rushed tank traps and barbed wire running along the outside of the base facing the frontline, with sandbag positions built on top of 
the <marker name='marker_South'>hill</marker> south of the base.
<br/>
<br/>
Once contact is made with the <marker name='marker_Obj'>supply base</marker>, the local garrison will fire off two red flares to signal nearby units to assist.
<br/>
The closest garrison's that can respond will be roughtly 7 minutes away, with an assortment of BTRs and URAL transports approaching from both the <marker name='marker_QRFWest'>MSR West</marker>
 and the dirt road from the <marker name='marker_QRFSouth'>South.</marker>
<br/>
<br/>
Beyond these closer garrisons is a Soviet airbase housing an airborne wing of two Mi-8 transports and one Mi-24 attack helicopter, alongside a ground force of Urals and one state of the art BMP-2 
that will take roughly 22 minutes to arrive as a single force approaching from the <marker name='marker_QRFWest'>West.</marker>
<br/>
<br/>
Pray you are nowhere near the base when they arrive.
<br/>
<br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
You are alone, expect no reinforcements to help when you are discovered.
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
- Approach <marker name='marker_Obj'>supply base</marker> whilst avoiding early detection.
<br/>
<br/>
- Destroy enemy materiel and targets of opportunity, logistics vehicles and boxes containing equipment.
<br/>
<br/>
- <marker name='marker_Safe'>Escape.</marker>
<br/>

"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Use the dry riverbeds to infiltrate close to the <marker name='marker_Obj'>supply base</marker> before establishing contact and revealing yourself. 
<br/>
<br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Up to the platoon's discretion whether to split squads down different paths.
<br/>

"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
	 - QRF signal flares will not fire for distant contact, once the threat is closer to the FOB the garrison will alert QRF.
	 <br/>
	 <br/>
	 - You can alter the distance that your VOIP projects by holding Tab and scrolling by default.
	 <br/>
	 <br/>
	 - Volume of radio communication is not effected by VOIP levels.
	 <br/>
	 <br/>
	 - Every team member should have access to demolition explosives.
	 <br/>
	 <br/>
	 - Automatic Riflemen TE4 box fires tracer after every four shots, TE1 fires tracer every shot.
	 <br/>
	 <br/>
	 - The Sig Sauer P226R Combat has access to a suppressor.
	 <br/>
	 <br/>
	 <br/>
	 <font size='18'>- This is Whirly's first mission so please let me know how it goes in #Mission-Feedback!</font> 
	 <br/>
	 <font size='18'>I may be willing to expand the base and angles of attack in a new version!</font>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;