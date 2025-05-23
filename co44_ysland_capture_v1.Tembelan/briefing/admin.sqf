
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "The mission is considered complete when players have cleared the <marker name='marker_ysland'>island</marker> of enemies and found the intel located <marker name='marker_intel1'>here</marker> and <marker name='marker_intel2'>here</marker>.
<br/><br/>
If more contact is needed you can spawn OPFOR -> CSAT -> Infantry -> Rifle Squad. Enemy SF can be spawned using OPFOR -> CSAT -> Guard Infantry -> Guard Squad.
<br/><br/>
Estimated run time is one hour.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];