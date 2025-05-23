
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + 

"Mission should end upon completion of the enemy counterattack (consisting of the tanks and the like).
<br/>
<br/>
The way the ambush is designed is meant to occur with them getting fired upon as they close towards the demount point. The independents walking is meant to add a bit of 'immersion' on the mission, and can be deleted after being passed by (as I am unaware of how to delete them via script).
<br/>
<br/>
Do not get rid of either of the two radars off the map.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];