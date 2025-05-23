
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "The mission is expected to take one hour once players have finished briefing.
<br/><br/>
If a player starts with a DLC gun they don't own the DLC for then they are allowed a loadout refresh until they get a non DLC gun.
<br/><br/>
The mission is considered complete when all surviving players have escaped the island via plane.
<br/><br/>
If more contact is needed you can spawn in OPFOR with CSAT -> Infantry -> Rifle Squad.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];