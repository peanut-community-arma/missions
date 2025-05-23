
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Mission ends when players have successfully seized Skippari and defeated all meaningful contact there.
<br/><br/>
It's at admin discretion as to if/how/how much to respawn the little bird pilot if one is slotted. If you need to replace a helo, I've just used the default RHS little birds. You may need to manually repair/refuel helos via Zeus as I couldn't figure out automatic repair/refuel/rearm scripting, although the players do have toolkits in the helos.
<br/><br/>
The mission may also end if players extract back to the insert or simply off the map with one of the little bird helos, assuming critical attrition.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];