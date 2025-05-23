
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
The enemy are not supposed to use the vehicles inside the base. All of the pre-placed units should be unable to enter the vehicles. But who knows. The target vehicles all have damage handlers to halve incoming damage.
<br/><br/>
The rebel units are Chernarussian Movement of the Red Star, but converted to blufor. A template squad and technical are stashed in the <marker name='marker_castle'>castle</marker> if you need it.
<br/><br/>
The two little birds at the airfield are sim disabled and will be enabled by a trigger. (Bypassing wave spawner) They'll be following specific loiter patterns which will be broken if you issue them any commands.
<br/><br/>
Mission succeeds once the platoon reaches a rebel-controlled city or has gotten beyond the blue boundaries and broken contact.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
