
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Mission ends when either all players are dead, all surviving players have retreated to safety, or when players have successfully held off the three major waves of the QRF. The last spawns are triggered about 24 minutes after players initially approach the town objective - admin may trigger QRF spawns early if there is no other active contact and players have had nothing to do for several minutes (i.e. fully caught up on medical and positioning needs)";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];