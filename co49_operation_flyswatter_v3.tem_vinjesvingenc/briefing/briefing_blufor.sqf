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
We've been assigned to escort a VIP directly through CSAT territory so that they can 'see the famous Sunrise Spring'. I'm not sure why my superior approved this plan, which, frankly, sounds like it came from an alternate reality, but I suspect it's related to the VIP being a multi-billionaire. 
<br/><br/>
In any case, CSAT control the town of <marker name='floten'>Floten<marker> and the surrounding roads and forests - we'll have to punch straight through them to get to the VIP's destination.
<br/><br/>
The VIP insists on hiking the specific route laid out generally on your maps, starting <marker name='trailhead'>here at the trailhead<marker> and proceeding East along the trail to <marker name='spring'>Sunrise Spring.<marker> 
<br/><br/>
In addition, the VIP flatly refuses to hike cross country, and will not stray beyond 100m of the trail because going further out would get them 'eaten by ticks and poison ivy', in their words. Explaining that poison ivy plants do not have mouths did not seem to sway their view at all. 
<br/><br/>

<font size='18'>WEATHER</font>
<br/>
It's a clear, early morning. Slightly chilly. Perfect for a nice hike!
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
According to the VIP the woods are 'absolutely swarming' with well armored and equipped CSAT infantry so expect heavy resistance once they know we're here. We may also encounter a few CSAT MMG squads. Vehicle contact should be limited overall, but the path does cross a road at some point so we should be prepared to fight a small number of CSAT vehicles, specifically repurposed BTRs and/or BRDMs.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We do not expect any friendly infantry or vehicles in the area. Local civilians were evacuated a long time ago.
<br/><br/>
(shoutouts to veerserif, jayjoe, and Cpen, among others, for helping me get into missionmaking for this modpack!)
"]];

/* ===============================================
    MISSION
     - Describe any objectives that the team is expected to complete.
     - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission = ["diary", ["Mission","
<br/>
-Protect the VIP as they hike due East along the <marker name='trail'>trail,<marker> from the <marker name='trailhead'>trailhead<marker> through to <marker name='spring'>Sunrise Spring.<marker>
<br/>
-We are free to move as we like, but the VIP insists that they must stay more or less within 100m of their intended path at all times.
<br/>
-The mission is considered complete when the VIP has safely arrived at Sunrise Spring.
"]];

/* ===============================================
    EXECUTION
     - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
By default, Plt CLS and/or Plt Rifleman are responsible for keeping an eye on the VIP. PLTCO may make other arrangements if they see fit.
<br/><br/>
Exact screening tactics are at the platoon's discretion - keep in mind that the VIP will want to stay on the path.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Follow the trail east to Sunrise Spring.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
It's recommended that the Platoon Rifleman act as 'designated babysitter' for the VIP; if this isn't possible, consider assigning someone else to keep an eye on them and keep them out of PLTCO's hair.
"]];

/* ===============================================
    ADMINISTRATION
     - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
     - Outline of how to use any mission specific features/scripts.
     - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The VIP should be selected by admin during slot-in.
<br/><br/>
RULES FOR THE VIP
<br/><br/>
-The VIP should stay within 100m of the trail marked on the map at all times, with the only exception being if the Platoon suffers critical attrition and the VIP must escape and evade with the survivors. 
<br/><br/>
-The VIP can freely make their own call about what 'critical attrition' means, as a general rule of thumb I'd put it at a ballpack 'less than half of the players that started are still conscious and you are being overrun'
<br/><br/>
-While this is a RP role, for everyone's enjoyment the VIP should have *some* sense of self-preservation (e.g. please don't intentionally run into enemy fire to spite PLT, etc.).
<br/><br/>
-The VIP may dress as they wish, including stocking up on bandages. They can even be an ammo mule for the platoon, *if* they are feeling cooperative.
<br/><br/>
-The VIP may not carry or use any sort of weapon unless the platoon suffers critical attrition.
<br/><br/>
-In the case that the VIP is forced to pick up arms due to critical attrition, they must roleplay being bad at using weapons.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;