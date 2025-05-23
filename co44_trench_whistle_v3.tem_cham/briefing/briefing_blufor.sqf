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
<marker name='fortress'>THE FORTRESS</marker> is a key position helping the Britican forces hold together on this front, and today we will be taking it from them! We'll be taking it straight up the gut since they've covered their flanks with minefields. The sky is overcast and the air is thick with the haze from repeated artillery barrages.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Britican infantry in this area wear drab olive uniforms and helmets, compared with our tan and blue. They are using Lee Enfields, Brens, and a few have some sort of SMG. Don't let them get close enough to toss frags at us!
<br/><br/>
A handful of MT-LB 'tanks' have been spotted in the area. Be prepared to use our new 'anti tank' technology against them. <marker name='fortress'>THE FORTRESS</marker> itself is rumored to have numerous HMG nests.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
We will have friendly artillery support to help us push into this hostile environment! See Execution tab for details.
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
-Assault and seize <marker name='fortress'>THE FORTRESS</marker> through the enemy's trenchlines.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
1. Conceal our forces at the edge of the treeline near the <marker name='flag'>red flag</marker> to observe the enemy's forward position.
<br/><br/>
2. Use the hold action on the <marker name='flag'>red flag</marker> to trigger the artillery that will barrage <marker name='barrage1'>the forward enemy position</marker> and launch our assault once that barrage has ended.
<br/><br/>
3. Seize and hold the <marker name='trench1'>first proper trench</marker> until our <marker name='barrage2'>second and final artillery barrage</marker> lands. This will happen automatically, roughly FIVE minutes after you *trigger* the initial barrage.
<br/><br/>
4. Take advantage of the damage caused by the artillery to continue the assault. Storm <marker name='fortress'>THE FORTRESS</marker>!
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We must enact a frontal assault on <marker name='fortress'>THE FORTRESS</marker>, as the flanks are mined. The enemies have closed off their side trench to stymie our advance.
<br/><br/>

<font size='18'>ARTILLERY BARRAGE DETAILS</font>
<br/>
-There will be two friendly artillery barrages on enemy positions, landing <marker name='barrage1'>here</marker> and <marker name='barrage2'>here</marker>, in order.
<br/><br/>
-They are both triggered by PLTCO interacting with the <marker name='flag'>red flag</marker>. The second barrage will start approximately FIVE minutes after the first shell of the first barrage lands.
<br/><br/>
-The shells have a pretty large splash radius; don't get too close if you can avoid it! Being in the first trenchline is fine but you may wish to keep your head down.
<br/><br/>
-Each barrage contains exactly 15 shells.
<br/><br/>

<font size='18'>RADIOS</font>
<br/>
Only FTLs, SLs, CLSs, and PLTCO have radios. I have provided 148s to FTLs and CLS in case leadership decides that everyone should be on the same net but please feel free to decide on a radio structure that works best for you!
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
See Execution tab for details on artillery and triggering the mission start.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;