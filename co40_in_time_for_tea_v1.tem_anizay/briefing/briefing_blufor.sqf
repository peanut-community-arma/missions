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
March, 2007
<br/>
British mechanised are being deployed to the region after the <marker name='marker_oil'>Akhunds oilfield</marker> was occupied by local insurgents.
<br/>
There are hostages at the site, arranged on the roof alongside enemy combatants.
<br/>
North-most enemy presence have occupyed the village of <marker name='marker_makan'>Makan aljamal.</marker> 
<br/>
We know that they are using the city of <marker name='marker_qalandar'>Qalandar</marker> as a FOB of sorts, recon shows they have built a depot of arms and ammo in the centre of the city.
<br/>
Whatever civilian presence there was at Qalandar and Makan aljamal have been driven out, expect only combatants in the town and city.
<br/>
Intelligence suggests this move to occupy the oilfield was to curry favour with another local warlord, expect QRF of armed technicals for all objectives.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Insurgents are wearing civilian clothing, no body armour and armed with AKM's and FN FAL's.
<br/>
There are armed technicals predominantly consisting of DShKM heavy machine guns, but we know the QRF moving towards the Akhunds oilfield has some heavier weaponry.
<br/><br/>
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
- Assault <marker name='marker_makan'>Makan aljamal</marker>
<br/>
- Assualt the city of <marker name='marker_qalandar'>Qalandar</marker> and destory any material present.
<br/>
- Assault the <marker name='marker_oil'>Akhunds oilfield</marker> ensuring the safety of hostages.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Mechanised assault on the three objectives in whatever order platoon see's fit.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use Bulldog APC's to move between objectives.
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
- FV432 Bulldog holds 10
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;