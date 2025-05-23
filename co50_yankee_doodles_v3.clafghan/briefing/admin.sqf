tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";

/* in this briefing page you should provide the admin with any information that will aid them doing their job.
	    - if mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
<br/>
The mission ends once the enemy is routed and the situation stabilizes. The players do not need to extract.
<br/><br/>
At a time that seems most cinematic, grab some volunteers from spectator chat to respawn and pilot some heavy air support. This is intended to be a serious 'cavalry has arrived' moment, so overkill is good. Two apaches are already placed <marker name='apaches_marker'>far to the northwest</marker>. Feel free to spice it up even more with something like an A-10.
<br/>
(Make sure the volunteers know that they won't need to land the aircraft!)
<br/><br/>
If things are going smoothly for the platoon, feel free to crank up the heat.
<br/>
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
