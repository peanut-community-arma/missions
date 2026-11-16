
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
Two areas of major note for Adminning/Zeusing the mission. <br/>
<marker name='extra_spawns'>OPFOR Palette</marker> is available at the makeshift runway in the North-East corner of the map. 
The <marker name='warning'>centeral plateau on the map</marker> was not somewhere I could easily place spawns without 
have some overlap with the other encounters. 
If the players opt to drive across the dunes Zeus will need to spawn additional contact to make things intersting. 
A minimal garrison force has been placed in the dunes to buy time, but an intersting mission in the area might 
need Admin intervention. <br/><br/>
Mission is completed once the players have returned to base and 
<marker name='comms'>Comms Charlie</marker> has been interacted with.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];