
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Mission ends when the HVT has been killed and the laptop next to them has been delivered to the camp at player spawn.
<br/><br/>
The HVT is the leader of a specially named group and exempted from body cleanup so admin can see for sure if HVT is kill. They are listed as Officer.
<br/><br/>
If more contact is needed you can spawn OPFOR -> CSAT -> Infantry -> Rifle Squad.
<br/><br/>
Mission should take around an hour.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];