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
It's been over a month and a half since the Belarusians launched their initial invasion of Latvia. Over the past few weeks, momentum has begun to swing in favor of the defenders, and now NATO 
reinforcements are staged to beat back the invaders.<br/>
The enemy has set up a layered defense between here and <marker name='marker_nadbor'>Nadbor</marker>. We will be smashing through their defenses with the support of a German tank platoon.<br/>
Russia has recently stepped up their support of Belarus in the form of increased sales of modern mechanized and armored assets on credit to the Belarusian regime. Expect all manner of Soviet-era 
vehicles as well as a few more modern T-72B3s and T-90As.<br/>
Look around. Look what they've done to our homes. Our people. The blight on our land will be tolerated no longer. Wipe this red stain from our piste.<br/>
It is currently 5:00pm. The weather is sunny and clear. Some clouds and light fog are expected to roll in over the next couple hours. The terrain consists of rolling hills and wooded areas 
with pockets of suburban zones.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
-2-3x Platoons Belarusian Armor<br/>
-1x Company Belarusian Mechanized/Motorized Infantry<br/>
-1x Battallion Belarusian Light Infantry
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
-1x Platoon Latvian Motorized Infantry<br/>
-Up to 1x Platoon German Armor
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
Our primary objective is to sweep through the ruined villages of <marker name='marker_huta'>Huta</marker> and <marker name='marker_drewniki'>Drewniki</marker>, then take and hold the strategic 
town of <marker name='marker_nadbor'>Nadbor</marker>.<br/>
Command also requests we clear at least one of two front line strongpoints held by the enemy at the ruined <marker name='marker_church'>church</marker> and/or 
<marker name='marker_manor'>manor</marker> outside of Huta in order to clear a path for reinforcements.<br/>
Finally, we should clear at least two of three districts outside of <marker name='marker_nadbor'>Nadbor</marker>; the Belarusians are using a nearby 
<marker name='marker_farm'>farm</marker> for command and control, a <marker name='marker_warehouse'>warehouse park</marker> to house heavy equipment, and a 
<marker name='marker_military'>military base</marker> to train and garrison reserves.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The infantry should advance and seize <marker name='marker_huta'>Huta</marker> to establish a foothold, then advance on <marker name='marker_nadbor'>Nadbor</marker> under the cover of our 
tanks, taking other objectives en route and as able.<br/>
Depending on the plan of attack, it may be convenient or even necessary to take more than the minimum number of secondary objectives, particularly near <marker name='marker_huta'>Huta</marker>.<br/>
If the company has been significantly attrited by the time we reach <marker name='marker_nadbor'>Nadbor</marker>, we should prioritize taking and holding the town itself over clearing the 
satellite objectives.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Move mounted or on foot at the platoon leader's discretion.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
The infantry platoon has the support of up to a platoon of German Leopard tanks. Each squad has one .50-caliber-mounted humvee at their disposal.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
N/A
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The Leopard tanks have 20 AP, 12 HEAT, and 12 HE shells each at their disposal. Gunners also have a 7.62 coaxial gun and commanders have a .50-caliber gun.<br/>
Use of the vehicles by infantry is optional and is at leadership's discretion. Each squad is assigned one truck with 17 seats and one armed humvee with 5 seats.<br/>
The unarmed humvees each seat 4 and are ideally dedicated to the platoon element and weapons teams, should they be employed. However, they may be distributed amongst the platoon however 
leadership sees fit.<br/>
There is no resupply earmarked for this mission.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;