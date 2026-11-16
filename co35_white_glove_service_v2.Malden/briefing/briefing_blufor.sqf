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
<font color='#FF7D7D'>In the grim future of 205X, the world is no longer ruled by nations, only corporations.</font>
<br/><br/>
205X, JUNE 09, 1740. Urgent orders have come in straight from the top. A prominent board member on the Verizon Rapid Acquisition Consortium has relayed an urgent mission request from his son, who was out a trip with friends on Malden. It seems that he and his friends have been kidnapped by Comcast operatives. We have been tasked to carry out executive extraction with extreme prejudice. Our mission is simple: extract the VIPs (3 total) from their last known locations, using appropriately luxurious means.
<br/>
The weather is overcast and raining, with sunset beginning at 1830.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
La Trinite is a Comcast bastion. Anticipate close-quarters fights through the streets, with potential mechanized reinforcement and helicopter support from the north. Comcast battalions are largely equipped with surplus military equipment from former AAF stores, riding in Pandurs and Fenneks (both HMG and GMG variants). Their helicopter wing consists of AH-6 Littlebirds and AW159 Wildcats. Their corporate colors are tan, blue, and green.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to one platoon of Verizon Rapid Retrieval experts, VIP division, with an attached helicopter pilot element. Corporate HQ has okayed the use of LAT tubes for most non-specialized employees for this mission.
<br/><br/>
For this mission we have been supplied with KA-60 Kasatkas (for the platoon) and one EH-302 Executive Transport helicopter. <font color='#FF7D7D'>Only managers, pilots and VIPs may board this vehicle.</font> Violations will be penalized with loss of performance bonuses, removal of time-off privileges, and demotion. Check the Administration tab for details of armament and carrying capacity.
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
Extract the 3 VIPs from the La Trinite area, back to the Pegasus Inc airfield. They must be extracted using the Executive Transport helicopter exclusively. They are wearing clear civilian apparel. We have verbal descriptions of their last-known positions, as follows:<br/><br/>

- Yellow-walled compound by vineyards, just outside the town proper<br/>
- Two-storey building at the sports ground<br/>
- Two-storey red building, behind the supermarket<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Execution","
<br/>
<font size='18'>VP'S INTENT</font>
<br/>
As we only have descriptions of the VIP locations, rather than precise descriptions, ensure the entire platoon is well-briefed as to what they are looking for. Securing a suitable LZ for the large executive transport and protecting the VIPs on the way to said LZ is the second most critical part of this mission - it might be a good idea to take note of roughly how long it takes to fly from the airfield to the AO.
<br/><br/>

<font size='18'>MOVEMENT PLAN</font>
<br/>
We will depart from the Pegasus Air Co. airfield on Moray Island, a subsidiary of Verizon. We will infil and exfil by air; the platoon manager may choose to extract VIPs one-by-one or all together, if the environment permits.
<br/><br/>

<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Kasatkas pilots will remain to provide air support as needed. These KA-60s are equipped with an IR masking camera to facilitate target acquisition.
<br/><br/>

<font size='18'>SPECIAL TASKS</font>
<br/>
All pilots have undergone engineering training and should be able to repair their vehicles, using the repair truck at the starting airfield. There is a toolkit in the truck's inventory. There is also an ammo truck at the starting airfield for rearming and pylon configuration, if needed.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Administration","
<br/>
For this mission we have been supplied with the following vehicles:<br/>
- KA-60 Kasatkas (2 crew, 8 passengers). They are armed with (vanilla) DAGR guided anti-tank missiles, and a 6.5mm minigun. Pilots should have control over all armament.<br/>
- EH-302 Executive Transport helicopter (2 crew, 12 passengers). These are unarmed. <font color='#FF7D7D'>Only managers, pilots and VIPs may board this vehicle.</font> Violations will be penalized with loss of performance bonuses, removal of time-off privileges, and demotion.
<br/><br/>
Helo pilots: there is also an ammo truck at the starting airfield, which means you can alter your pylons as well as rearm at will. Please be so cool about that. Thanks.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;
