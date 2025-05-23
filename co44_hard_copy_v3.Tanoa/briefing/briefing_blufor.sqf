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

Somewhere in the dusty confines of an online forum, two particularly cheeky reviews about our illustrious beach-side resort have surfaced. The first review, penned by a guest who clearly doesn't appreciate the charm of repurposed military accommodations, read: ''Stayed in their luxury suite which turned out to be a burnt out M113. Caught tetanus, but hey, they left a mint on my pillow, so not all bad!'' The second, from a self-proclaimed foodie, bitterly complained, ''Expected a lavish buffet. Got packets of MRE and a microwave. 1/5 stars.''
<br/><br/>
While such bold libel could be dismissed as mere online banter, the original resort from which we were unceremoniously banned for life decided to add insult to injury. They've safeguarded hard copy versions of these reviews, and to further ensure their protection, they've hired a formidable PMC group. Not one to be outmaneuvered, we deployed our ace in the hole – a prodigiously talented hacker (a nephew we're very proud of). He's already scrubbed the digital traces, but those pesky paper copies remain.
<br/><br/>
Some of our savvy team members, owing to their impeccable networking skills, called in a few favors with the Australian and New Zealand Governments. Enter the legendary ANZACs. The Australians, having developed an inexplicable fondness for MRE cuisine, were more than keen to assist. Air New Zealand, always game for a good laugh offered to handle our aerial insertion. They'd drop us off with precision, and then it would be up to the robust Australian naval vessel awaiting us for a swift and stylish extraction.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Several groups of PMC with rifles. They've been hired by a rival resort and are hell-bent on distributing those reviews far and wide.<br/>
Unarmed ground vehicles and boats are at their disposal.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
A motley bunch of flipflop wearing goofs. ( That's you ) – Armed with sunscreen, high power rifles, and friendship.
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
Destroy two caches.<br/>
Search within the <marker name='marker_target1'>city</marker> to find the first cache. They are stored within crates within a grey shipping container<br/>
Intel has provided us with possible locations of the containers. They are marked with question marks on the map.<br/>
<br/>
Search within the <marker name='marker_target2'>western beach</marker> to find the second cache. The PMC group have brought them in via speedboats and are unpacking them on the shore<br/>
<br/>
Secure exfil on RHIBs located at <marker name='marker_extract1'>southern beach</marker><br/>
<br/>
Extract to the <marker name='marker_target3'>ANZAC Frigate</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Use explosives to destroy two caches.<br/>
Extract to the south<br/>
<br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
Move south the city and search for the first cache and destroy it.<br/>
Move to the second cache on the western beach and destroy it.<br/>
Move to the hidden RHIBs and extract to the south.<br/>
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
Players will be expected to be on foot until they reach the extract.<br/>
Extract location contains 4 RHIBs which have 9 seats<br/>
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;