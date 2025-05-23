
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
<br/>
This is intended to be a heroic and desperate fight to the death. Everyone will die and the goal is for their deaths to be cinematic. The mission will be successful regardless.
<br/>
<br/>
There are 5 discrete waves, after which a variety of enemies will continue to spawn forever. The next wave is triggered when the players have eliminated enough of the current wave to 'capture' the area.
<br/>
At the start of each wave, artillery will fire a smokescreen and a barrage at the town. The artillery aims to miss the players. Players may still be hurt if they are moving a lot while the barrage is happening.
<br/>
After the final wave, the artillery will fire every 4-6 minutes forever.
<br/>
<br/>
HE-FRAG has been removed from all pre-placed BMP and T-55. They only have HEAT.
<br/>
Template units have been placed at the map edge to the north.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
