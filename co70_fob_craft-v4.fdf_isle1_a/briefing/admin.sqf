
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + 
"Mission end is recommended for after the mechanized attack (3 BMD-2 with infantry attachment) is completed. 
Admin may RP as an inspecting officer to make sure that the area is cleared of UXO and that all necessary buildings are placed.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];