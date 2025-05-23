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
A dispute over taxation of trade routes has intensified into a shooting war in this province. The local government attempted to stamp out the rebels with their militia backed by <marker name='defeatedAttack'>a couple of tanks</marker>, but were easily repulsed.
Now, the federal government has deployed us to retake the town of <marker name='mas'>Masakali</marker>. Intelligence suspects CSAT involvement with the rebels and have pinpointed a likely FOB <marker name='base'>here.</marker>
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Local guerillas with CSAT advisors. CSAT is circumspect with their armored vehicles--a small amount of wheeled IFVs--and will only deploy them if they feel their base is threatened.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A small UN fact-finding mission on standby to inspect the CSAT base, if it exists. They're currently holding at Turawa and will be using the <marker name='seroad'>southeastern road</marker>. They will be able to handle the transit to Masakali, but make sure the town itself is completely clear as well as the FOB. White-painted vehicles with large black text reading 'UN'.<br/><br/>

No civilians are believed to still be present in Masakali. However, attempt to avoid unnecessary destruction of property.
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
• Retake <marker name='mas'>Masakali</marker>.<br/>
• Capture <marker name='base'>the CSAT base</marker> and hold it until the UN team arrives.<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Small mortar barrages can be called for using 148s (using the built-in fire support menu). Command would like to take the FOB and town intact, and requests that barrages are to be used only if PLTCO judges them necessary.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Document any evidence of CSAT involvement you come across.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Three trucks: Each seats 13 (including the driver).<br/>
Three jeeps: Each seats 4 (including the driver).<br/><br/>
Medics (pre-respawn) should show up on squad radar.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;