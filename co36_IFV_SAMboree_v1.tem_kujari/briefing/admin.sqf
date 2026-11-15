
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + 
"
Mission is considered complete when the towns <marker name='marker_BiriBoula'>Biri Boula</marker>, <marker name='marker_Bora'>Bora</marker>, <marker name='marker_Kaoya'>Kaoya</marker>, and <marker name='marker_Souri'>Kawiya Boukar Souri</marker> are cleared of enemies, including all ZSU-35 Tigris, Zu-23-2s, Mini-Spike Launcher (AA)s, R-750 Cronus Radar, and S-400s.
<br/>
Respawns are recommended after each of the first two towns are cleared. This includes any destroyed player IFVs. One is provided at spawn that can be deep copy and pasted (LCTRL + LSHIFT + C / LCTRL + LSHIFT + V are the default keybindings) to keep the custom loadout I gave them.
<br/>
The town of Bora has empty logistics vehicles that players are encouraged to use to rearm/repair/refuel their IFVs. Avoid zeus healing the vehicles unless it's something wacky like the commander sight being unrepairable if that is still a problem in our modset.
<br/>
There are extra enemy groups and vehicles that can also be deep copy and pasted over <marker name='marker_zeus'>here</marker> if additional contact is needed.
<br/>
The mission is expected to take 1 hour 30 minutes after briefing.
";;

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];