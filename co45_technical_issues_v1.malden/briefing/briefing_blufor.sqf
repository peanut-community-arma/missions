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
A new paramilitary force is challenging our position on malden. They have begun an offensive with armored technicals which has caught us flat-footed due to 
one of our members firing off every rocket we had in for some sort of celebration a few days ago. In an extremely unlikely twist of fate, we found a container full of 
weird guns that drifted to shore including some big fancy rifles with green and white tipped rounds that seem to be what we need to fight back. We are targeting several repair and ammo stations to weaken the enemy forces.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
-1 company of enemy infantry and a few technicals in the AO <br/>
-Substantially more infantry and technicals are expected to move in from the east as our attack progresses <br/>
-At least one BTR-70 has been spotted in the area
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Just us
<br/><br/>

<font size='18'>Weather</font>
<br/>
Clear night with a full moon.
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
-Destroy the two repair trucks located in<marker name = 'marker_1'> Sainte Marie</marker> and the<marker name = 'marker_2'> farm</marker>.<br/>
-Destroy small ammo cache in the<marker name = 'marker_3'> fortified construction site</marker>. <br/>
-Destroy large ammo and/or fireworks cache in the<marker name = 'marker_4'> old ruins</marker>. <br/>
-Withdrawal towards friendly teritory past Chapoi to the southwest
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Push into the small valley and destroy all of the objectives before withdrawaling. Be advised, 
there are a few bunkers on<marker name = 'marker_5'> hill 123</marker> overlooking the fields to the south and the road aproaching Sainte Marie. <br/> 
The enemy has substantial forces on the eastern half of the island that will likely deploy and make continued counter-attacks from the east and south-east with vehicles arriving by the<marker name = 'marker_0'> highway</marker>. 
Keep in mind our lat is long ranged and effective against the enemy vehicles but we only have two rifles per squad and we are not likely to be able to scavenge any from the enemy. It is recommended to keep 
the squads positioned such that they can support each other if one gets pinned or incapacitated by a vehicle.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
Your chevrolegs.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Nope.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Don't die?
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The mk211 rounds will disable or catastrophically destroy armored technicals in 1-3 shots.<br/>
Against a btr targeting the crew is more effective, the gunner sits low in the turret so targeting the hull below the turret is more effective for killing the gunner. <br/>
Everyone has access to demo charges and clackers as well as throwable tnt charges through personal arsenal. <br/>
Our local explosion enthusiast has ensured us that blowing up the large cache will be ''Totally Awesome.'' After last time, we now know that means keeping proper distance, intervals and awareness for falling explosive projectiles 
after it is ''totally clear.''
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;