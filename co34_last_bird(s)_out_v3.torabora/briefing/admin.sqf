
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Mission is complete when a majority of surviving players exit the AO via helicopter, ideally the helicopters shouldn't be destroyed, admin may need to hit them with some repairs if things get dire, just to ensure things move along.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];