
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "The initial defense of the farm should last about 10 minutes from first contact, maybe less. 
Likewise, the airfield will see some token reinforcements arrive in the 5-15 minutes following the platoon's assault. Clearing the airfield and defeating the reinforcements is the victory condition.
Feel free to respawn any players killed during the farm defense. The mission is expected to run 1.5-2 hours and the players will face lots of contact, especially at the beginning and end of the mission.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];