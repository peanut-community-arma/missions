
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "The initial convoy can get a little stuck, a minor movement of the stuck vehicle should get the convoy going. It should take the convoy about 3m to reach Musakhan after players touch off its trigger; with the trigger countdown that should give players 4-5m to prepare.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];