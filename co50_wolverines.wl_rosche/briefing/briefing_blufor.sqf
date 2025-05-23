/* ===============================================
	GENERAL BRIEFING NOTES
	 - Uses HTML style syntax. All supported tags can be found here - https://community.bistudio.com/wiki/createDiaryRecord
	 - For images use <img image='FILE'></img> (for those familiar with HTML note it is image rather than src).
	 - Note that using the " character inside the briefing block is forbidden use ' instead of ".
*/

/* ===============================================
	SITUATION
	 - Outline of what is going on, where we are we and what has happened before the mission has started? This needs to contain any relevant background information.
	 - Draw attention to friendly and enemy forces in the area. The commander will make important decisions based off this information.
	 - Outline present weather conditions, players will typically assume that it is daylight with sunny weather.
*/

private _situation = ["diary", ["Situation","
<br/>
<font size='20'>SITUATION</font>
<br/>
Under the cover of a tampered ACS module device that allows Russian Federation troops to bypass our early warning system - an invasion on US soil has officially begun with Eastern US under attack from a sudden air assault.
<br/><br/>
US forces are scrambling to defenses, and we part of the Rangers Regiment reacting to the rapidly escalating situation. Particularly, a Super-Stallion containing a HVI code name 'Raptor' has being shot down near Interstate-493 and we are to mount a rescue at once and RV at pre-designated location.
<br/><br/>
<font size='20'>ENEMY FORCES</font>
<br/>
An unknown number of Russian VDV soldiers. Ground estimate over one hundred of Russian aircrafts.
<br/><br/>
<font size='20'>FRIENDLY FORCES</font>
<br/>
All friendly air assets are tied up fighting off Russian air forces, and other units will not be available for tasking. However, a friendly convoy will arrive at our RV point to extract the HVI, but they are encountering heavy resistance.
<br/>
"]];

/* ===============================================
	MISSION
	 - Describe any objectives that the team is expected to complete.
	 - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission = ["diary", ["Mission","
<br/>
<font size='20'>PRIMARY OBJECTIVES</font>
<br/>
-Secure HVI code name 'Raptor' somewhere near the <marker name = 'm_obj1'>crash-site</marker>.
<br/><br/>
-Hold and secure the <marker name = 'm_obj2'>RV point</marker> until friendly convoy arrive.
<br/><br/>
<font size='20'>SPECIAL TASKS</font>
<br/>
-Engage and destroy as many enemy men and materials as possible.
<br/><br/>
-Hold and repel any potential VDV attacks.
<br/><br/>
-Retreat is not an option, the stake is too high for us to not die trying.
<br/><br/>
"]];

/* ===============================================
	EXECUTION
	 - If there are further details regarding the intended execution of the mission here is the place to put them.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='20'>COMMANDER'S INTENT</font>
<br/>
Russian VDV are paradropping all over the Eastern Coast - expect contact anywhere, however most enemy troops should be concentrated around <marker name = 'm_poi1'>here</marker>, <marker name = 'm_poi2'>here</marker>, and <marker name = 'm_poi3'>here</marker>.
<br/><br/>
Raptor's helicopter has been shot down and the survivors has relocated somewhere in the <marker name = 'm_obj1'>vicinity</marker> for cover. Expect hostiles to be close to Raptor's position, but we don't know the state he and his security elements are at.
<br/><br/>
A friendly convoy is due to arrive from the South-West, move west after securing Raptor and establish a defensive perimeter and hold the <marker name = 'm_obj2'>RV point</marker> - a petrol station west of Rosche.
<br/><br/>
<font size='20'>MOVEMENT PLAN</font>
<br/>
You have access to (10) M1165A1 GMV. Exact movement plan at field leadership's discretion.
<br/><br/>
<font size='20'>SUPPORTS</font>
<br/>
You are on your own.
<br/><br/>
"]];

/* ===============================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size ='20'>TERRAIN</font>
<br/>
Rural America - a mixture of open farmlands, sub-urban areas, and forests.
<br/><br/>
<font size ='20'>WEATHER</font>
<br/>
The weather is clear with good visibility.
<br/><br/>
<font size ='20'>LOGISTICS</font>
<br/>
(4) M1165A1 GMV: Armed with M134 and (2) M240 machine guns. Holds (6) passengers + (4) on running boards.
<br/><br/>
<font size ='20'>RESUPPLY</font>
<br/>
Each GMV holds a small amount of infantry resupplies.
<br/><br/>
"]];

private _limitedArsenal = ["diary", ["Limited Arsenal","
<br/>
<font size ='20'>Usage</font>
<br/>
You have access to the limited arsenal via ACE self-action in a 50 meters radius from your start positions.
<br/><br/>
<font size ='20'>PSA</font>
<br/>
If you changes your gear, make sure you double check for any missing item and that you brought the necessary equipments for the mission (you can refer to the equipment tab for your starting loadout).
<br/><br/>
Contact the admin/mission maker should you need to revert back to the original loadout.
<br/><br/>
"]];

player createDiaryRecord _limitedArsenal;
player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;