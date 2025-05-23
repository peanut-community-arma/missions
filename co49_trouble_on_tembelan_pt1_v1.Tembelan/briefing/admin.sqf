
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + 
"The mission is considered complete when players have cleared the <marker name='marker_town'>town of Bagain</marker> and <marker name='marker_base'>Besar Airbase</marker> of enemies.
<br/><br/>
If you need to do a respawn, ideally do it when players have secured the <marker name='marker_ammo'>ammo box</marker> since it has an ace arsenal for players to grab magazines for their guns.
<br/><br/>
If more contact is needed you can spawn them in with OPFOR -> CSAT -> Infantry -> Rifle Squad.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];