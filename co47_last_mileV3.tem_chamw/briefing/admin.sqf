
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + 
"
Mission is intended to be a simple 'deliver object' scenario. 
Primary concerns would be if there isn't enough contact, in which case feel free to copy a group placed in the out of bounds area south of the covermap. 
AT is intended to be sparse as there isn't a lot of armor. 
The main challenge is intended to be low visiblility due to night+blizzard conditions and small inventories for the players.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];