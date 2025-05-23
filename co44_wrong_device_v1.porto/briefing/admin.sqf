
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + 
"The mission should take less than 45 minutes.
<br/><br/>
The mission is considered complete when players destroy the 'Device (Assembled)' that spawns randomly in the town, and at least one player extracts via boat to the south.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];