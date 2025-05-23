
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.
*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "This is my first mission, fingers crossed there's no bugs. :)<br/>Mission ends once all 4 supply crates from the quarry have been delivered to 'Mr. Mc Moneybags' mansion, there's a big ol circle decal that marks the area.<br/>Intended Difficulty: Moderate to Somewhat Intense";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];