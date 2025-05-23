
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "The mission should end if the players clear all three objectives and either defeat the QRF or extract to the south, around where they spawned.
The QRF consists of four squads, two fireteams, and four vehicles. If they are defeated and the players hold the base, the mission ends. The players could avoid the checkpoint and even a few patrols and still win.
Runtime is expected to be about an hour from mission start, so an hour and 15 minutes or so including briefing. The final wave should take about 10 minutes to defeat and spawns mostly all at once.
Respawns shouldn't be necessary, but if they are, they should take place after the first two objectives are destroyed.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];