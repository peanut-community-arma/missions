
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "The mission is considered complete when players have killed the HVT and collected the dog tags from the body, followed by holding the town from the counter attack. 
<br/><br/>
The HVT is in their own OPFOR group labelled '_HVT' so it should be easy to find in Zeus. The body shouldn't despawn but I don't know if we use vanilla cleanup or a custom one on the server.
<br/><br/>
If respawns are needed they should ideally occur on the first message in global chat from the Independent character. 
<br/>
Independent start friendly to BLUFOR and OPFOR but on the second message in global chat from the Independent character they should turn hostile to both. This should happen as the first UH-60 drops off infantry in the middle of the town, but if players kill it first the trigger that activates this is the big circular one on top of the town.
<br/><br/>
More contact can be spawned using vanilla units. 
<br/>
For regular OPFOR enemies use OPFOR -> CSAT -> Infantry -> Rifle Squad.
<br/>
For SF OPFOR enemies use OPFOR -> CSAT -> Guard Infantry -> Guard Squad.
<br/>
For Independent enemies use Independent -> AAF -> Infantry -> Rifle Squad.
<br/><br/>
Mission should take less than one and a half hours.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];