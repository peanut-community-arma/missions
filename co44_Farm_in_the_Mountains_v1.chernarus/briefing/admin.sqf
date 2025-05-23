
tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";


/* In this briefing page you should provide the admin with any information that will aid them doing their job.
    - If mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.


*/

// Insert custom text
tmf_briefing_admin = tmf_briefing_admin + "There's not much contact in the first part.<br/>
Copy/paste squad is west of Zelenogorsk if people get bored.<br/><br/>

The big barracks is a kind of haunted house thing with a bunch of goofy triggers and a boss.<br/>
None of them should kill/execute people out right, but two of the upper floor ones do scripted damage, and one temporarily puts someone 800 meters up but they should safely come back.<br/><br/>

Radio interference disable is an addAction on the dish on the roof of the factory building at green mountain.<br/>
There are trigger teleports in the 1st floor bathrooms of the large barracks, marked by railings, that go to a 'basement'.<br/>
A portal looking thing from the basement goes to Cherno.<br/><br/>

Objectives are clearing the buildings at Green Mountain, and Cherno hospital and the building attached.<br/>
Mission complete after those.
";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];