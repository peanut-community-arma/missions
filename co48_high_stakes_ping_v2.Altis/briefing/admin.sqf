
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Please don't delete the random sim-disabled OPFOR to the far northeast, he's needed for the explosive antenna nonsense. Most engineer-specific tasks are dependent on the Engineer trait + having a defusal kit and mine detector, Zeus them in if necessary. Sim-disabled units are on the map in case we need to spice things up. Once you see the C130 airdrop we're pretty much done.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];