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
About two weeks have passed since the Belarusians launched their invasion of Latvia. Through heroic effort and indomitable will, our forces halted the Belarusian army's mechanized advance 
before they could overrun the entire region. Since then, we've fought hard to take back some territory along the Jantar river, but the battle lines have solidifed. 
Intense shelling and sporadic skirmishes are now the battlefield MO, and this environment favors the enemy. <br/>
The enemy's line is long and thus their force concentration is low. Command identified an opportunity to strike behind enemy lines and has tasked us with exploiting it. 
We've been able to infiltrate past the enemy's forward positions through an overlooked abandon military base hidden in the forest and we're now staged just outside the gate. <br/>
The enemy's forces are spread out, so it will take them some time to respond in force once we're detected. Their positions are likely concentrated around their static guns, 
which will be more heavily fortified the closer they are to our lines. We're expecting mostly infantry and light armor in the AO, though some IFVs may arrive if we linger too long. 
There are also reports of a small squadron of mixed Belarusian aircraft in the area. Command has provided us with a Stinger weapon system to help counter this threat. <br/>
It's currently 5:15pm. The weather is sunny, with some clouds expected to roll in over the course of the evening. The terrain is hilly and forested in the north-west and opens up into 
lightly wooded fields on rolling hills in the rest of the AO. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
-1x Company Belarusian Infantry <br/>
-1x Company Belarusian Motorized Infantry w/ Limited Armored Support <br/>
-1x Company Belarusian Infantry in Reserve <br/>
-1x Platoon Belarusian Mechanized Infantry in Reserve <br/>
-2x Flights Belarusian Mixed Aircraft
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
-1x Platoon Latvian Special Forces Infantry w/ Weapons Team(s)
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
Destroy at least three of the five enemy static guns in the AO: artillery guns somewhere around <marker name='marker_obj1'>here</marker>, <marker name='marker_obj2'>here</marker>, 
and <marker name='marker_obj3'>here</marker>, and anti-air guns somewhere <marker name='marker_obj4'>here</marker> and <marker name='marker_obj5'>here</marker>. Search the marked regions 
and destroy the objectives using explosives supplied to leadership.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
As previously stated, we can expect objectives closer to our lines to be more heavily defended. In particular, we expect the <marker name='marker_obj3'>military base</marker> 
 to be strongly defended, the position <marker name='marker_obj4'>here</marker> to be only modestly defended, and the position way over <marker name='marker_obj5'>here</marker> to be 
sparsely defended. <br/>
On the other hand, attacking positions further from our line will give the enemy more time to respond, and certain positions may be more exposed or isolated by the terrain than others. 
Keep all this in mind when deciding which objectives to destroy.
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
One explosive charge placed immediately adjacent to or against an objective should be sufficient to destory it. <br/>
The platoon command element is authorized to carry additional missiles for MAA should it be deemed worthwhile. Remember, we want to work fast here: don't weigh yourselves down too much. <br/>
We could see a number of different enemy air assets of various threat levels. MAA should pick their targets carefully; considering their ammo, the enemy asset's threat level, and the 
platoon's progress.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
Enemy reinforcements will increase in cadence, lethality, and volume as the mission goes on. Consider retreating if the mission is not completed roughly 90 minutes after stepping off.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;