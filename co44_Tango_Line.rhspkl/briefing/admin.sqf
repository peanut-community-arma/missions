
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Their is no automatic mission ending system. The mission should end in BLUFOR victory if they manage to secure the bridge and take Hill 240. Mission ends in failure if BLUFOR don't get across the bridge after a hour or if reduced beneath 5 active members.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];