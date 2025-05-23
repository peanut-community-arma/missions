
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "32-40 players. Plt HQ should crew their own command Bradley. For the love of god, don't actually slot Charlie, I don't think the marked AO supports that many players. <br/><br/>
RESPAWNS: when there's more than 6 dead people, spawn them in as a relief Bradley, assuming a Bradley has exploded by then; otherwise get 'em in an M113 and let them drive in for the rescue. <marker name='mk_respawn'>Respawn vehicles are here.</marker>";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];