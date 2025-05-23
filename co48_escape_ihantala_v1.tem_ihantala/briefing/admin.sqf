
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "HAVE PLAYERS ANNOUNCE IN CHAT WHEN THEY ARE READY AT MISSION START! Use trigger in the top right hand corner of the terrain to have the mission be 'Live'.
<br/><br/>
Mission ends once all players have either died or extracted from the terrain via boat. Mission should take an hour to an hour n a half long.
<br/><br/>
AI Killteams can be spawned in via AAF Fireteam and Rifle Squad groups if needed. Additional zombies can be spawned at admin discretion via fp zombie module in Zeus.
<br/><br/>
Players who have escaped and are in spectate can choose to respawn via the Geared Survivor TMF role if they want to help anyone stuck, or if they extracted very early into the mission.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];