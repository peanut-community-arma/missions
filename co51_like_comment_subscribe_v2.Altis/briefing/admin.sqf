
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "VERY light on EI (to allow for stupid roleplay). Add more OPFOR > FIA if people need shit to shoot. Can also place down INDFOR > AAF, but they won't become hostile until the long diagonal trigger north of Abdera. 
<br/><br/>
Sim-disabled units are <marker name='mk_units'>here</marker> far east of the beach area for copy paste.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];