
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "The mission can be considered complete when players have destroyed the vehicle depot (the green repair depot, vehicle ammo box, and fuel truck) in <marker name='marker_town'>Mandalari</marker> and also secured the weapon caches in the two nearby green miltary buildings. 'Secured' means that players have found both caches and there aren't many enemies left alive in the town. If the caches are destroyed but also the depot then that's a half mission complete or something.
<br/><br/>
When players have secured the <marker name='marker_checkpoint'>river checkpoint</marker> dead players can be respawned thereas the reinforcements. There are extra vehicles <marker name='marker_spare'>here</marker> in case any were destroyed beforehand.
<br/><br/>
If more contact is needed you can spawn OPFOR -> CSAT -> Infantry -> Rifle Squad. Enemy SF that should only appear at the end of the mission can be spawned using OPFOR -> CSAT -> Guard Infantry -> Guard Squad.
<br/><br/>
Estimated run time is 1 and a half hours.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];