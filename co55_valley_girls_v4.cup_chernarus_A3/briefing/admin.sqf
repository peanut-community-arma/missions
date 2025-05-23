
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Designed for low (23-26) playercounts - additional enemy spawns kick in if there are more than 26 players slotted at mission start (inc. AI). If players linger in Lumberyard (4-7m) they will trigger a small airborne reinforcement. Helo pilots should get respawns until there are no helicopters left. You can give them Littlebirds Of Shame if they run out of all helos.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];