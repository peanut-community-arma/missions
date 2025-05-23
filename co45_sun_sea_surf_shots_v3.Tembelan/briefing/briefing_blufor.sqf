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
10 JULY 2013, 0630. We have just spent a pleasant time on some nearby islands and are looking forward to the conclusion of our extreme go-karting trip at Tepi Pantai Resort, when we received some bad news. Apparently the Tembelan army disapproved of how hard we partied at this resort last week - something about 'worrying explosions' and 'turning the resort into a ghost town' - and have moved to interrupt our holiday with extreme prejudice. Luckily we never travel without a worrying amount of ammo, guns and bulletproof vests. Time to prove that truly nothing and no one can stop us from having a good time!
<br/><br/>
The weather is rainy, overcast and foggy, but is forecast to clear up as the day progresses. 
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
About a company's worth of TNA forces. To the best of our knowledge they have minimal mechanized support.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
20-40 folks looking to party and have a great time. We have access to the following vehicles to use as we see fit:<br/>
- 3x trucks (seats 13)<br/>
- 4x quad bikes (seats 2)<br/>
- 6x RHIBs (seats 8)<br/>
- 3x rescue boats (seats 5)<br/>
The boats are at the <marker name='mk_pier'>pier</marker> near your starting location.
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
Reach the resort, clearing out the fun police on the way, and accomplish the four following tasks:<br/>
- Secure the <marker name='mk_hotel'>hotel</marker><br/>
- Leave a review on Yelp using the <marker name='mk_review'>on-site computer</marker> (we may have trashed the other comms equipment)<br/>
- Pick up some <marker name='mk_snack'>snacks</marker> and take them to the go-kart course<br/>
- Complete at least one lap on the <marker name='mk_kart'>go-kart course</marker>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Have fun go fast shoot things. Everyone has GPS so remember to turn that on. If you really want to you can transport the contents of the snack pack instead of the whole thing but where's the fun in that? Remember to make people fight over who gets to write the Yelp review.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
The choice of approaching by land or sea (or both) is up to you. The sea route is faster and more direct but is likely to draw fire from the entire peninsula, while the land route is longer but restricts how much you get shot at.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
The extent of the starting triggers have been marked on the map. Contact admins if anything role-breaking is missing from your loadout.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;