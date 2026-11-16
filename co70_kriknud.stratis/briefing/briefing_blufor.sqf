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
2034
<br/>
The opening salvo of World War 3 battered a string of islands housing anti-air assets denying CSAT air operations aiming to cross the Mediterranean.
<br/>
The interceptors proved their worth and kept most of these sites intact.
<br/>
CSAT expected an easy bombing campaign and are now forced to re-task landing assets to take these islands, whilst keeping their transport planes full of paratroopers circling above their airfields waiting to be deployed.
<br/>
This island where the British relief forces are being deployed has been weathering these attacks and are in dire straights.
<br/>
Interceptor systems protected the airfield itself but the major radar installation <marker name='marker_mike'>Mike-26</marker> and other military bases across the island were damaged beyond repair.
<br/>
Frustrated with how long the <marker name='marker_s'>landing forces</marker> from CSAT African member states are taking, Iran has been forced to move advanced SEAD and armoured assets reserved for Europe to support these landings to finally dislodge us, approaching from the <marker name='marker_e'>east</marker> in 30 minutes.
<br/>
Your job is to defend the airfield from these attacks and provide NATO forces still on the island the breathing room needed to evacuate, eventually evacuating yourselves.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
African CSAT states were equipped with surplus in preperation with this wider war with NATO.
<br/>
Semi-arid camouflage uniforms with tan Chinese vests, armed with locally procured Vektor firearms and a small assortment of Chinese QBZ rifles.
<br/>
It appears the <marker name='marker_s'>African landing force</marker> have also added to their old vehicle fleet with modified civilian vehicles, expect technicals alongside Russian surplus.
<br/>
The Iranian contingent arriving from the <marker name='marker_e'>east</marker> will be fielding far more advanced equipment, intelligence suggests they've been forced to pull a mechanised and tank platoon from the Europe theatre.
<br/>
That'll be T-100 and BM-2T Stalkers, being supported by a motorised force of Otokar's.
<br/>
We also know they've been forced to move advanced SEAD to deal with the airfield's patriots estimated to arrive after 40 minutes, if those patriots go down expect helicopter assaults from the South.
<br/>
The landing vessels themselves have been spotted with anti-air ZU cannons and MANPADS, best to avoid.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
There will be a consistent outflow of C-130 transports airlifting wounded and equipment to Europe.
<br/>
We also have the twin Patriot battery keeping the air-assets at bay.
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
- Defend from the <marker name='marker_s'>south.</marker>
<br/>
- After 30 minutes defend from the <marker name='marker_e'>east.</marker>
<br/>
- After 40 minutes enemy <marker name='marker_e'>SEAD</marker> will arrive to destroy Patriots.
<br/>
- Last C-130 should airlift after 50 minutes taking the last of friendly personnel with them.
<br/>
- Evacuate with the last of the <marker name='marker_air'>C-130's</marker> before OPFOR air-assault arrives.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Defending the island using road chokepoints, falling back when neccessary.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Motorised assets provided to deploy quickly.
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
- Mission countdown starts crossing <marker name='marker_line'>phase line.</marker>
<br/>
<br/>
- Respawn waves should only occur when BLUFOR retreats to a safe position.
<br/>
<br/>
- Phantom resupply located <marker name='marker_resup'>here.</marker>
<br/>
- Logistic truck has access to launcher, ammo, medical and explosive boxes.
<br/>
- POLARIS DAGOR holds 7
<br/>
- Warrior holds 10
<br/>
- Wildcat holds 10
<br/>
- Alternate Phantom and Sierra assets available in the form of an Apache and Challenger's.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;