/* ===============================================
    GENERAL BRIEFING NOTES
     - Uses HTML style syntax. All supported tags can be found here - https://community.bistudio.com/wiki/createDiaryRecord
     - For images use <img image='FILE'></img> (for those familiar with HTML note it is image rather than src).
     - Note that using the " character inside the briefing block is forbidden use ' instead of ".
*/

/* ===============================================
    SITUATION
     - Outline of what is going on, where we are we and what has happened before the mission has started? This needs to contain any relevant background information.
     - Draw attention to friendly and enemy forces in the area. The commander will make important decisions based off this information.
     - Outline present weather conditions, players will typically assume that it is daylight with sunny weather.
*/

private _situation = ["diary", ["Situation","
<br/>
<font size='18'>OPERATION RATS AND SNAKES</font>
<br/>
While returning home from another successful operation, your pilot suddenly shouts, 
'We're leaking fuel! We're gonna have to land!' 
After finishing the necessary repairs to the fuel line, one thing becomes evident: This was no accident. 
Scour the surrounding area for gas cans to refuel the helo before hostile forces descend on your position, and be careful with who you trust.
Clearly, not everyone wants you to make it home safely.
"]];

/* ===============================================
    MISSION
     - Describe any objectives that the team is expected to complete.
     - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission = ["diary", ["Mission","
<br/>
Search the surrounding area for gas cans to refuel your Skyranger (or other aircraft) before enemy forces arrive, exfil to <marker name='victoryMarker'>Besar Airbase</marker>—and deal with any Snakes who may attempt to stop you.
"]];

/* ===============================================
    ADMINISTRATION
     - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
     - Outline of how to use any mission specific features/scripts.
     - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["Tutorial","<br/>
The game begins once SafeStart ends, at which point you will receive a new briefing section detailing your role, how many Snakes are present, 
and how many gas cans are required before you can leave. Innocent Rats will also lose access to personal arsenal, but the devious Snakes can adjust their equipment as they desire.<br/>
<br/>
Gas cans can be picked up using ACE interact (default key is Left Windows button). 
Select 'Refuel' -> 'Take fuel nozzle' to pick it up, then bring it nearby a bird to refuel it. <br/>
Note that you both holster your weapon and can only walk while holding a gas can, leaving you vulnerable to attack. 
You'll receive a hint once the gas can is empty, use ACE interact again to detach the empty gas can.<br/>
<br/>
The game ends once all Rats have either escaped from or been killed in the AO - 
if any Snakes dare board they will be discovered during the subsequent investigation by High Command.<br/>
<br/>
OPFOR vehicles and weaponry can be picked up and used at your discretion. Be sure to check the ACE cargo of OPFOR vehicles for gas cans.<br/>
<br/>
The medical tent near the Skyranger should allow you to use scavenged surgical kits (and bandage faster).
"]];

player createDiaryRecord _administration;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;