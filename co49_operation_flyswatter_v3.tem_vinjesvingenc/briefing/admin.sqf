
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "There are some loose rules for the VIP in the Administration tab, which should be visible to everyone.
<br/><br/>
If you feel the contact is too easy/hard, let me (Shears) know! Am trying to get a handle on balance for this modpack.
<br/><br/>
 There are a couple spawns that spawn lone CSAT squads on LAMBS patrol around the exterior of the AO - they should eventually come into the fight organically, but if not feel free to give them a waypoint yourself.
 <br/><br/>
 Sunrise Spring is a small pond located at the map marker. The VIP making it to that little clearing where it is is considered mission success.
 <br/><br/>
 FOR SLOT IN:
 <br/>
 -Filling the Plt rifleman slot, or at least the Plt CLS slot, is important so that someone is available to babysit the VIP
 <br/>
 -The MMG team slots aren't at all necessary, but they're a fun toy to give players and a good overflow control mechanism if Alpha, Bravo, and Plt slots fill up
 <br/>
 -There may be significant demand for the VIP role, so think about how you're going to handle choosing a person to fill the slot";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];