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
Recent talks with members of the Altis Armed Forces (AAF) have gone horribly wrong, and the AAF have made the first move. <marker name='FOB'>NATO FOB Manchester</marker>, located at the southern peninsula of Zaros Bay, has been overran and the AAF are poised to move further inland.
<br/> 
NATO High Command believes for this moment to be a critical chance to stall the AAF's offensive, and as such, has authorized an operation for a counterattack against the now AAF held FOB. As the crack of dawn approaches on a foggy morning, NATO forces insert into the AO and await further instruction.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Altis Armed Forces 1st Regiment - Bravo and Delta Companies with support from Air Wing - 2nd Helicopter Squadron. 
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
NATO Task Force Maize - 1st Platoon with support from Mobile Anti-Air SF attachment, callsign SCYTHE.
<br/><br/>
3x CAS Yabhon-R3 Drones, callsigns Thread, Needle, and Pin.
<br/>
2x UCAV Sentinal Drones, callsigns Pavement and Asphalt.
<br/>
1x Stomper, callsign Lunchbox all operated by a JTAC liason attached within platoon command.
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
Breach the AAF's frontline <marker name='Checkpoint'>checkpoint</marker> 
<br/>
Push into the peninsula and retake <marker name='FOB'>FOB Manchester</marker> from the AAF.
<br/>
Eradicate AAF's presence from the town of <marker name='Sfaka'>Sfaka</marker> to prevent any further counter attacks against FOB Manchester and secure the peninsula.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Our goal is to fully wipe out AAF's presense from the western half of this peninsula, starting with FOB Manchester and then the town of Sfaka to the south. To do so, first, we will need to push into their frontline defenses around Drimea and secure their forward command post.
<br/>
Once we have entered the peninsula, we should approach the FOB from either the west or east, utilizing the dominating hillsides to allow one of our teams to approach the FOB itself to be cleared. From there, we will turn our attention to southwards.
<br/><br/>
Preliminary information from what limited air recon we have been able to do, shows that the town just to the south, Sfaka, had been the AAF's primary staging grounds. So once the FOB is secure, advance and sweep through the indicated area. Expect a large bulk of the AAF's ground forces to be staged here ready to push out on your approach.
<br/><br/>
AAF are on high alert and prepared for an offensive push. Be ready for multiple counter attacks to occur from the west to southern arc as you move through the AO, including potentially naval or air threats.
<br/>
To reiterate, we are expecting a mix of motorized/mechanized infantry, heavy armor, helicopter support, potential naval and light AA assets to be in play. 
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Movement plan is at the Platoon Commander's discretion. 
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Special Forces Anti-Air attachment, callsign Sycthe, will be moving with the main element to deal with any air threats the AAF will throw out.
<br/>
Furthermore, three Yabhon-R3 drones, callsigns Pin, Needle, and Thread, are available to assist deal with any heavy armor threats ground teams encounter. Liberal usage of the various drone armaments is encouraged to stretch the platoon's resources through this long operation.
<br/>
Finally, a UGV Stomper, callsign Lunchbox, will be moving alongside the platoon to act as an immediate light resupply. Further supplies will need to be scavenged from either FOB Manchester or the Drimea Forward Checkpoint.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size='18'>DRONE INFO</font>
<br/>
The Yabhon-R3 and UCAV Sentinal drones are parked at the <marker name='Airport'>Gravia Airport.</marker> Each of the three Yabhon-R3 drones are armed with 3x AGM-114Ks and 3x AGM-114Ns respectively. The UCAV Sentinals are armed with 2x CBU-85 Cluster Bombs. These are laser guided munitions so each Squad leader will be given a respective Lasercode, listed below, to use when coordinating with JTAC.
<br/>
These drones will not respawn if shot down and have no methods of resupply. Exact usage of the drones is to be left up to the JTAC and Platoon Commander.
<br/><br/>
<font size='18'>LASERCODE REFERENCE</font>
<br/>
Pltco - 1121
<br/>
Alpha - 1122
<br/>
Bravo - 1123
<br/>
Charlie - 1124
<br/>
Scythe - 1125
<br/><br/>
Keybinds to cycle lasercode up and down by default are Ctrl + Alt + Q and Ctrl + Alt + E, respectively.
"]];

private _dronebible = ["diary", ["Drone Bible","
This tab is to provide the drone operator with important relevant information in regards to the munitions and procedure of using said munitions of the various drones available to them. This information assumes you already have an understanding on how to pilot the various drones and assign waypoints/follow orders to said drones.
<br/><br/>
<font size='18'>Munition Characteristics</font>
<br/>
AGM-114K Hellfire II - Target: All armored threats
<br/>
Range: 8km
<br/>
Lock-on cone: 100°
<br/><br/>
AGM-114N Hellfire - Target: Enclosures, urban targets, and infantry hardpoints
<br/>
Range: 8km
<br/>
Lock-on cone: 100°
<br/><br/>
CBU-85 Cluster Bomb - Target: Infantry hardpoints
<br/>
Maximum Range: 5 km
<br/>
Minimum Range: 250 m
<br/>
Lock-on cone: 120°
<br/><br/>
<font size='18'>Fire-Mission Procedure</font>
<br/>
Have a friendly put their laser on target and use your drone's thermals to verify the laser dot is indeed visible (not covered by roof or trees for example).
<br/>
In the drone, select your desired munition and ensure your radar is visible (cycle [] keys)
<br/>
Adjust the aircraft's heading to fly directly towards the target
<br/>
Adjust radar/sensor range (ctrl []) until you can see the red laser target marker in the radar/sensor. If not seen, try to approach target from different angles
<br/>
Check the top right under the munition/fire select window, the red targeting light should be on and attack profile should have changed from LOAL (lock after launch) to LOBL (lock before launch).
<br/>
Fire and watch your missile hit the lased spot.
<br/><br/>
Do note that for the CBU-85s, you can technically dumb fire them without the need of someone lasing it in. You would just use the vanilla crosshair provided while in the gunner's view to bring it on target. PLEASE EXERCISE CAUTION WHEN USING THESE ROUNDS.
<br/><br/>
<font size='18'>Drone Characteristics</font>
<br/>
Just as a quick note, the Sentinels, while faster and tougher than the Yabhon-R3, do NOT have the fuel capacity to stay airborn the entire mission. Only launch them when needed and/or if you plan on doing high altitude recon.
<br/>
The Stomper is a standard stomper with a 12.7 machine gun and a 40mm AGL to provide self-defense. It will not be able to withstand much if any of the threats the AAF bring to bear so treat it as a logistical truck with self-defense capabilities.
"]];

player createDiaryRecord _dronebible;
player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;