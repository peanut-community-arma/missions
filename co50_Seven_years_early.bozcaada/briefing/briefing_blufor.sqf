/* ================================================================================
	GENERAL BRIEFING NOTES
	 - Uses HTML style syntax. All supported tags can be found here - https://community.bistudio.com/wiki/createDiaryRecord
	 - For images use <img image='FILE'></img> (for those familiar with HTML note it is image rather than src).
	 - Note that using the " character inside the briefing block is forbidden use ' instead of ".
*/

/* ================================================================================
	SITUATION
	 - Outline of what is going on, where we are we and what has happened before the mission has started? This needs to contain any relevant background information.
	 - Draw attention to friendly and enemy forces in the area. The commander will make important decisions based off this information.
	 - Outline present weather conditions, players will typically assume that it is daylight with sunny weather.
*/

private _situation = ["diary", ["Situation","
<br/>
<font size='18'>SITUATION</font>
<br/>
April 16th 2028 15:00:00, US Marines on Deployment to the mediterranean sea
<br/>
<br/>
The Altis Civil war has been ongoing for 2 years now. The leaders of the Coup have made an error and used CSAT weapons against NATO ships, unexpectedly turning the conflict Global. Peace talks are breaking down while each side is fortifying in the mediterranean. The US generals want to make the first move and have chosen the next island over, Bozcaada as the first target.
<br/>
<br/>
 Civilians have all been evacuated to the mainland. The island has had 2 weeks to fortify, they have minefields and many extra bunker emplacements. CSAT is dug in and ready for us.
<br/>
<br/>
Our Invasion will consist of 3 parts: The main force to the north west which is tasked with taking the airfield, A CTRG Recon team which will take the communication facilities, and your platoon which is going to take out an <marker name='obj2'>AA Battery</marker> and capture some <marker name='obj1'>Major</marker> <marker name='obj3'>outposts</marker> in the area cutting off any retreating forces.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
CSAT was not ready for this conflict as they were developing some sort of new armor based on a bug. For now their forces have 2010 era Plate carriers, though they have just adopted the 6.5mm KH-2002 and Negev. Their armor capabilities are mostly made up of soviet APC’s painted in hex, although they have a few brand new Karatel’s on the island.
<br/>
<br/>
The enemy has <marker name='arty'>artillery</marker> ready to counter our landing, be careful to move fast and not get targeted by these guns. Once you have taken out the AA we will be able to get a precision strike on that gun.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
1x Armored Plt + 1x Inf Plt Taking the airfield to the north west.<br/> 
1x CTRG Recon team taking the communications installation to the direct north.<br/> 
2x F/A - 181 Black wasp jets.<br/> 
"]];

/* ================================================================================
	MISSION
	 - Describe any objectives that the team is expected to complete.
	 - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission = ["diary", ["Mission","
<br/>
<font size='18'>MISSION</font>
<br/>
- Capture the <marker name='obj1'>1st tower</marker><br/>
- Destroy the <marker name='obj2'>AA Battery</marker><br/>
- Capture the <marker name='obj3'>2nd tower</marker><br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We will have to fight our way up the corridor. The Beach has some cover but the hills only have shrubs and the sightlines are long. We have been provided optics for suppression and lots of smoke to cover our movement.
<br/>
<br/>
The artillery will be deadly if we let it zero in on us. Stay on your toes until the AA is destroyed.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We will have RHIB boats to make landing on the beach and then be moving on foot.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Destroy the <marker name='obj2'>AA Battery</marker> to stop the artillery strikes.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Each RHIB holds 12 people (1xDriver 1x Gunner 10x passengers). You have 7 of them
<br/>
<br/>
Squad Leaders have explosive blocks
<br/>
<br/>
There will be no resupply
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;