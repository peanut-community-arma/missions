
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
<br/>
The mission is complete when the players have eliminated a majority of the enemies and are not in immediate peril. At that point, the enemy will be considered scattered or depleted.
<br/><br/>
Many of the AI are set to combat mode White - only attack if directly threatened, so the players may need to hunt more proactively than people are used to.
<br/>
Template units have been placed at the town to the northeast.
<br/><br/>
The friendly AI have most of their actual AI disabled, so they won't participate in combat.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
