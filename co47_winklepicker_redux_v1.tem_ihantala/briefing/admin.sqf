
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "A handful of force-prone EI are spawned at start. Sim-disabled units are south of the playable area for deep copy (squad, 3 person crew, vehicle templates). Non-extensive QRF waves - if the players manage to clear out both objs with at least 50% of the platoon alive, call it a win.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
