
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "DO NOT AUTHORIZE RESPAWN WAVES UNLESS ABSOLUTELY NEEDED.
<br/>
Mission is considered a success if both radar trailers have been destroyed, the CSAT officer in the north is killed, and all alive players have extracted to the town of Somato.
<br/>
Mission is a Failure if the platoon is fully wiped out, even if they complete the objectives above.
<br/><br/>
Note EI Guard WP number triggers. These are the possible locations of the radars as the spawn is randomized upon players crossing the first trigger out of spawn.
<br/>
1 hour time-limit is scripted! The CSAT Stalker IFVs will spawn on a variable timelimit, 50 minutes to 1 hour after hitting the first trigger, and push into town to eradicate the players. (See copy paste group for vehicle in question)
<br/><br/>
Copy Paste group of EI is available to the north of the AO in Corazol.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];