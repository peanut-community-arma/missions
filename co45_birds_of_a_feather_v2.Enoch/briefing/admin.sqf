
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Hihihi. No auto ending or anything the platoon has to evac so feel free to end it when they're all out or dead. Post obj 3 let em do some driving out and feel free to lightning bolt people if they're taking too long, there's lightning bolts and electric anomalies present then to spice up the exfil.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];