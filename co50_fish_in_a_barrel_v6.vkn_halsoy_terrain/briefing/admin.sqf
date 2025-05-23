
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + 
"
Note that watercraft have a bit of an issue navigating at times, Admin intervention may be required for the objective to move into range of the players. <br/>
Admins may intevene if the ship is too good at messing up the players.
<br/><br/>
Mission ends after the destruction of the target ship and players are able to disengage from the REDFOR contacts.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];