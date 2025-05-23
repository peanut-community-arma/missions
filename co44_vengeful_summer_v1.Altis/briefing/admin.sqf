
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Mission ends upon both underground bunkers having been cleared, players successfully leaving said bunkers, and secured the immediate area.
<br/>
The Bunkers themselves are located on the airport in the center of Altis and in the upper north-west corner of Altis by the castle of Oreokastro. Teleporters via manhole covers are how players will move from the AO to these locations.
<br/>
Contact is light, but can be beefed up as needed. EI Group template is to the south across Zaros bay. Units are Independant Looters.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];