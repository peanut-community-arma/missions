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
APRIL 18, 2033

An informant embedded with the local populace tells us that the evil Cult of Zagduul is stockpiling <marker name='marker_supplies'>food and medical supplies</marker> at a fire station in 
<marker name='marker_severograd'>Severograd</marker> with the intention of hoarding it for the Initiated. We intend to grab the supplies, take what we need, then distribute the rest to the 
oppressed populace. <br/>
We've discovered three old helicopters, UH-1Y Super Hueys, in an abandoned military base we've moved in to. Our intention is to insert via helicopter, secure the supplies, 
then airlift as much as we can back to base. <br/>
It is 2:00am and mostly clear. We'll be operating under the cover of darkness, but there is a half-moon and some street lights for ambient lighting.<br/>
Good luck. Go with the Light.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
We'll be encountering two types of forces: Enforcers and Inquisitors. Enforcers are essentailly heavily armed civilian police; expect them to carry a mix of old and new rifles, PDWs, handguns, 
and a handful of grenade launchers. Inquisitors are the Cult's paramilitary force: they will be fully armed and armored with modern rifles, machine guns, grenade and AT launchers, body armor, 
and armored vehicles. <br/>
<marker name='marker_severograd'>Severograd</marker> and its surrounding villages will be occupied by Enforcers. The initial response will also be comprised of Enforcers, with Inquisitors 
starting to filter in as the Cult recognizes the threat and can muster their forces. Within 20 minutes of entering the town, we expect the majority of incoming forces to be Inquisitors; after 
around 40 minutes, we expect the Cult to begin fielding a company-sized element of APCs and IFVs, along with old AA trucks they remove from storage. The number of enemies is also expected to 
increase over time.<br/>
The enemy has garrisons and military posts all over the region. They will come from all directions, but expect most of their heaviest assets to attack along the main east-west road.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
-One platoon of Bright Hearth Resistance fighters armed mostly with old surplus NATO equipment<br/>
-Three UH-1Y Super Hueys armed with rocket pods
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
Airlift as many <marker name='marker_supplies'>supply boxes</marker> as possible back to base.<br/><br/>
Optionally, also recover our informant's <marker name='marker_intel'>laptop</marker>, which could contain more valuable intel.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We should insert via air somewhere outside of <marker name='marker_severograd'>Severograd</marker>, make our way into the city, secure the <marker name='marker_supplies'>fire station</marker>   
containing the supplies, then airlift them out using the helicopters. Note that we will have to make multiple trips to carry the entire platoon to and from the AO: it is up to the platoon 
commander whether we wait for everyone to insert before assaulting the city itself. Either way, we should expect to fight an initial probing force to investigate the helicopter landing in 
addition to the forces stationed inside the city and the Inquisitors that respond to the incursion.<br/>
Although the helicopters technically have room for multiple supply boxes, the equipment inside can only safely secure one at a time, so each helicopter can only carry one box back during each 
trip to base. Our intel suggests the street directly in front of the <marker name='marker_supplies'>fire station</marker> is wide and clear enough for a skilled pilot to land and take off. 
Loading the helicopter may be safer and logistically easier here if the pilot and platoon commander/FAC feel comfortable with it; however, the platoon may move the crates to a more open LZ to 
load them if we think it best.<br/>
We should plan to set up a perimeter around the supplies and LZ. The amount of time we stay, and thus the amount of supplies we recover, should be dictated by how large a force we field and 
how well leadership thinks we can hold our position. Once we think we will soon get overrun, we should begin coordinating our exfil. Again, we will likely need more than one round of lifts to 
get everyone out, though helicopters carrying troops can also carry a box of supplies.<br/>
Our informant had to go to ground after she transmitted her intel to us. However, she left her laptop somewhere around <marker name='marker_intel'>here</marker>; if we can spare the troops, it 
could be valuable to recover it and bring it with us back to base.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Insert via air then maneuver on foot. If all helicopters or Phantom crews are eliminated before the whole platoon can exfil, there is a <marker name='marker_trucks'>vehicle depot</marker> with 
trucks we can seize and use to escape; if we are forced to do this, high command recommends we try and escape to the north-west.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
The helicopters have rocket pods available. However, they should be mostly focused on transporting troops and supplies as fast as possible.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Our priority here is the supplies, so leave the intel if we can't recover it without risking the mission. Also, keeping the helicopters intact will be valuable for future operations.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Our helicopter pilots get night vision goggles, but we don't have enough for the entire platoon. Likewise, the most modern rifles and attachments go to the highest ranking members of the 
platoon, AKA FTLs and above.<br/>
Each helicopter can seat 9, plus a pilot and copilot. We do not have any helicopters beyond the three we've recovered at the base; take care with them. Each helicopter also has an array of 
heavy rockets, but as previously mentioned, Phantom's primary responsibility is shuttling people and supplies.<br/>
For reasons mentioned previously in the briefing, each helicopter should only be loaded with one box of supplies at a time. Pilots (or co-pilots) will have to pull the boxes out of the 
helicopters and move them off the landing area at base. To carry a supply box, ACE interact with it; to load a box, drop it and ACE interact with it; to unload a box, ACE interact with the 
helicopter and open the Cargo menu.<br/>
Fireteam leaders have access to grenade launcher sidearms; squad leaders and above have underbarrel grenade launchers. Everyone with grenade launchers should have access to flares.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;