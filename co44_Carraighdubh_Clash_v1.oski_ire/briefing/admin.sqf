
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Mission ends when players have taken all 3 objectives and  successfully held them against the NAPA reinforcements. Alternatively, if players choose to retreat instead, they can do so by returning to spawn. Use your best judgement here on when exactly to call it, the briefing says they should use the HEMTTs to drive off the map West but this may be unnecessary.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];