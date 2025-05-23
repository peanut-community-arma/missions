
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
Destroying all of the Shilkas is a mission success, and the mission is complete once the players have broken contact.
<br/>
    Destroying the ammo caches in the town is just for flavor.
<br/><br/>
If the players are detected by the AI, they have 1 minute to kill all the witnesses, after which the 'enemy is alerted' and reinforcements will spawn. A message will appear for the admins when this has happened. This will happen at some point; it's just a matter of how soon.
<br/>
Note that player-caused explosions can alert distant enemies and killing the witnesses will be pretty much impossible. Oh well. It's a stealth mission!
<br/><br/>
Enemy reinforcements will escalate as more Shilkas are destroyed, with things getting pretty dire after 5 and 6.
<br/>
Reinforcements will be mostly from the north, but the enemy could reasonably come from any direction.
<br/><br/>
FYI The players have been made a little stealthier by setting their sound and camouflage coefficients to 0.8 instead of 1.0.
<br/><br/>
There is color correction to increase brightness and contrast. Hopefully help visibility with no lights.
<br/>
Once fighting starts, the enemy will be periodically shooting illumination flares. The players do not have their own illumination flares - that is intentional.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
