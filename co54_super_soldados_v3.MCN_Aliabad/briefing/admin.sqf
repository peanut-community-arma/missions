
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "If a co-pilot is slotted, one of the Hydra pilons on the AH-6 may be swapped out for a DAGR pilon, giving the co-pilot laser guided rockets. This 
should only be done upon request as it reduces the overall firepower of Reaper. The co-pilot has a laser designator/camera to use even without the rockets.
<br/>
SF and the main platoon have somewhat divergent but not conflicting objectives. For both, the bulk of the mission will entail finding and destroying 
drug labs and weapons caches, so expect that they work together for most of the mission; divergence will most likely occur at the beginning (covertly) and at the end when retreating.
<br/>
The HVT will spawn at one of 8 different locations chosen at random in the initServer.sqf file along with a black SUV. Try to avoid manually triggering any of the other wavespawners that 
are synced to a trigger without an area surrounding it, as this will likely spawn another HVT. If you do spawn another HVT, just delete him and his nearby black SUV.
<br/>
The enemy starts with about half their local forces already spawned in, giving Reaper both information on garrisons and patrols to report back to platoon about as well as threats to worry 
about and avoid. The other forces will spawn in as ground troops approach their locations. This coupled with each trigger spawning only one or a few groups should hopefully prevent any 
trigger lag spikes without causing too much overall lag.
<br/>
The expectation is that BLUFOR will kill enemies fast enough that additional spawns and reinforcements don't overload the server. However, if there are too many enemies at any point, it's 
suggested to either remove enemies in the western area of the AO if the platoon does not have Charlie slotted or remove reinforcements (and add them back later once more enemies have been 
killed).
<br/>
Aside from a few heavy machine guns, the enemy is mostly lightly armed and armored. Enemy reinforcements will begin to spawn about six minutes after the platoon enters enemy-occupied territory. 
Roughly 24 enemies will spawn with every 'wave', with waves growing more frequent within each subsequent six minute stretch until they occur once per minute. This means the level of contact 
the platoon will face will plateau 36 minutes after they enter enemy territory, plus the time it takes for enemies to travel from outside the AO (from various directions) to the platoon. At 
this point, contact is expected to be pretty heavy and continuing the mission will grow less and less teneable as ammo is consumed and wounds mount.
<br/>
As with all Jchizz missions, failure SHOULD BE an option. Sometimes dying is fun! However, gauge the mood too - use your judgment if people are having fun or not. I'm not really sure how the 
late stages of this mission will play out.
<br/>
Thank you for admining! :D";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];