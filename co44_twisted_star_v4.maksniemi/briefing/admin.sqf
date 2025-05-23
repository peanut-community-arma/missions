
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Players much reach the extract point for a retreat to be considered successful. Mission ends by player death or all living players succesfully reaching extract, the sandbags marked on the map and containing a US flag.
<br/><br/>
The way I have the paratroopers set up means a handful of enemy troops will be left on the ground when the helos take off from the starting point. Feel free to delete these.
<br/><br/>
If too much contact is active and performance takes an impact, take a look at deleting or moving up EI that will obviously never catch up to players, ground vics stuck in the woods, etc.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];