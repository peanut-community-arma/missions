
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
<br/>
The players are instructed to extract the assets. Once the cargo is loaded and the players are on the move, the mission ends at the admin's discretion. You can make them fight back out of the city or just let the contact die down.
<br/>
• Note that the pallet of crates on the roof can be ignored.
<br/><br/>
If the Bradley is destroyed before reaching the bridge, go ahead and deploy the second one as reinforcements. (If running one Sierra)
<br/>
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
