
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "There is a radio box to the right of PltCo's spawn just in case. Respawns at admin discretion, QRF spawns once players reach the center of the town (delay of up to 60s). Whole QRF should be done spawning approx. 3m after the trigger activates.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];