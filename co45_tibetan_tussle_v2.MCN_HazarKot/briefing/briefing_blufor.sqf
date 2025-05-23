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
OCTOBER 7, 1958 <br/>
A Tibetan warlord has sent forces across the border into our region of Nepal. They're extorting 'taxes' from some local villages in the mountains to the south-east. The PLA doesn't seem to be 
in a rush to get their house in order, so we'll have to take care of this problem ourselves. <br/>
The terrain in close to our staging point of Hazar-Kedh is flat and arid. The area to the east contains numerous mountains, hills, passes, and valleys. <br/>
It is currently 8:30am. The weather is clear.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The enemy consists of an unknown number of Tibetan paramilitaries. They are armed with a mix of World War II-era weapons including Brens, Karabiners, and Thompsons, along with a few Browning 
machine guns and Panzerfausts. Locals also report that the warlord acquired a shipment of new Type 56 AK-style assault rifles and a handful of old BTR-40s for his troops. <br/>
Expect enemy reinforcements and counterattacks to come from the east and south.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A platoon of Nepalese Gurkhas, armed with surplus EM-2s, Johnson machine guns for fire support, and Lee Enfield and Mosin bolt-action rifles for sharpshooters.
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
Liberate the villages of <marker name='marker_ghorband'>Ghorband</marker> and <marker name='marker_daraz_gerd'>Daraz Gerd</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Local herders report that the Tibetans will attempt to range out from the mountains and occupy the <marker name='marker_outskirts'>outskirts</marker> and 
<marker name='marker_abandoned_mine'>abandoned mine</marker> to our south, so expect enemy contact once we leave our staging point. They also report that the enemy has set up a barricade and 
strong point at the mouth of <marker name='marker_zanjabal_pass'>Zanjabal Pass</marker>. <br/>
Command suggests one of three approaches to <marker name='marker_ghorband'>Ghorband</marker>. The first is to take the road through <marker name='marker_zanjabal_pass'>Zanjabal Pass</marker>.
The enemy is well entrenched here, but the terrain is favorable and taking the direct route will serve as a show of strength to the locals. The second option is to take the 
<marker name='marker_inner_valley'>Inner Valley</marker> and approach from the north, which should be lightly defended but may leave us vulnerable to being flanked. The third option is to 
traverse <marker name='marker_takur_ghar'>Takur Ghar mountain</marker>, which will have difficult terrain and will expose us to many angles but should give us good sight lines across the AO. <br/>
After <marker name='marker_ghorband'>Ghorband</marker>, the approach to <marker name='marker_daraz_gerd'>Daraz Gerd</marker> should be less complicated. We can either navigate the mountainous 
terrain to the south or take the road directly to the objective.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Move on foot.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
N/A
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
High command leaves the decision on how to navigate the AO to the platoon commander. However, in the event platoon lead has choice paralysis, following the road through the AO should be efficient 
and will assure the local civilians that we are in control of the region.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Only leadership has radios. Orders will have to be relayed directly at the fireteam level. If a fireteam leader is killed, be sure to recover their 343. <br/>
There is no resupply available. The BTR crews can be killed with small arms and we have no native AT weapons. However, we are free to recover enemy AT if we choose.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;