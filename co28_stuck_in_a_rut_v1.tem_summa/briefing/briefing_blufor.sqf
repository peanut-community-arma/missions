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
MARCH 196X, 0635, border of Arstotzka and the Xibei Soviet Republics (XSR): Amid growing tensions, two days ago, the XSR forces stationed on this border region suddenly ambushed an Arstotzkan patrol. We successfully repelled them, after an exchange of mortar fires and sending in a nearby tank element. Unfortunately, one of those tanks was stuck and disabled on the river during our retreat to our side of the river. We desperately need to recover this tank before next inspection, so that the company commander doesn't look bad in the upcoming report.
<br/><br/>
The weather is overcast and slightly foggy. The terrain is flat and wet owing to recent rains.<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Around a company of XSR border guards. They are also trying to seize the disabled T-55 and recover it. They may have moved up across the river using the cover of night and established hasty defenses. We know they have been observing us, so stealth is not a major concern.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
One platoon of Arstotzkan border guards who are, of course, extremely happy to be chosen for this last minute mission for the glory of the company commander personally. No, you're not getting paid overtime.
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
- Reach the disabled <marker name='mk_tank'>tank</marker>.<br/>
- Tow it (see notes) back beyond our side.<br/>
If the tank cannot be recovered, destroy it using the provided demolition blocks in the inventory of the tow truck.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Walk there, drive back, try not to die. Or at least, don't die until the tank's back on our side.
<br/><br/>
The terrain might seem flat but is actually full of small (2m) tall hills and other micro-terrain. Very little other cover exists.
<br/><br/>

<font size='18'>SUPPLIES</font><br/>
Remember that our opponents are ALSO VERY POOR and will not be fielding RPGs. Carry what you'll need. Their mags are interchangable with ours but they use different tracers for their PKMs.
<br/><br/>

<font size='18'>TOWING FOR DUMMIES</font>
<br/>
ACE Towing works. Note that the towed vehicle can rubberband dangerously. Give it a LOT of space.<br/>
1. Make sure you have the Rope item in your inventory (there are spares in the truck)<br/>
2. ACE Interact on the towing vehicle > Towing > Attach Rope<br/>
3. Attach the rope somewhere to the back of the vehicle. Attach the other end to the vehicle to be towed.<br/>
4. Drive. Remember the rope CAN BE DAMAGED! Spare ropes are in the vehicle. You will move very slowly (12km/h) so be careful.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Tell admins if anything critical is missing from your loadout.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
