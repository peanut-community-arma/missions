
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + 
"
The mission is complete when players have killed most enemies and secured as many hostages as they can.
<br/><br/>
The mission is expected to take a bit over 1 hour after briefing.
<br/><br/>
Respawns are at admin's discretion.
<br/><br/>
All the enemy Offroad (AT)/(HMG) spawn in as red so you can maybe change the colours in zeus if you want.
<br/><br/>
If more contact is needed there is a group at the <marker name='marker_zeus'>airport</marker> that can be deep copy and pasted (LCTRL + LSHIFT + C / LCTRL + LSHIFT + V are the default keybindings).
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];