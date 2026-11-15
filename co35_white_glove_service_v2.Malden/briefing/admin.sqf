
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "To mix things up, you can put down an ammo truck to allow pilots to swap out their pylons for this mission (good for replays). 'Normal' CSAT Kasatkas seat fewer people (6pax) versus these 'ION PMC' ones. If the executive transport is destroyed or incapable of flight, or if any VIP is killed, the mission is a failure. Sim-disabled enemy units are at the southeast military base (on the island) for deep-copy.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
