
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + 
"There should be probably one respawn wave (Around the capture of the town if need be), if a tank is beyond recovery the crew can have a new tank back at the spawn and has to drive up.
<br/>
<br/>
Once the ZSU is destroyed a bombing strike will happen over the players heads to signal the end of the mission.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];