
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Runtime: chunky (90-120m+). Enemy vehicles are known to have pathing issues, but that's ok. Littlebirds on final objective might not fire, and that's OK too, they're very distracting. Respawns at admin discretion. Mission can be aborted as partial success/failure by leaving after at least once site is activated. If the Karatel dies, mission ends (players must retreat) - that specific Karatel MUST be used to trigger each zone. It has an event handler set on it to reduce incoming damage.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];