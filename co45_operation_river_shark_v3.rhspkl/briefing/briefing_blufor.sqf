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
202X SEP 10, 0415. Local drug cartels have seized control of this area of Prei Khmaoch Luoung, forcing local civilians to flee the area and abandon their homes. Officially, the local government is seeking diplomatic solutions first. Unofficially, they have sanctioned a foreign strike force to kill the local cartel leaders and seize any available evidence. We have hiked through the night to our rendezvous point, where dinghies have been provided to facilitate our entry. Using our superior equipment and training, under cover of darkness, we will strike at the local kingpin's operations, centered on a militarized trawling vessel. Our aim is to destroy the arms stored on the vessel, kill identified HVTs, seize as much evidence as possible and generally cause havoc with this raid. 
<br/><br/>
The operation begins at 0415. Sunrise is at 0500. It is currently slightly foggy and fairly overcast, but the weather should clear up as we get closer to sunrise.

<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A few hundred cartel enforcers. They are equipped with Cold War-era military surplus, largely AKM derivatives with a few trophy M16s, PKMs and M60s. A few elite enforcers may be manning stationary heavy machine gun turrets or armed boats. They are garrisoned in and around the drugmaking facility to the north of the AO, and expect riverside patrols along the banks of the river near the objectives. Reinforcements, if any, will likely come from the hills and further north upriver.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of riverrine special forces, equipped for night river fighting. Leadership has been given additional sapper responsibilities. Due to the stealthy nature of the mission, no additional support is authorized.
<br/><br/>
Each squad has been assigned three dinghies (seats 5 each); Platoon should ride alongside them.
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
Destroy the caches on the <marker name='mk_trawler'>trawler</marker> and at the <marker name='mk_evidence'>drug facility</marker>. Seize any evidence that you see. Kill any HVTs located in the area.
<br/><br/>
The evidence we're looking for are on laptops.  The cartel leaders are likely wearing dress uniforms with berets; they are our high-value targets.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The challenge here is how to safely deliver at least one dinghy to the trawler. It would probably be wise to land at least a portion of the platoon nearer the AO, so that the dinghy team making its way offshore can be protected as they get close to the trawler. The river is flat and open, but the rice paddies should provide decent cover and concealment. Beware of close contact coming from the hills along both riverbanks, though the islands in the middle of the river should be unoccupied. Though it is dark, our night vision goggles are very good to the point where illumination flares are provided just-in-case, rather than as a first resort.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Move through the AO with or without the provided dinghies - take it slow until you're on the main river, there's not much room to maneuver. You will need at least one to access the trawler, which is permanently anchored offshore - two ladders at the rear of the trawler provide access. In the event that the dinghies are destroyed, you may need to exfil over land or swim to the trawler. Exfil routes are left to PltCo's discretion.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Keep an eye out for evidence and HVTs, since we are unsure of the exact count. We know there will be at least one form of evidence and at least one HVT present in the syndicate fortress. FTLs start with demo blocks and clackers, but all leadership can access them.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
FTLs start with demo blocks and clackers, but all leadership can access them.
<br/><br/>
<font size='18'>AUTHOR NOTE</font>
<br/>
'Veer why don't you just let us all walk into the AO?' Because I want someone to do the cool river insert under the tiny footbridge xoxo
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;