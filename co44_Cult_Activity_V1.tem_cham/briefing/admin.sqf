
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Add more contact if you feel it's needed. Ending condition is all caches found and all contact neutralized, end early if it's dragging on and people just can't find the last thing";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];