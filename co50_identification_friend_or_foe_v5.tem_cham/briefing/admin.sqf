
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "USCF forces can be placed using ION PMC units.<br/>For vehicles, the USA Army - W .. APCS .. M1132 (M2) and/or M1134 without crew, NATO .. APCs .. Rooikat, and ION jeeps.<br/>After the HQ is captured there's two spawns, a Rooikat group to the north and a motorized group east. Those are the last contacts on the mission.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];