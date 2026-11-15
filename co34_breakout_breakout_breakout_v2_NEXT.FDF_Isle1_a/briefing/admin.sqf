
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Once all or majority of the POW's are released feel free to end mission, ammo box available for zeus to resupply platoon.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];