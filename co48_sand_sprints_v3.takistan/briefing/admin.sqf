
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
The mission begins once the patrol element exits the depot and activates the starting trigger. At this point, personal arsenal turns off the and the data upload trigger can be activated. The 
enemy spawn frequency and location changes over time once the starting trigger is activated by the patrol element exiting the depot; enemy forces will spawn further west and more frequently as 
time goes by, up to 45 minutes after the starting trigger is activated. At this point the enemy spawns will plateau and IFVs will begin to spawn. The mission is considered complete if the 
platoon holds the FOB for the data upload and then retreats to either Rasman while not in contact or to the military base at which point the enemy should break off. If the platoon retreats 
successfully but does not wait for the upload to complete, it is a draw; if they are annihilated after the upload completes, it is a partial success. The mission is expected to last about 40-75 
minutes.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];