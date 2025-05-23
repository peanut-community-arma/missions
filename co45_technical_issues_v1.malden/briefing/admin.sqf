
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "Mission success if all 5 objectives are destroyed, 
end after withdrawl from AO or succefully breaking contact <br/><br/>
sim disabled andmodel hidden enemy units are on the east side of the hill that can be deep-copied (ctrl + shift c and v, units are coppied releative to cursor position so place cursor over units while copying) if more contact is needed <br/><br/>
Respawn players at admin descretion, 
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];