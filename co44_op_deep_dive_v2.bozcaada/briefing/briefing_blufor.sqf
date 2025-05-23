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
Local Quadrillionaire Mr. Mc Moneybags has hired you, a for-hire mercenary force, to break into a local military compound and steal their supply of Diamonds, Rubies and other assorted gemstones. 
Your job is to bring in a convoy of vehicles and haul the goods back to his mansion so he can finish building his 24 karat gold plated toilet. 
There should be 4 supply crates in total, he wants every last stone they have so make sure you leave not even a single one left unturned.
<br/>
Expect heavy resistance after you breach into the compound, they won't let their precious gems go out quite so easy. Good luck and try to make it back in one piece, hm? 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The government is fairly well funded due to the selling of these gemstones and they've diverted a sizeable portion of that into their military. 
Notable forces include a squads worth of Dedicated Marksmen watching the northern front, various HMG vehicles primed for a QRF response, and LATs located inbetween you and the quarry itself. 
Expect a large QRF after entering the compound along with the potential for some suprises on your way back, you won't be safe from the moment step foot into their territory.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
You have a usable convoy of half a dozen trucks that will be the transport for both yourself and the objectives in and out of the quarry.
<br/> 
Your only other support will be the very bags you bring in with you and their supply space is quite limited.
The convoy will house a small amount of additional ammunition to help offset this, do your best to ensure their safety and that you're prepared incase of their loss before setting off.

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
Break into a nearby <marker name='marker_obj'>Quarry</marker> located due west of your starting location.
<br/>Find and load all 4 bright orange supply crates into your vehicles of choice.
<br/>Deliver all crates back to <marker name='marker_end'>Mr. Mc Moneybags</marker>, awaaiting at his mansion due north of your starting location.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
A simple, no nonsense snatch and grab, though with a much harder snatch. 
Approach the OP, find or create a sutable point of entry and clear the area of hostiles. 
Once you have the area secure, bring in your convoy of vehicles and load them up with the goods.
Expect a rather heavy QRF response once you breach the compound, time will be working against you.
Thereafter it's a simple matter of making it back to the boss with most of your limbs in tact.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
There are two primary methods of entry into the quarry: the main road or a hike along the northern forest. If you take the main road it will be the most direct approach, although it will also be expected and thus you will encounter several forward posts worth of enemies before you get close to the quarry.
<br/> 
The forest is the more scenic route, with plenty of foliage and the cover of the hills to mask your entry. You will be unable to directly bring the convoy along this route however, unless you'd like to run the risk of having your convoy get caught in a bed of rocks.
<br/>
We'll also note that that your visibility outside of the Quarry is extremely limited while your within its stone walls, we advise you setup Overwatch for whichever team will be tasked with entering the area.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
You have six ZiL-13 trucks at your dispoasal. Each one can hold up to 12 squad members + Driver, may only carry up to a single OBJ crate each and holds a persons worth of ammunition of all types along with some medical supplies; they are also quite flimsy so bear caution in ensuring their safety.
<br/> 
You will need to load the supply crates directly into a nearby truck and it will take roughly 30 seconds per crate.
<br/> 
If these trucks happen to be destroyed, you may need to appropriate some new ones from the Quarry itself. There should be a set of 4 located on its north western end that may be of use.
<br/> 
Additionally, all leadership will be equipped with wire cutters to allow for easier entry into the Quarry itself.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;