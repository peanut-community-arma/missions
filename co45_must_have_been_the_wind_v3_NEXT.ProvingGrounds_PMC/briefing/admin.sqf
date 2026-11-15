
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
- Mission time multiplier is set at 0.6.
<br/>
<br/>
- Mission should complete once Blufor crosses the blue line on the East of the map, anything else just hit 'em with the lightning.";
player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];