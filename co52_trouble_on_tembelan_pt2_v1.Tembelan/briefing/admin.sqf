
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + 
"
The mission is considered complete when players clear <marker name='marker_island'>this island</marker> of enemies. The mission is expected to take an hour and a half.
<br/><br/>
There are extra vehicles <marker name='marker_extra'>here</marker> if needed.
<br/><br/>
If more contact is needed you can spawn them in with OPFOR -> CSAT -> Infantry -> Rifle Squad.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];