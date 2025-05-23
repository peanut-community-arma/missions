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
Father Christmas has been kidnapped by the forces of the Corporatocracy and the denizans of the world of Christmas have lauched a rescure mission to save him. 
However with the defenders of the Christmas spirit occupied, presents are not being distributed to the good childern of the world. 
The world of Christmas has called for aid in delivering the presents so that the Spirit of Christmas can be passed on to the next generation, and the World of Halloween has answered.
<br/>
Run the last leg of deliveries in Cham before the dawn breaks on Christmas Day!
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Corporate mercenaries bent on replacing the spirit of Christmas with consumer spending. They are equipped with small arms and have a small number of MRAP vehicles as a QRF.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A platoon of infantry from the Halloween world.
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
Deliver boxes of Christmas spirit to houses with a Christmas tree and snowman near them at the following towns:<br/>
- <marker name='marker_hiltersried'>Hiltersried</marker><br/>
- <marker name='marker_loitendorf'>Loitendorf</marker><br/>
- <marker name='marker_trosendorf'>Trosendorf</marker><br/>
- <marker name='marker_premeischl'>Premeischl</marker><br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The team has been provided with a supply of <marker='marker_0'>vehicles and boxes</marker> to transport Christmas spirit with. Visibility will be limited with with the Blizzard ongoing.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Teams can be transported by the provided vehicles along with a box of Christmas spirit.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
No fire support.
<br/><br/>
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
- An example tree is within the hangar at the airfield. <br/>
- Boxes of Christmas spirit, vans and Praga trucks can be spawned infinitely from the hanger at spawn. <br/>
- Supplied vehicles can transport 12 or more players and a maximum of 2 boxes of Christmas sprit.<br/>
- Ammo Resupply Boxes are located at the airfield and are unable to be loaded into trucks.<br/>
-- Vans are DLC content (Laws of War DLC) <br/>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;