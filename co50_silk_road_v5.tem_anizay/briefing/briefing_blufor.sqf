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
<br/><br/>
Since invading and occupying North Takistan in recent years, US forces have increasingly encroached on our Northern border. They have chosen to occupy some of our cities here in South Takistan and have become increasingly distant diplomatically. It's clear they are preparing to fully invade our country as well, so we've decided to make the first strike.
<br/><br/>
Our objectives today are two-fold: First, take back the cities of <marker name='qalandar'>Qalandar<marker>, <marker name='gorqan'>Gorqan<marker>, and <marker name='mian'>Mian<marker>, in that order. Second, retrieve the US intelligence laptop located somewhere in each city so we can learn more about their plans. 
<br/><br/>
Make good use of our BMP-3s to outrange and destroy the occupiers when possible, as well as to transport the platoon between objectives. We've also managed to seize some enemy Namer IFVs. While they do not have ammo, they have heavier armor than our BMP-3s and thus will also serve as excellent troop transports and pull fire away from the BMPs.
<br/><br/>
It is a bright and clear morning.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Each city has a multiple platoon garrison of US infantry, with some number of supporting Humvees as well as numerous static HMG nests. We may also encounter small Humvee patrols between the cities. 
<br/><br/>
The enemy have access to a handful of AT4 launchers. US body armor is pretty strong, so keep your guard up in CQB.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We are a platoon of South Takistan mechanized infantry, with 3x BMP-3s, 3x Namers with no ammo, and 1x Mastiff command vehicle.
<br/><br/>
There is no civilian presence, but you may find civilian vehicles present, which would be convenient transportation options in any dire scenarios.
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
-Retake the cities of <marker name='qalandar'>Qalandar<marker>, <marker name='gorqan'>Gorqan<marker>, and <marker name='mian'>Mian<marker>.
<br/><br/>
-Locate and seize the US intel laptop located in each occupied city.
<br/><br/>
-Destroy US occupying forces
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>

<font size='18'>BMP-3 AND NAMER ARMOR</font>
<br/>
The BMP-3 is highly resistant to .50 cal fire from the front (except at ranges of below about 100m), but vulnerable on its sides and rear. One hit from an AT4 will almost certainly disable it, so enemy AT soldiers are targets of extreme priority.
<br/><br/>
The NAMER has heavier armor than our BMPs and will shrug off .50 cal fire and can usually tank multiple AT4 hits before being destroyed. While the Namers we've acquired don't have any ammo, they will be useful distractions and troop transports, capable of thunder running infantry in to towns with minimal risk.
<br/><br/>

<font size='18'>REPAIRING</font>
<br/>
Everyone should be able to repair the vics, as they are all set to be ACE repair vehicles. Each vehicle should have a handful of toolkits in its inventory. Dedicated crew spawn with toolkits and can get more via the personal arsenal.
<br/><br/>
If toolkits do not repair vehicle optics contact admins for a manual fix during a noncombat moment.
<br/><br/>

<font size='18'>ACQUIRING THE ENEMY INTEL</font>
<br/>
You will 'seize' the intel laptops via a hold action on the object. The laptop disappearing is the only indicator that it has been picked up, so don't forget to communicate your pickup up the chain!
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
<font size='18'>VEHICLE LOGISTICS</font>
<br/><br/>
Each BMP-3 seats 12, including driver, and contains:
<br/><br/>
50x 30rnd 7N6 AK mags <br/>
20x 30rnd 7T3M AK tracer mags <br/>
30x 45rnd 7N6M RPK mixed tracer mags <br/>
4x First Aid Kits <br/>
3x Toolkits <br/>
2x RPG-26 launchers <br/>
1x RPG-7V2 launcher with 2x OG-7V warheads <br/>
various smoke grenades <br/>
20x VOG-25 underbarrel grenades <br/>
9x RGD-5 hand grenades
<br/><br/>

Each NAMER seats 11, including driver, but has no vehicle ammunition, and contains:
<br/><br/>
4x toolkits
<br/><br/>

The command Mastiff MRAP seats 11, including driver, and contains:
<br/><br/>
3x toolkits and element-appropriate small arms resupply. ***Right click as driver to pilot the vehicle through the built-in camera instead of the awful dirty windscreen!***
<br/><br/>
<font size='18'>VEHICLE RADIO NETS</font>
<br/><br/>
You may notice that the BMP-3 crews on this mission share the 343 net with the infantry squads, instead of communicating directly with PLT. This is intentional, but may be changed at PLTCO/admin discretion.

"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;