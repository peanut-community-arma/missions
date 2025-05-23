tmf_briefing_admin = "ADMIN BRIEFING<br/><br/>";

/* in this briefing page you should provide the admin with any information that will aid them doing their job.
	    - if mission has no automatic ending system. All conditions for the mission ending should be mentioned here so the session host knows what to do.
	
	
*/

// insert custom text
tmf_briefing_admin = tmf_briefing_admin + "
Mission succeeds once the platoon reaches the boats and breaks contact after destroying all cannons.
<br/><br/>
The intent is for the platoon to safely make landfall and creep inland before hitting first contact.
<br/><br/>
Trigger notes:<br/>
• The southeast BTR spawn and the northern Tank spawn will both repeat 5 minutes after their respective activation.<br/>
• All bypassed enemies will collapse towards the platoon when they approach the third battery.<br/>
• Do not trigger the Tunguska early! It is intended to be engaged suddenly and at short range.<br/>
• The tanks and major QRF will be spawned after 8 out of 9 cannons are destroyed. The players will be warned to withdraw when this happens.
<br/><br/>
Note: The artillery is not a threat to the players. The cannons are also locked for players.
<br/><br/><br/>
The artillery and explosion scripts are activated when the players depart the ship.<br/>
Should it become necessary, the artillery script can be aborted by global exec'ing:<br/>
_abort = [] call GOM_fnc_abortAmbientArtilleryFire;
<br/>
This will abort both the cannons and the tanks up north.<br/>
Likewise, the explosions up north can be cancelled by global exec'ing `distant_battle_active = false;
`
<br/><br/>
Click <execute expression='_abort = [] call GOM_fnc_abortAmbientArtilleryFire;
'>here</execute> to abort artillery script. CAN NOT BE REACTIVATED AFTER ABORT";

player createDiaryRecord ["diary", ["Admin", tmf_briefing_admin]];
