
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Mission ends when players reach town and have successfully defended the British assault on the town. The defense section at the end is brief but intense. Enemy spawns will end about 6 or 7 minutes after players enter the town for the first time.
<br/><br/>
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];