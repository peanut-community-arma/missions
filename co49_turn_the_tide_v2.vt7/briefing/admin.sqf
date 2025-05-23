
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Don't delete the EI that are active way off to the NE at the start, doing so will break spawns in the middle of the mission. They spawn infinitely until players reach certain triggers. Try not to delete these either as I think it will break the second set of infinite spawns. The nice part of the second set of infinite spawns is that once it is activated it will delete any contact that is lingering far behind the players, out of reach to be a threat.
<br/><br/>
PLAYER RESPAWNS
<br/><br/>
The Badgers at the beginning have pretty high lethality - I recommend respawning any immediate casualties of the defensive part of the mission once the 5 Badgers are dead, as this is a longer mission.
<br/><br/>
Past that part it may be most interesting to let the player forces slowly suffer attrition and wind up in a desperate push for extract, but obviously use your best judgement!
<br/><br/>
Mission ends when players are dead or have extracted east of the big blue line.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];