
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + 
"The mission is considered complete when the truck full of bananas makes it to the <marker name='marker_jilavur'>small military base</marker> with the INDFOR guards and one BLUFOR troop.
<br/><br/>
The truck of bananas should be invincible, but don't let the players know so they can have fun defending it.
<br/><br/>
The cousin should be invincible and have pathing disabled. When players get close enough a message is sent in side chat.
<br/><br/>
If the cousin dies somehow, perhaps of a morphine overdose after players reach the delivery point, INDFOR becomes hostile to BLUFOR and more spawn in the base after one minute. A hint should show up when the cousin dies.
<br/><br/>
Respawns are up to admin discretion.
<br/><br/>
If more contact is needed you can spawn them in with OPFOR -> CSAT -> Infantry -> Rifle Squad.
<br/><br/>
The mission is expected to go for about 1 hour 45 minutes.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];