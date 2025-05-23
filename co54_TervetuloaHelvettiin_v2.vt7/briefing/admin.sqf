
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Finnish units can be placed with Chernarussian Movement of the Red Star units.<br/><br/>
Their AI and LAMBs should be disabled, but if the four artillery pieces that start spawned up north start shooting at players without warning, delete them.<br/><br/>
The mission ends once the main Klamila barracks are secured and the two T-72s are knocked out.<br/><br/>
If the other main avenue of approach has their triggers activate, feel free to delete the spawns to keep performance good.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];