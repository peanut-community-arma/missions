
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
There are some triggers that will fire upon mission load which will remove some objects close to the helicoper takeoff area at BLUFOR's base and in front of the fire station where supplies are 
stored. This should make landing the helicopter easier, particularly at the objective; however, less confident pilots may still choose to land elsewhere.<br/>
There's no firm goal for how many crates the platoon needs to recover. They should focus on recovering as many as possible while holding the area is still tenable, then extracting as many 
people as possible.<br/>
The mission should end once all BLUFOR have returned to base, escaped in a vehicle at least 1km from the city (more if following the main east-west road), or have been killed. The mission 
success criteria is somewhat vague, but if the platoon has recovered several crates then it should probably be considered a full success. Losing all helicopters should be 
considered a partial success if the platoon recovered several crates. If the platoon recovered several crates then was mostly annihilated, call it a draw; if they fail to recover more than a 
couple of crates, consider the mission a failure.<br/> 
The city itself is moderately garrisoned and patrolled. Reinforcements will arrive slowly at first, then more quickly and with heavier assets as time goes on. 60 minutes after the platoon 
approaches the city, several heavy assets will begin to arrive in a shorter amount of time. This probably when the platoon should organize their extract if they haven't already.<br/>
When the platoon first enters the city, initially light reinforcement contact is intended. This should give the platoon time to get aware of their surroundings and set up a defense around their 
landing zone of choice before the contact intensifies. Jchizz recommends that admins be conservative when adding additional contact. <br/>
Note that, by design, not everyone can be brought to (and potentially from) the AO in one lift. Platoon lead will have to decide who is lifted when and what to do when the platoon is not at 
full strength.<br/>
Theere are repair, fuel, and ammo trucks at base for the helicopters. However, the platoon should limit themselves to the three helicopters they start with - no more should be provided. 
Taking care of the helicopters should be a priority for BLUFOR.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];