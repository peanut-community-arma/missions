
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "I don't think respawn waves will be necessarily this mission unless some kind of disaster on landing occurs.
<br/><br/>
The two AH-1Zs will fire after twenty minutes of a countdown once two of the ASM sites are destroyed, and will hunt them down if they are still on the island.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];