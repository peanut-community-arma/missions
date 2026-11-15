
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
The mission is complete when the players have captured Budetice and are not in immediate peril. The mission expects the players to capture both Dobrsin and Cepice before moving on to Budetice. Dobrsin and Cepice can be tackled in either order, or simultaneously if they're brave.
<br/><br/>
The ZU truck spawning west of Budetice will indicate that the 'Seized by` trigger has been activated. The last scripted spawn is 7 minutes after that, a T-72 southwest of Budetice. That can be considered the end of the counterattack.
<br/><br/>
Template units have been placed next to the castle in Rabi to the east. They are sim-disabled.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
