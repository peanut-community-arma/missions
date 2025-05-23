
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
The mission is considered complete once the platoon clears both main objectives (Sitnik and the power plant) and their respective auxillary objectives (the industrial site and the village), as well as defeats 
the final reinforcements that are triggered upon approach of the final two objectives. If platoon is destroyed or retreats across friendly lines after being attrited, the mission is failed. 
The mission is expected to last about 60-90 minutes, not including briefing.";
player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];