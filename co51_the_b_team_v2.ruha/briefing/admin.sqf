
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
The mission should last around 55 minutes starting once the players arrive at their checkpoints. A trigger will fire a couple minutes after players arrive at the checkpoints that indicates the 
mission is beginning by sending messages in side chat and as a message in the top right of the screen. Afterwards, triggers will fire roughly 10, 25, 35, and 45 minutes after start to kick off 
more wavespawns and indicate the mission status.
<br/>
The mission will end after about 50 minutes with a trigger that fires only if no enemies remain in the final trigger area, which is deemed the area threatening the train station. Once both this 
and the timing condition (4.5-5.5 minutes after the 45 minute trigger) are met, a message will broadcast saying reinforcements are arriving and the enemy is breaking off their attack. By then, 
no additional units should spawn and victory should be declared once the players fight off any remaining enemies.
<br/>
Enemy spawn locations are pretty conservative, in case the players retreat very slowly. If players retreat quickly and enemies spawn far away from the platoon, the admin should feel free to 
move them slightly closer, though keep in mind that one advantage of retreating is to buy themselves time and thin out enemy forces as they make contact.
<br/>
There are templates for enemy infantry and vehicles at he airfield to the east, of the AO, but any admin should use caution when adding more enemies, especially early in the mission.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];