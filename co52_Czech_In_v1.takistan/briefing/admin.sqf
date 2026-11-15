
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Put down an intel item in garmsar that points the players to go stop an ambush in another town. It has been left open to allow for zeus customization. First assault on Garmsar should take ~50 min";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];