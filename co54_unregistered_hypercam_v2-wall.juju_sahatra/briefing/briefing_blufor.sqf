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
20XX, SAHATRA [0630] Sahatra has become infested with low grade milsim streaming scum, siphoning off our cheaper electricity in order to run illegal streaming mega-rigs and profit off increasingly stupidly expensive stunt videos. They have refused multiple requests to report their actual electricity usage and have also refused to respond to the power bill. We are here to forcibly remind them to pay up, and to 'help' them cut down on their power usage.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
A couple hundred milstreamers and hangers-on. They have managed to get their hands on military surplus APCs and light-armored cars, which is probably why they have been successfully turning away the civilian inspectors. They have been sighted using M1220 Caimans and M1151A1 HMMWVs, equipped with either CROWS/OPK M2 heavy machine guns or M220A1 TOW launcher. We have also sighted their mobile experimental super-rigs, codenamed 'Typhoon', on special trucks throughout Eastern Sahatra.
<br/>
We have received word that the streamers have set up barricades in some avenues throughout the street, which we should expect to be manned.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
One platoon of mechanized (BTR-80) Sahatran Defense Force regulars loaned out to the Department of Energy. The BTR-80s are equipped with a 14.5mm KPVT heavy machine gun and a coaxial 7.62 PKT. Platoon has been assigned a BRDM-2, equipped similarly to the BTR-80s. No resupply is available, what you bring is what you get.
<br/>
For the purpose of this mission, the entire platoon has been fast-track certified as electricians. There is a sample generator at your start point so you know what to look for.
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
Take meter readings from the marked positions. Afterwards, storm the streamer compound and seize or destroy any Typhoon streaming rigs that you locate. Seized Typhoons should be taken to the marked drop-off point.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Move methodically through the streets. Be on the lookout for ambushes, the streets make perfect firing funnels. It may help to move the infantry through the blocks and buildings rather than the streets, in order to protect the vehicles - use GPS to avoid getting lost.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Use the BTR-80s to strike fast and provide cover throughout the city. Move at Platoon's discretion. Remember that you can use the BTR-80s to knock holes in small walls or fences for alternate means of entry, at the risk of minor injury to the crew.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
All leadership (FTLs and upward) have access to wirecutters and demo blocks, to create alternate lanes of access.
<br/><br/>
Ideally, we would prefer to capture these Typhoon streaming rigs for disassembly and research. However if this is impractical, use demo blocks to destroy them. Additional demo blocks and clackers are inside the BTR-80s to facilitate this.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
<font size='18'>MISSION MAKER'S NOTE</font>
<br/>
Look man I REALLY tried to space out the spawns but there's only so much I can do. Expect high probability of sudden enemy 'pop-in' as they need to spawn very close to players in order to try and limit enemy numbers.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;