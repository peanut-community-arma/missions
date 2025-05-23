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
The year is 2050, and nations have ceased to be. You are the Verizon Sales Taskforce (VST), fighting against the corporate might of the Comcast CommuniCorp Security (CCCS) forces. The CCCS has forced unreliable services at high prices and low speeds on this area of Altis for too long, but no longer! Operation Gigabit Speeds will take advantage of a massive cyberattack -- sorry, 'unexpected network failure' -- to hijack their infrastructure in and around Zaros. This operation would provide a virtual beachhead and give these Altis inhabitants a chance at being able to stream Twitch while ALSO downloading a jpeg on our affordable wireless data plans. Naturally, the CCCS will oppose this fair market competition, so defend our Aggressive Service Van while we finish connecting this area to our greater network.
<br/><br/>
Step-off time is 0515. We expect an overcast day. The terrain around Zaros terrain with a few old riverbeds that may have obscuring vegetation. Zaros itself is flanked by forested hills.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
A large number of mechanized CCCS operatives, who have recently bought out a supply of old AAF equipment (notably HMG-equipped Land Rovers, HMG Fenneks and FV510 Warriors). Our sources suggest that Zaros proper is heavily garrisoned. Expect additional reinforcements from the direction of <marker name='mk_therisa'>Therisa</marker> and the AAC Airfield. 
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to a platoon of VST sales representatives escorting a disguised (logo-less) Aggressive Service Van (seats 5). 
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
Establish a link to corporate service HQ at the four marked service points. Ensure the service van is not destroyed. Once Operation Gigabit Speeds is complete, <marker name='mk_exfil'>extract southeast past the exfil line</marker>.
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Employee Handbook","
<br/>
<font size='18'>MANAGEMENT'S INTENT</font>
<br/>
While our Service Van is decently armored, be careful with it - it is an expensive corporate asset that is hard to replace and vital for the success of our mission. It carries a modest amount of additional supplies for us, which we bought to finish out the last of our discretionary funds in the budget. Since we are nearly beginning our yearly annual plan process, focus on completing our objectives rather than seizing control of the town itself. 
<br/><br/>
Remember if surrounded by hostile Comcast representatives, the Karatel is equipped with an emergency smoke grenade launch protocol. Go hit those quarterly metrics!
<br/><br/>

<font size='18'>SERVICE TECHNICIAN MANUAL</font>
<br/>
1. Drive the wireless service vehicle within 10m of the service point (look for a black satellite dish).<br/>
2. Bring the vehicle to a complete stop. <br/>
4. Wait for radio confirmation (side chat) that HQ has established a connection.<br/>
5. Keep the vehicle in the operating zone until HQ sends confirmation that the connection has been fully established. This should take between 6 - 12 seconds in ideal situations.<br/>
6. You may leave the service zone and head to the next area.
<br/><br/>

<font size='18'>PR GUIDELINES</font>
<br/>
In order to not give Comcast's legal team any advantages, only fire when fired upon so that we can claim that they were the aggressors in this fight. Remember that this is a service mission aimed at providing customers with a fair choice of high-quality wireless internet services. Any service outages should be blamed on Comcast incompetence. Anyone who manages to upsell a new signing customer onto our exclusive early-bird uncapped data plan will be eligible to join the annual company raffle.
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
The service van (Karatel) is classed as a repair vehicle so anyone should be able to repair it via ACE. Platoon Element alone (PltCo and Plt CLS) can fully repair the Karatel, while all other players can partially repair it (components will heal to yellow status). Toolkits and two spare wheels are inside the vehicle. Contact admins if you're missing anything from your loadout.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;