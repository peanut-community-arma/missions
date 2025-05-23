
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Sim-disabled units are included north past the marked area for Zeusing. Partial victory if players achieve at least 1/3 objectives; ideally the players should make some effort at egress, but it's fine so long as they fight out. 1-3 pieces of evidence and 1-3 HVTs may spawn, the trawler must always be demo'ed.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];