
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
The mission ends when the players are back on the helicopters and on the way out of the AO.
<br/><br/>
The mission is successful if both of the hostages are recovered alive, and a partial success if one or both of the hostages are recovered dead.
<br/><br/>
There are no actual AA threats outside of the recommended flight area. The greenfor units are radar and missile launchers with no ammo that will lock onto the helicopters, but won't attack.
<br/><br/>
When the players approach the coast, a bunch of stuff will spawn to visually replicate the end state of Trailblazers. This will all automatically get deleted 1 minute later.
<br/><br/>
Enemy templates are in the Galati to the east. They are sim-disabled.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
