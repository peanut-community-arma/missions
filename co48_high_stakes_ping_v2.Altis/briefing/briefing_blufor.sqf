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
18 JAN 2050, 0645. We have received disturbing news from our forward service centers here in Altis. As you all know, we here at Comcast pride ourselves on our affordable internet service rates, but it seems that some number of our competitors have hired a black ops mercenary group to assault our service centers and cause unscheduled outages. In the time it took to notice the problem, ideate on a solution, come up with the responsibility chart, remember that we needed to get engineers, convince the engineers it was worth their time, remind Senior Leadership that the problem still existed, and authorize the strike, we've learned they have even set up strongpoints and mined the AO.
<br/><br/>
Our objective today is to safely navigate to our comms relay, run diagnostic checks on it, and fend off any enemy remnants that remain in the area. 
<br/><br/>
Today will be overcast with a chance of rain.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Reports indicate we are primarily fighting paratroopers from the Crowdstrike (TM) Crowdsourced Service Stoppers, a mercenary group named after the infamous incident of the same name. They are supported largely by MRAPs or technicals. Expect enemy transport helicopters to be present in the AO. Recon suggests that Telos and Anthrakia have been overrun by the enemy, and that enemy reinforcements are likely to come in from the northwest and southwest, over the Pyrgos Gulf. The location of known enemy strongpoints has also been marked on the map.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
One platoon of Comcast Troubleshooter special forces with attached Engineering Solutions detachment from HQ. However, the engineers have been so expertly trained, they now only speak their own language - Engineer Jargon. Management will have to translate for the platoon. <br/><br/>
veer's note: check Administration for Babel keybinds.
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
Destroy the Crowdstrike Crowdsourced Service Stoppers <marker name='mk_jammer'>jamming vehicle</marker> (Typhoon Device). Re-take the <marker name='mk_objective'>service center</marker> near Telos. 
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
- Engineers must defuse any explosives placed on the communications antenna of the service camp<br/>
- Engineers must run a diagnostic package on the terminal near the antenna (jamming vehicle must be destroyed first)<br/>
We managed to get a gig worker to place a crate of explosives near the jamming device, so we don't have to expense our own explosives for this one.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
You definitely won't have enough engineers to cover everywhere the platoon goes, so warn them to keep an eye out for out-of-place objects. Engineers will need to warn the platoon of dense mine concentrations, preferably using small words. The diagnostic scan will take a little under two minutes to complete, defend the point while it does so.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Move on foot through the AO at Platoon's discretion, under the advice of the Engineer team. Avoid Rodopoli, that whole area is assigned to the Sales VP's team directly, and we definitely don't want to intrude on their turf.
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
<font size='18'>BABEL</font>
<br/>
If you speak more than one language, check your 'Cycle Babel Language' keybind (default is Left Windows). You can change this in Controls > Configure Addons > ACRE2.
<br/><br/>
<font size='18'>USE OF ENEMY EQUIPMENT</font>
<br/>
Remember, if you are seen using weapons not provided to you by Comcast Corporate HQ, this will negatively impact your quarterly evaluation!
<br/><br/>
<font size='18'>GRENADIERS</font>
<br/>
You have your grenade launcher in your backpack. Don't ditch your carbine.
<br/><br/>
<font size='18'>MINES</font>
<br/>
The enemy are using three types of mines: the PFM-1 anti-personnel mine, the 2050 Standard AT Mine, and the OZM-72 10m tripwire mine. Inert versions for identification purposes are at the starting location. All three can be carefully disarmed by moving slowly up to them (within 1-2m), using ACE Interact on the main body of the explosive, and selecting 'Defuse' (provided you have a defusal kit and are an engineer).<br/>
- PFM-1, pressure-activated, effective radius 2m<br/>
- OZM-72, tripwire-activated, effective radius 10m<br/>
- AT Mine, pressure-activated (requires vehicle), effective radius 1m<br/>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;