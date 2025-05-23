
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "There are 2 waves of units that spawn once the players reach the 2rd floor of the hotel. There should be a small defence at this point to end the mission however if it takes too long to get started feel free to declare a mission success once there is not much combat
<br/>
<br/>
There are no real Friendly reinforcements to the north however if you wanna spice up the ending, friendly forces could arrive in the LAV-25’s to blow some shit up and save the players. Really optional and not in the original idea for the mission but it could be cool if the last fight was taking a really long time.
<br/>
<br/>
Estimated time (1:15 - 1:45 hrs) with briefing.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];