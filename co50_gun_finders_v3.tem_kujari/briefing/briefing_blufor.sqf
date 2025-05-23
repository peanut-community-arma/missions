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
Various intelligence sources report that the insurgents have taken the town of <marker name='marker_town'>Mandalari</marker> and turned it into their main base, including a sizeable weapons cache and a vehicle depot where they assemble technicals. The insurgents have also taken control of an old UN <marker name='marker_checkpoint'>checkpoint</marker> at a river crossing. 
<br/><br/>
Our mission is to secure the checkpoint and town, destroying the vehicle depot and securing the weapon caches so we can peacekeep better with their much cooler guns.
<br/><br/>
Intel suggests the insurgents have heavily fortified part of the town with emplaced weapons including at least one heavy howitzer and additional defensive structures. The caches are believed to be stored in these new buildings. The minimum range of the howitzer is marked on the map as a red circle.
<br/><br/>
Civilians are still in the town and surrounding area, however many have gone missing over the past weeks since our succesful operation to rescue those IDAP workers. 
<br/><br/>
It is now dusk, however there is a half moon so it shouldn't be too dark. Luckily we found some flashlights in the back of the ASV. There is also ground level fog that does not look like it will clear anytime soon.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The insurgents are armed with AK-12s, some with GPs, and have access to emplaced weapons of various types that they really love to bolt onto the many light trucks they have. They also have access to a large variety of disposable LAT. They are known to not wear any ballistic protection, preferring to wear local clothes in order to blend in with the local populace.
<br/><br/>
HUMINT also reports 'scary looking dudes in all black high-fiving some insurgents'. However no other intelligence sources can corroborate.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
It's just us. We are a mechanized platoon of UN peacekeepers using BTR-70s and one M1117 ASV.
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
We have 3 objectives:
<br/><br/>
-secure the <marker name='marker_checkpoint'>river crossing</marker>. This will allow high command to deploy reinforcements.
<br/><br/>
-destroy the insurgent vehicle depot in <marker name='marker_town'>Mandalari</marker>. We have demo charges available for this purpose.
<br/><br/>
-secure the insurgent weapon caches also in <marker name='marker_town'>Mandalari</marker>. Since we are stealing the insurgents' weapons, feel free to take them off their dead bodies.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
There are two roads that lead north and merge right at the <marker name='marker_checkpoint'>river crossing</marker>. The insurgents have vehicle patrols on the roads and infantry patrols in the surrounding jungle. Once the river crossing is secured high command can send reinforcements. North of the river there is only one road that leads to the town, with thick jungle on either side that vehicles definitely hate driving through. Past the jungle and around the <marker name='marker_town'>town</marker> there is undulating terrain that can be used to safely advance on the objective. Destroying the vehicle depot might damage town buildings but we can just blame the insurgents for that. Do not destroy the weapon caches.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
As a mechanized platoon we have BTR-70s integrated into each squad that can be used for rapid movement within the area of operations.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
The KPVTs on the BTRs and the M2 and Mk. 19 on the M1117 can be used effectively for support.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Avoid civilian casualties.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
VG-40OPs are flare rounds for UGLs.
<br/>
We have three BTR-70s and one M1117 available. They both have an HMG and the M1117 also has a 40mm grenade launcher. 
<br/>
The BTRs seat 20 and the M1117 seats 9, including crew seating.
<br/>
The vehicles are loaded with ammo and medical supplies.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;