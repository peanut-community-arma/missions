
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
Mission ends when players have captured all three cities, grabbed the laptop hidden in all three cities, and repelled the surprise QRF force at Mian (several troop transports and a couple heavy IFV).
<br/><br/>
If players become overwhelmed and retreat, the mission can be called once they make it a safe distance from enemies in any direction.
<br/><br/>
Players will 'seize' the intel laptops via a hold action on the object. There is no indicator that the laptop has been picked up (besides it disappearing upon completion of the hold action) so this must be communicated up the chain of command by players.
<br/><br/>
Players may not fully clear each town - feel free to delete any contact left behind once players depart from the area for performance reasons.
<br/><br/>
I'm aware that many vehicle optics are not repairable with toolkits; players may request an admin fix for this, which I am fine with.
<br/><br/>
Feel free to respawn the BMP-3s and/or crew if one of them happen to die unfortunately in the 1st or even 2nd objective area.
 ";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];