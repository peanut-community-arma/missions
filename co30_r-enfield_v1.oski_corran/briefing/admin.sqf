
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + 
"
- <marker name='palette_opfor'>OPFOR Palette</marker><br/>
- <marker name='palette_indfor'>INDFOR Palette</marker><br/><br/>

Location Notes:<br/>
- Contact overall is intended to be light with difficulty coming from crazies intermixing with the regular shooters.<br/>
- If additional contact is required spawning crazies from <marker name='notes_zeus_forest'>the forest</marker><br/> is recommended.<br/>
- The <marker name='police_direction'>police response</marker> is triggered on players entering <marker name='notes_zeus_bunker'>the bunker</marker><br/> with a delay of about 5 minutes.<br/>

";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];