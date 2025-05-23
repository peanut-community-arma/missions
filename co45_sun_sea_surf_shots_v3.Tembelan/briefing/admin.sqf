
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "MISSION ENDS WHEN PLAYERS COMPLETE ONE LAP AROUND THE GO-KART COURSE. The karts (and uniform box) are damage-disabled and hopefully won't explode. If the karts do explode, I will also accept one lap from any other vehicle. Respawns whenever, this is a silly one. QRF lasts ~10 minutes, when the northern M113s show up that's more or less the last wave.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];