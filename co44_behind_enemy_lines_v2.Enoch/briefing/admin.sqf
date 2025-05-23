
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Mission ends when players are all dead or have seized Roztoka. <br/><br/>

Sending respawns in by parachute would be fun and cute. The chance of someone dying alone in the early stages of the mission is higher than usual so you may want to keep an eye out.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];