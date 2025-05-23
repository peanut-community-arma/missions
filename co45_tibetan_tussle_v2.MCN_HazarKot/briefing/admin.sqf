
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
Template formations can be found in the north-west corner of the map, away from the AO. Also, only FTLs and above should have radios. <br/>
If the platoon is heavily attrited after taking Ghorband, they may be reinforced with respawns or the mission can be called as a draw if the time is running long. If the platoon fails to take 
Ghorband or is wiped out entirely, the mission is failed. Otherwise, the mission is completed once the platoon takes Daraz Gerd and fights off the enemy reinforcements, which will spawn 1-2 
minutes after the platoon appraoches Daraz Gerd and will take another couple of minutes to arrive. <br/>
Note that if the platoon takes the northern approach to Ghorband and has not cleared the southern approach, they will be attacked from the south and west by an 'ambush', which is really just a 
moderate flanking force. The ambush trigger will fire 5-10 minutes after BLUFOR enters it and will only fire if the southern trigger has not been entered. This shouldn't require any additional 
work on the part of the admins. <br/>
Expect the mission to run for about 45 minutes to an hour and 15 minutes, not including briefing.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];