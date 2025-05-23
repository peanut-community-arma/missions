
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "The mission can be considered complete when any surviving IDAP hostages are delivered to the <marker name='marker_IDAP'>IDAP camp</marker>
<br/><br/>
The hostages are in groups labelled 'IDAP' if you want to check on them in zeus.
<br/><br/>
If more contact is needed you can spawn regular CSAT Infantry Squads.";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];