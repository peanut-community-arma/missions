
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "There are sim-disabled units near Summa for deep-copy, but note that most wavespawners have multiple waves. FAILURE CONDITIONS: Truck irretrievably exploded, everyone dies like 3x over. FIXES: Spawn them any Ural (CDF best), all of them come with the Rope item in the inventory already so you don't have to do anything. Mercy-end the mission if people get the tank to the western woodline. There are sim-disabled units near Summa for deep-copy.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
