
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
Mission can be ended if all counter attack have been repealed or the players have extracted with as much intel as they can get, feel free to tease us about all the intel we missed
<br/><br/>


";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];