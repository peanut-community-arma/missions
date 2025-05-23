
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "If HAT is present feel free to throw some NATO tanks in at the end. Enemy numbers are for 21-30 players, extra may be added for higher playercounts. 
<br/>
<br/>
Mission is over when all the vehicles are destroyed, There can be enemy stragglers left behind.
<br/>
<br/>
Estimated time (1:00 - 1:20 hrs) with briefing.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];