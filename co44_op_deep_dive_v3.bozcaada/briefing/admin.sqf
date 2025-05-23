
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.
*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Intended Difficulty: Moderate to Somewhat Intense.<br/>End Condition: Mission ends once all 4 supply crates from the quarry have been delivered to 'Mr. Mc Moneybags' mansion and the follow up QRF response has been dealt with, there's a big ol circle decal that marks the delivery area.<br/>Triggers: Quarry has a QRF trigger that is delayed by roughly 7~ minutes, intended to give the players some breathing room before the storm hits.<br/>Vehicles: The trucks DO have enough horse power to make it out of the inner spiral, abliet just BARELY enough. Noting this here to ensure folks don't panic or assume they can't get out.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];