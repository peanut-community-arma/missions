
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "The mission can be shortened by adding cruise missile ammo to the Mk41, allowing players to call in the strike without needing to destroy the EW suite. Respawns at admin discretion. Mission is complete after both tasks are successful.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];