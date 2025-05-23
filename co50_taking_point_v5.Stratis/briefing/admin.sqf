
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Mission succeeds if platoon successfully clears the air base and eliminates the commander. The mission is a partial success if the commander is eliminated but the platoon is wiped out or retreats without clearing the airbase of remaining enemies.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];