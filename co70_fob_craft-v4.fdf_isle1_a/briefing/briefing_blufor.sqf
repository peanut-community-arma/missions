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
With the continued fighting to the North, UN Command has declared the peninsula as a safe zone for refugees fleeing the war. 
To this end <marker name='marker_1'>a base was established in the mountains</marker> to support interdiction patrols. 
<br/>
24 hours ago this base was shelled and totally destroyed. 12 hours ago we dispatched a convoy with supplies to re-establish control of the area - it was intercepted en route to the base's location. 
Aerial reconnaissance indicates that one or more groups of insurgents from the warzone is the cause, but the location could not be located before the drone was damaged by anti-aircraft fire.
<br/>
Airborne forces are to be dispatched to secure the location and rebuild the base before insurgent reinforcements can arrive to secure the to the peninsula.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Insurgent forces armed with Soviet-era small arms.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A platoon of peacekeepers with light helicopter support.
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
Secure the FOB location and fortify it using <marker name='marker_0'>supplies flown in from the airfield</marker>. The FOB will need the following to be complete:
<br/>
1x HQ Building <br/>
1x Medical Cargo House <br/>
1x Generator <br/>
4x Tents <br/>
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
Fly out to the <marker name='marker_1'>destroyed FOB</marker> and clean up the debris and UXO before starting reconstruction using <marker name='marker_0'>supplies flown in from the airfield</marker>. 
Secure and fortify a perimeter before a mechanized insurgent reforcement group can arrive.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Insert in the FOB area using provided helicopters. Until the anti-aircraft guns have been neutralized using helicopters to search for insurgent is inadvisable.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
No assigned fire support.
<br/><br/>

<font size='18'>OPTIONAL OBJECTIVES</font>
<br/>
- Locate the convoy that was assigned to rebuild the FOB. It's last trasmission was a the <marker name='marker_3'>rail line waypoint</marker>. <br/>
-  It is likely that there are stolen supplies hoarded at militant camps in the area. Recover whatever is possible without being derailed from the main task. <br/>
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Six (6) Wildcat Helicopters have been provided to airlift troops and supplies to the base. 
Wildcats have space for 1 pilot, 1 co-pilot and 8 passengers; each aircraft is armed with a 20mm cannon pod and DAGR laser-guided rockets, of which the laser guidance can be controlled from the co-pilot position or with a FAC. 
In addition to the weapons Wildcats have a spotlight system that can be directed from the co-pilot position and a FLIR controlled from the pilot's position.
<br/>
Two (2) fuel trucks are available at the airfield for refueling and repairs, but NOT rearming.
<br/>
This mission uses ACE Fortify! Initial budget for building will be $0, but <marker name='marker_0'>netted supply boxes will be spawned at the starting location</marker> and can be airlifted to the FOB to add to the build budget. 
The boxes spawn 2 at a time and will not spawn if there is still a box in the spawn area. Note that the <marker name='marker_1'>drop-off point</marker> is centered on the helipads at the FOB and may be finicky if the boxes are dropped in haste.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;