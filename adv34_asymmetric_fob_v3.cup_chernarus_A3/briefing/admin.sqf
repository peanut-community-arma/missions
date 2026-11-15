
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "There should be multiple automatic ending systems operating, all blufor dies/timelimit/intel collection, I did not create an automatic ending for all of redfor dying.<br/>Ace armour values should be at [1,7.5,0].";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];