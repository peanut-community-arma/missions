
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
The mission does not have a logi element included, but an admin is welcome to ad-hoc one if they feel it's necessary.  The mission is expected to last about 75-120 minutes, not including 
briefing.The mission is considered a partial success if the company clears Huta and Drewniki then takes and holds Nadbor against the final wave of reinforcements that is triggered half way 
through clearing Nadbor. The mission is considered a complete success if the company also clears 3 of 5 auxillary objectives, including 2 outside of Nadbor. If platoon takes but cannot hold 
Nadbor and retreats then the mission is a draw. If platoon does not clear Nadbor and/or is annihilated, the mission is failed.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];