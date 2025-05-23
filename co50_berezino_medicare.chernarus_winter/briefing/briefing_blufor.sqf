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
A sweeping offensive launched by CHDKZ forces has forced government forces to cede most of its coastal territory. The port city of Berezino were particularly hard struck and a number of civilians reported that they have barricaded themselves in the hospital with some medical supplies. As part of the UN Peace Keepers operating the area, the top priority now lies on you to evacuate the civilians and retrieve whatever medical supplies you can find — the CHDKZ outnumbers us greatly and this might as very well be a complete suicide mission, but we must commit to our duty to ensure the safety of those trapped civilians. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Expect a significant CHDKZ presence in the AO, their fighters are numerous and supported by a variety of armed technicals, APCs, and a few BMD-1.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of CDF UN Peace Keepers supported by up to two BTR-70.
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
-Find and rescue civilians currently trapped in <marker name = 'm_obj1'>Berezino Hospital</marker>.
<br/><br/>
-Find and retrieve medical supplies in <marker name = 'm_obj1'>Berezino Hospital</marker>. 
<br/><br/>
-<marker name = 'm_end'>RTB</marker> with civilians and medical supplies intact (multiple runs might be required).
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Based on initial report, about two platoon sized CHDKZ forces seized control of Berezino, but expect a lot more enemies coming once we made first contact. Our cargo space will be limited and we may have to make multiple ferries to evacuate all civilians and secure all medical crates, friendly should be split into two forces — with one securing the site against enemy reinforcement and the others responsible with transporting the assets back towards our base.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
You will have BTR-70 and Ural Trucks at your disposal, you should bring as many vehicles as you can to ensure you have enough space to transport the civilians and supplies back to base.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
Any deceased civilian should be body bagged and transported back to our base intact.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size='18'>CARGO SIZE</font>
<br/>
Each medical crate will take 3 cargo space, multiple ferry runs will be needed even if you bring all vehicles.
<br/><br/>
<font size='18'>LOGISTICS</font>
<br/>
BTR-70 can hold up to 21 passengers + 3 vehicle crew, with 2 free cargo space available.
<br/><br/>
Ural Transport Truck can hold up 16 passengers + 1 driver, with 2 free cargo space available.
<br/><br/>
Ural Cargo Truck can hold up to 2 passengers +1 driver, with 12 free cargo space available.
<br/><br/>
<font size='18'>RESUPPLY</font>
<br/>
The Ammo Truck each holds a small amount of supplies for the infantries and can resupply ammo for our BTR-70s.
<br/><br/>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;