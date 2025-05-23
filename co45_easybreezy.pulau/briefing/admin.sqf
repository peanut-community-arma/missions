
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
The enemy vehicles seem to have no clue what to do. They'll most likely need to be RCed.
<br/><br/>
The civilians are path-disabled, so they shouldn't do anything stupid. There are 9 civilians. We can call it a win if they get more than half out alive, but they should try to get all of them.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
