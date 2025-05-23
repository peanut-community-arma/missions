
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "For debug purposes, admins should get a log message whenever a player hops in the gunner seat of an MRL and when an artillery strike is incoming. Sim-disabled EI templates are by the salt plain airfield.<br/><br/>
RESPAWN GUIDELINES: only respawn up until the Platoon hits the minimum 3 targets, after that no more spawns as they run away.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];