
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
<br/>
The mission is complete once the 6 camps are cleared, including the nuclear material at the two major camps. The nuclear material just needs to be identified. No extraction needed.
<br/>
The two major camps are <marker name='marker_obj1'>here</marker> and <marker name='marker_obj2'>here</marker>.
<br/><br/>
The boats have damage handlers to reduce incoming damage to 75%.
<br/>
The boats will probably run out of visible contact while the players are inland, so spawning extra contact for them should be good.
<br/>
If the boats need resupply, you can have them go back to the harbor and refill the ammo from Zeus.
<br/><br/>
Extra EI and an enemy boat are stashed <marker name='marker_ai'>to the northwest</marker> to be copied. The EI is sim disabled.
<br/>
The AI boats might need some RC help to get through the shallow water. They like to go really slow.
<br/>
If you RC one of the AI in a tree stand: Don't move, only turn! It's very easy to slip off and die.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
