
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Mission ends when players are dead or have successfully escaped back to the insert point/scattered into the woods. The intel laptops disappear when players execute the hold action attached to them - this is intended and counts as 'seizing the laptop'. Players may extract without all 4 laptops for a partial success. Getting no laptops counts as failure.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];