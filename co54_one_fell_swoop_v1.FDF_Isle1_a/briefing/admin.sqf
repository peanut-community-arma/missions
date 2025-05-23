
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Final wave spawns 50-60 min after mission starts (first trigger activated). To activate the bridge assault early, manually activate the no-area trigger to the right of the bridge. Check TMF log; there should be a message reflecting whether or not MAT is slotted, which affects spawns.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];