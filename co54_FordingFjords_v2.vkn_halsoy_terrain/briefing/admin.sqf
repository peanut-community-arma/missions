
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Make sure respawns spawn on the boat first so as they can equip gas masks (or the v. northern tip of the island where the lone BLUFOR is), so as to equip gas mask, and then to bring them to the fight. As a note, I have not as of mission upload played any of the new missions wrt the AI's significant increase in deathrate, so feel free to delete units as needed because of this.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];