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
After the loss of satalite communication we have been stuck behind enemy lines without contact firendly forces. The enemy also seems to have been thrown into disaray by the
 communcation blackout. The splintering and infighting of Erusean forces after the blackout has created an opportunity to end this war.
In order to get this intel to friendly forces, we plan to take advantage of the larger disaray by securing an air transport from an eurusian air field and extracting to the east.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
About a company of infantry defending the airfield and surrounding facilities. some light armor and SPAAG
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
One platoon of Osea advanced recon

"]];

/* ===============================================
    MISSION
     - Describe any objectives that the team is expected to complete.
     - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission = ["diary", ["Mission","
<br/>
- Neutralize the 3 SAM sites covering the air field
<br/>
- Neutralize the two SPAAGs around the airstrip proper
<br/>
- Aquire air transport and extract to the east towards the sea to establish communication with our naval forces

"]];

/* ===============================================
    EXECUTION
     - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Seccure an air transport and extract to the east to restablish communications with friendly forces
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Advance on the airfield at squad leads discretion

"]];

/* ===============================================
    ADMINISTRATION
     - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
     - Outline of how to use any mission specific features/scripts.
     - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
5 landrover 110s are availible. they can seat 10 including driver and are equiped with an HMG and an MMG.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;