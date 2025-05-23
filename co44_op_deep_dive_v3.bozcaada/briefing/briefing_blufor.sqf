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
Local Quintillionaire Mr. Mc Moneybags has hired you, a for-hire mercenary force, to break into a local government-owned quarry and steal their supply of Diamonds, Rubies and other assorted gemstones.
Your job is to haul everything that isn't nailed down back to his mansion so he can finish building his 24 karat gold plated toilet. 
<br/>
There are 4 supply crates in total and Mr. Mc Moneybags wants every last one. He won't be happy if you can't bring them all back so try your best to make sure he gets what he wants.
<br/>
We are expecting roughly 7 minutes or so between breaching the compound and the expected QRF force, while this QRF isn't lethal it is still advised to ensure you can leave before you get overwhelmed by it.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
The government is fairly well funded due to the selling of these gemstones and they've diverted a sizeable portion of that into their military. 
Notable forces include squads worth of Dedicated Marksmen watching the northern front, various HMG vehicles primed for a QRF response, and LATs located inbetween you and the quarry itself.
Response forces are also expected come from almost any direction in and around the quarry itself, as this entire section of land is government-owned.
<br/>
It's also worth mentioning your visibility outside of the Quarry is extremely limited while within its stone walls, we advise you setup Overwatch for whichever team will be tasked with entering the area.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
There may be weapons caches that are enemy owned, you may take these as you find them.
Otherwise, you'll only have the bags you bring in with you so best be as prepared as you can be.

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
Break into a nearby government-owned <marker name='marker_obj'>Quarry</marker> located due west of your starting location.
<br/>Find and load all 4 bright orange supply crates into any available vehicles that you may find or bring from outside the quarry.
<br/>Deliver all crates back to <marker name='marker_end'>Mr. Mc Moneybags</marker>, awaiting at his mansion due north of your starting location.
<br/>Ensure the protection of your client upon arriving back at his location, he can't pay you if he's dead!
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
This is a simple mining mission. Get in, get the goods and get out.
Approach the LZ and find or create a sutable point of entry using the tools you have available.
Once you have the area secure, load up the goods and hightail it out of there.
Good luck and try to make it back in one piece, hm? 
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
There should be two primary choices for travel: take the main road or go for a hike along the northern forest.
<br/> 
The road will be the most direct approach, it will also be expected and thus you will encounter several pre-set garrisons before you get close to the quarry.
<br/> 
The forest is the more scenic route, with plenty of foliage and the cover of the hills to mask your entry. While this makes an easier entry, the quarry itself has heavier fortifications along this side and you will probably still need to deal with the garrisons you left on the main road later on.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/> 
There will be various trucks to 'appropriate' both in the Quarry and along the path towards it, take whatever you find that you deem appropriate to use.
<br/> 
You will also need to park your vehicle directly next to the supply crates to load them in. It will take roughly 30 seconds per crate so ensure the area and loader are secure before starting the process.
<br/> 
The quarry itself is fenced off on most sides, leadership will be equipped with wire cutters to allow for an easy access point.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;