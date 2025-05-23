
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "MAA required for this op. 
The platoon will face increasingly deadly reinforcement assets starting about 40 minutes after approaching the first objective. They should be able to handle most of these, especially early, but speed should be a priority. 
The mission is considered over once platoon crosses friendly lines marked by blue the blue rectangles, which should be out of enemy reinforcement hunt range. If the platoon has destroyed 3 objectives, the mission is a success. 
The mission is expected to last about 45-90 minutes, not including briefing.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];