
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Some additional enemies are spawned if playercount is over 26 at mission start. Mortars are set up to only fire in areas with no players, but if they wander in when the shells are in the air, RIP. Respawn at admin discretion. Might be a CQB slog. Players are encouraged to use frag rockets and grenades.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];