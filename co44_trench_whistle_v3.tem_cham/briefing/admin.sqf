
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Don't delete the enemies way off near the NE edge of the terrain, they are used for spawn generation.
<br/><br/>
If you do player respawns try to do them in at least fireteam-sized waves and make them cross the no-mans lands to catch up to the platoon. For immersion have these respawns consider themselves as new elements when sensible. This is a pretty short mission whatever happens so they may not be required either way.
<br/><br/>
There's no QRF or anything, mission ends once players have reached the top of the fortress and cleared out the enemy contact.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];