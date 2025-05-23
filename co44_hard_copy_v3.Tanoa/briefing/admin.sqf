
briefing_admin = "
ADMIN BRIEFING
<br/><br/>
The mission is to detonate explosives at the cargo container which contains the reviews as well as the beach landing which contains additional copies.
<br/>
Extract with should be done by making the way to the ANZAC Frigate. Ideally this is done by using the provided RHIBs
<br/>
The mission will not automatically end. The session host should end the mission when all players are dead or the mission is complete.
<br/><br/>
The locations for the reviews are rigged with a invisible device which has an event trigger when an explosion goes off nearby and will display a message. If the trigger doesn't fire that's fine, the mission can still be completed.<br/><br/>
The explosives that should be used are rhsusf_m112_mag or DemoCharge_Remote_Ammo
";

player createDiaryRecord ["diary", ["Admin", briefing_admin]];