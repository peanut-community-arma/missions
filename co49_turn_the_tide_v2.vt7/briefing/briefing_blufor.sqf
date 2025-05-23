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
French forces have been crashing against our position for some time now - we think they are brittle and ready to be broken with a decisive counter-assault.
<br/><br/>
First, we must withstand their last push. We have entrenched defensive positions and spare small arms ammo <marker name='bunker1'>here</marker>, <marker name='bunker1_1'>here</marker>, <marker name='bunker1_2'>here</marker>, and <marker name='bunker1_3'>here</marker>.
<br/><br/>
Once the force of their attack has dissipated, we will counterpush into the large quarry to the Northeast and destroy 3 fuel trucks that are critical to their logistics chain in the region. From there we will escape by RHIB at the <marker name='extract'>docks</marker>.
<br/><br/>
They have countless reinforcements at their disposal so maintaining forward momentum during our counterpush will be critical to avoid being bled dry figuratively and then literally.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The French have hundreds of infantry in the area, a fair number of Badger APCs, and some light MRAPs. We expect them to commit 5 of their Badgers to their assault on our defensive position.
<br/><br/>
Their assault will come primarily from the Northeast of our current position, but we do have reliable intel that they have split off about 20% of their assault forces to the Northwest.
<br/><br/>
We expect heavy resistance throughout the operation, but using our initial position to wipe out the 5 Badgers should do wonders for our survivability. Each fireteam has a MAT-level launcher and everyone (except ARs and some leadership) can access LAT through the arsenal to help facilitate this. 
<br/><br/>
French infantry are wearing CCE woodland camo, which can be distinguished from our Flecktarn camo by its overall lighter coloration and less granular pattern. They should also be identifiable by the distinct visual profile of their FAMAS rifles.
<br/><br/>
P.S., .50 cal fire does ***NOTHING*** to Badgers, don't bother
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We are a platoon of German(ish) infantry.
<br/><br/>
A friendly transport helicopter may appear at some point to drop off supplies - there is no enemy air in the area.
<br/><br/>

<font size='18'>ADDITIONAL CREDITS</font>
<br/>
-Loadout guidance: Masada
<br/>
-Scripts from Veerserif and MajorDanvers helped make this mission possible
<br/><br/>
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
-Survive the French assault
<br/><br/>
-Counter-push into the quarry and blow up the three fuel trucks parked <marker name='truck1m'>here</marker>, <marker name='truck2m'>here</marker>, and <marker name='truck3m'>here</marker>. Simply disabling them will not do, they need to be in flames.
<br/><br/>
-<marker name='extract'>Extract</marker> by RHIB to the east (beyond the blue line). Escaping without blowing up the fuel trucks is an option if we take too much attrition.
<br/><br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
1. Occupy our current defensive positions (map marks in the SITUATION tab) and then use the hold action on the <marker name='bunker1_1'>green flag</marker> to start the mission. Make sure everyone is ready first, the enemy will arrive immediately!
<br/><br/>
2. Once all 5 Badger APCs committed to the assault, the biggest threat, are destroyed at our current position, push Northeast towards the quarry. Enemy infantry will spawn infinitely in the area between our position and the quarry, so it's in your best interest to push proactively through contact when possible.
<br/><br/>
3. Destroy the three fuel trucks at the quarry in any order. They must be catastrophically destroyed (i.e. cooking off), not merely disabled.
<br/><br/>
4. Extract by RHIB east of the blue line. There are 4 RHIBs at the marked extract and each seats 13. In worst case scenarios we have also prepared another 4 RHIBs at the next dock to the southeast.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
The terrain between us and the quarry is a mix of open fields and areas of excellent microterrain, both forested and nonforested. Zoom in on the map to see all the contours and consider your options carefully. Your exact path is at your discretion.
<br/><br/>

"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<font size='18'>UNDERBARREL GRENADES</font>
<br/>
UGL roles do not have access to extra explosive rounds through the arsenal. This is an intentional decision to limit player power, not an oversight.
<br/><br/>
<br/>
<font size='18'>RESUPPLY CALL-IN</font>
<br/>
A friendly helo is on standby to deliver a resupply crate with: <br/>
-300 G3 mags <br/>
-40 MG3 belts <br/>
-40 frag grenades <br/>
-40 smoke grenades <br/>
-8 HEAT 55 rockets <br/>
-8 AT4 launchers <br/>
-16 blood bags <br/>
-15 boxes of MMG ammo
<br/><br/>
Only PLTCO or a SL can call in the supply drop.
<br/><br/>
You can access it through the vanilla support module (hit F1, then follow the prompts - the drop will be called in at the area you place your crosshair when you confirm the vehicle you want to supply the drop!)
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;