
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + 
"Mission ends when the town of <marker name='marker_whisky'>Arudy</marker> is free from enemies and someone has found the orange IDAP supply box near the memorial on the east side of town. Ideally all six hostages have survived by this point. They would be under civilians in zeus.
<br/><br/>
If more contact is needed there are some groups <marker name='marker_zeus'>here</marker> that can be deep copied (left CTRL + left SHIFT + C) and pasted (left CTRL + left SHIFT + V) hopefully anywhere near your cursor in zeus.
<br/><br/>
The mission should take less than an hour to complete.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];