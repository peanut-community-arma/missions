
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + 
"
The mission is complete when players have returned both <marker name='marker_obj'>CH-53s</marker> to the <marker name='marker_end'>ships</marker>.
<br/><br/>
The mission is expected to take one hour after briefing.
<br/><br/>
Respawns are at admin's discretion. 
<br/><br/>
The west helo has no fuel but there is a convenient fuel truck nearby that players can use to fuel it up and leave.
<br/><br/>
When players are escaping with the objective helos, you can RC some <marker name='marker_helos'>enemy helos</marker> with some infantry shooting from the sides and chase the players to make it more exciting.
<br/><br/>
If more contact is needed there groups at the <marker name='marker_zeus'>salt flats</marker> that can be deep copy and pasted (LCTRL + LSHIFT + C / LCTRL + LSHIFT + V are the default keybindings).
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];