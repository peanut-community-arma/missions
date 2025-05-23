
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Either the platoon beats this inside of 30 minutes or everyone dies under 60m. I don't think there's an in between. I sure as hell didn't make enemy waves that spawn past 45m of activating the trigger on top of the supply zone. Players are explicitely told they can run back to spawn to stock up. This is fine and good and will likely get large swathes of the Plt murdered. In case of fuckery, Zeus can spawn additional Cargo Net (Box) and vehicles for the players to use.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];