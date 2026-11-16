
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
There are invisible, sim-disabled helicopters near the submarine. DON'T TOUCH THEM
<br/><br/>
AI on the submarine *will die* so keep an eye out for disconnects pre-mission.
<br/><br/><br/>
The targets are the two ZU-23s near the airfield and the two Spike launchers to the northwest and southeast. The Greenfor units will be destroyed by scripted missiles. If any somehow survive, please destroy them manually.
<br/><br/>
The players will be given a 5 minute warning as they approach either of the Spike launchers or the southwest-most ZU-23 (the big southwest oval trigger). Three AI Ghost Hawks will fly over the AO at the end of that 5 minutes.
<br/>
The '20-30 minutes' mentioned in the briefing is just to communicate urgency. There is no overall time pressure, just the 5 minutes once they are close to the end.
<br/><br/>
The mission ends when the players have broken contact and are on their way back to the boats. Two Warriors will spawn between the players and the coast a few minutes after destroying all the targets. These should be destroyed or fully avoided before ending the mission.
<br/><br/>
The mission is successful if all three Ghost Hawks make it across the AO.
<br/><br/>
Enemy templates are in the settlement along the road southwest out of the valley. They are sim-disabled.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
