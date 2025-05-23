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
1 APR 2024. We've been banned for life from the go-kart resort.
<br/><br/>
That's okay! We'll just build our own beach fort/resort, even better than that wrecked and exploded husk of a one-star travesty! We've commissioned a trustworthy building company who have sent over a team of expert builders. Our job will be to provide enough building supplies for them to realize PltCo's architectural dreams, while fending off the TNA. Something about zoning and permits? Whatever.
<br/><br/>
Construction start time is 0600. The morning is overcast and lightly foggy, but the forecast is clear. The build site is a lightly wooded gentle downhill slope, with a few existing man-made structures.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A very large number of Tembelan National Army soldiers, riding principally in jeeps with guns. If we really make them angry, they might roll out the M113s and the Tembelan coast guard might come knocking.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
20-40 well-armed vacation-goers with a dream, accompanied by a 2-3 person construction crew. Only the construction crew is certified to use the Fortify Tool.
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
Construct a beach resort within the marked resort area. This resort must contain, at minimum:<br/>
- 2x Tents per squad, $30 each<br/>
- 1x Military Cargo HQ, $60<br/>
- 1x Power Generator, $50<br/>
- 2x Toiletbox, $20 each<br/>
- 3x recreational facility, $15 each - this can be a slide (any kind), carousel, winner's podium or swing/see-saw<br/>
In total, this should cost $315, assuming a total of 4 tents (for two squads). This will require a minimum of 8 supply boxes. Additional toilet boxes and recreational facilities are optional.
<br/><br/>
<font size='18'>SECONDARY TASKS</font>
<br/>
Retrieve building supplies for the construction team, dropping them off at the <marker name='mk_unload'>unload point</marker>. Extra supplies can be found at:<br/>
- The <marker name='mk_construction'>construction site</marker>, around unfinished buildings<br/>
- The <marker name='mk_stadium'>stadium</marker><br/>
- The <marker name='mk_wreck'>wrecked cargo ship</marker> - use the provided SDR and diving gear nearby to retrieve crates<br/>
Vehicle cargo and crew capacities are detailed in the Administration tab.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Each box of supplies grants $40. We start with one box at spawn - it's probably best to spend this on fortifications. The construction site should hold many cargo boxes, clustered near unfinished buildings. The wreckage is close by but requires tricky vehicle maneuvering, and probably has fewer salveagable boxes. The stadium has an easy-to-access cache of supplies in a single point, but the surrounding area is heavily defended by TNA forces.
<br/><br/>
Commanders should consider sending a squad out to collect cargo while the engineers and a defending squad remain at the construction site, to fight off TNA and to build as quickly as possible. 
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the provided vehicles to move people and cargo. Additional vehicles may be commandeered as necessary. An SDR submersible is available at the beach docks (look for beach umbrellas), to salvage the wreck. You absolutely could send someone back to the spawn point and load up on ammo and drive it over if needed.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Cargo boxes must be dropped off at the <marker name='mk_unload'>unloading point</marker> in order to be converted into budget.
<br/><br/>
Only Construction Crew units can use the Fortify tool to build fortifications and mission-critical structures. Leadership should coordinate with the LOGI team to identify good sites, and engineers should strive to provide fighting positions for defending squads. PltCo is encouraged to provide their architectural point-of-view when placing resort structures.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
A note from mission-making-veer: Yes, this is a joke mission, but I am 100% hellbent on murdering everyone.
<br/><br/>

Vehicle crew and cargo capacities are as follows:<br/>
- Truck, seats 13, holds max. 3 boxes<br/>
- Offroad, seats 6, holds max. 2 boxes<br/>
- SDR, seats 3, holds max. 1 box<br/>

<br/><br/>
<font size='18'>FULL BUILDING COSTS</font>
<br/>
- Tent East: $30<br/>
- Military Cargo HQ: $60<br/>
- Power Generator: $50<br/>
- Toiletbox: $20<br/>
- Slide (all variants), Carousel, Winner's Podium, Swing: $15 each<br/>
- Tower Bunker: $20<br/>
- Small Sandbag Bunker: $12<br/>
- Short HESCO Barrier: $5<br/>
- Long Sandbag Wall: $5<br/>
- Sandbags (Round): $3<br/>
<br/>
Each cargo box takes up 6 cargo spaces. Contact admins if anything mission-critical is missing from your loadout. Thanks to nullAurelian for pioneering the concept and also letting me copy his homework.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;