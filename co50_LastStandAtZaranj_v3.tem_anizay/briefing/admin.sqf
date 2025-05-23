
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
<font size='18'>RESPAWNS</font>
<br/>
Anyone who dies early should be allowed to spawn in. Unlike last time, I intend for this to be actually somewhat winnable.
<br/><br/>
<font size='18'>MISSION END</font>
<br/>
On triggering wave 3, players should recieve a side chat message announcing the incoming rescue vics. 3 BMP-2s (CUP CSAT models) will spawn in and move to the east of Zaranj, and their drivers should automatically delete on reaching the waypoint. Players should then get in and extract to the east. It is a convoy so it is 50% likely to break.
<br/>
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];