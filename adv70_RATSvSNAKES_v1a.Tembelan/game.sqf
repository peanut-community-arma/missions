"Begin Operation!\nCheck your briefing for your role!" remoteExec ["hint"];

/*
BFT
*/

//get player count
numPlayers = count playableUnits;
numTraitors = "traitors" call BIS_fnc_getParamValue;
numObjectives = "cans" call BIS_fnc_getParamValue;
patrolSettings = "patrols" call BIS_fnc_getParamValue;

if (patrolSettings == 1) then {
  execVM 'hunt_sm.sqf';
} else {
  private _timeUntilPatrols = "endPatrols" call BIS_fnc_getParamValue;
  [
    {execVM 'hunt_sm.sqf'},
    nil,
    _timeUntilPatrols
  ] call CBA_fnc_waitAndExecute;
};

publicVariable "numTraitors";
publicVariable "numObjectives";

//callsigns
name1 = ["Airborne","Alive","Amber","Armor","Armored","Arsenal","Ashen","Assassin","Assault",
  "Bastard","Battle","Big","Biting","Bitter","Black","Black Arts","Blazing","Bloody","Blue","Bolt","Brass","Brown","Brutal","Bullet",
  "Cannibal","Charging","Code","Cold","Command","Copper","Coward","Crawling","Creeping","Cyborg",
  "Dark","Death","Decoy","Devil","Diamond","Dire","Dirty","Dizzy","Doom",
  "Eastern","Emergency","Engineer","Espionage","Eternity","Evasion",
  "Fat","Fire","Flaming","Flying","Frantic","Frigid",
  "Garnet","Ghost","Glacier","Goblin","Gold","Golden","Gray","Greedy","Green","Grizzly","Growling",
  "Hot","Howling","Hulking","Hungry","Hunting",
  "Infinity","Intelligence","Iron",
  "Jungle","Jumping",
  "Killer","King",
  "Laughing","Liquid","Little","Lonely","Lost","Love",
  "Machinegun","Mad","Marionette","Master","Medical","Metal","Midnight","Military",
  "Naked","New","Night","Northern","Nuclear",
  "Ochre","Old","Otaku",
  "Panzer","Peace","Phantom","Pink","Pirate","Platinum","Poison","Pouncing","Praying","Predator","Prowling","Psycho","Punching","Punished","Purple","Pyro",
  "Queen",
  "Rabid","Radio","Raging","Rampart","Rancid","Ranger","Raving","Razor","Recon","Red","Rescue","Resistance","Revolver","Riot","Roaring","Rolling","Rogue","Rose","Rumble","Running",
  "Sadistic","Scout","Scowling","Screaming","Security","Seething","Sentinel","Service","Shadow","Shining","Shoot","Sight","Signal","Silent","Silver","Sinister","Skull","Slasher","Sly","Small","Smoking","Snatcher","Sniper","Solid","Southern","Special","Spitting","Spunky","Spying","Stalking","Steel","Stone","Strange","Striker","Stubborn","Sunny","Survival",
  "Tactical","Technical","Thunder",
  "Ultra","Umbral",
  "Vampire","Vengeful","Venom","Vic","Vile","Vulcan",
  "Warfare","Western","White","Wild",
  "Yellow",
  "Zero",
  "Rushing","Handgun","Mercenary","Momentary","Temporary","Chopper","Crazy","Burnt","Flame","Evil","Soylent","Salty","Caffeinated","Super","Painted"];
name2 = 
["Agama","Alligator","Ant","Ape","Armadillo",
  "Baboon","Badger","Barracuda","Basilisk","Bat","Bear","Beast","Beauty","Bee","Beetle","Bison","Bluebird","Buffalo","Bull","Butterfly","Buzzard",
  "Camel","Canine","Capybara","Cat","Centipede","Chameleon","Chick","Chicken","Cow","Coyote","Crab","Crocodile","Crow",
  "Deer","Dingo","Doberman","Dolphin","Dragon","Duck",
  "Eagle","Eel","Elephant",
  "Falcon","Firefly","Fox","Frog",
  "Gator","Gazelle","Gecko","Gibbon","Goat","Gorilla","Gull","Gunner",
  "Harrier","Hawk","Hedgehog","Heron","Hippo","Hog","Hornet","Horse","Hound","Husky","Hyena",
  "Iguana","Inchworm",
  "Jackal","Jaguar",
  "Kangaroo","Kerotan","Koala","Komodo",
  "Leech","Leopard","Lion","Lobster",
  "Mammoth","Mantis","Markhor","Marlin","Mastiff","Mastodon","Mongoose","Moose","Mosquito","Moth","Mouse","Mustang",
  "Ninja",
  "Ocelot","Octopus","Ogre","Orca","Osprey","Ostrich","Ox",
  "Panther","Parrot","Peccary","Pig","Pigeon","Piranha","Platypus","Puma",
  "Rabbit","Ram","Raptor","Rat","Raven","Ray","Rhino","Roach","Rooster",
  "Salamander","Scorpion","Sealion","Shark","Sloth","Slug","Spider","Squirrel","Stallion","Sturgeon","Swallow","Swan",
  "Tarantula","Tiger","Tortoise","Tree Frog","Tuna","Turtle",
  "Vulture",
  "Wallaby","Wasp","Werewolf","Whale","Wolf","Worm",
  "Zebra",
  "Beagle","Griffin","Wire","Bunny","Hobo","Beef","Lettuce","Salt","Wombat","Trigger","Geese","Sniper"];
  
{
  private _nuGrp = createGroup west;
  private _adj = selectRandom name1;
  private _ani = selectRandom name2;
  private _name = format ["%1 %2", _adj, _ani];
  _nuGrp setGroupIdGlobal [_name];
  [_x] joinSilent _nuGrp;
  _x setVariable ["RATS_name", _name, true];
  // remoteExec needed, superfluous, or breaks things?
  [
    "",
    _name,
    ["x\tmf\addons\orbat\textures\blue_inf_airmobile.paa",[1,1,1,1],[32,32]],
    "",
    _nuGrp
  ] remoteExec ['tmf_orbat_fnc_add'];
} forEach playableUnits;

//choose snakes and assign briefings
innocents = playableUnits;
traitors = [];
//diag_log format ["Picking %1 traitors...", numTraitors];
while {count traitors < numTraitors} do {
  private _index = floor(random count innocents);
  //diag_log format ["Selected index = %1, %2",index,newIndex];
  traitors append [(innocents deleteAt _index)];
  //diag_log innocents;
  //diag_log traitors;
};

{
  (owner _x) publicVariableClient "traitors";
} forEach traitors;

[{if (!isServer) then {traitors = [];};}] remoteExec ["call", innocents];

if(patrolSettings > 0) then {
  {
    player createDiaryRecord [
      "diary",
      [
        "RAT",
        "This area is still hot with hostile patrols. Be on guard for intermittent contact as you move."
      ]
    ];
  } remoteExec ["call", innocents];
};

{
  player createDiaryRecord [
    "diary",
    [
      "RAT", 
      format["<br/>You are a loyal member of RATS! Work together with your fellow Rats to refuel the birds and escape, but beware of any Snakes who may try to stop you.<br/><br/>
There are %1 devious snakes in your midst.<br/><br/>Escape vehicles will need %2 gas cans of fuel before you can use them.", 
      numTraitors, 
      numObjectives
      ]
    ]
  ];
} remoteExec ["call", innocents];

[{ player setVariable ["startpos",[0,0,0]] }] remoteExec ["call", (innocents select {isPlayer _x})];

{
  [_x, "RAT"] call RATS_fnc_specIconCreate;
} forEach innocents;

listTraitors = "";
for "_i" from 0 to count traitors do {
  listTraitors = format["%1<br/>%2", listTraitors, traitors select _i];
};
  if(patrolSettings > 0) then {
    {
    player createDiaryRecord ["diary",[
    "SNAKE",
    "This area is still hot with hostile patrols. Be on guard for intermittent contact as you move."]];
    } remoteExec ["call", traitors];
  };

traitor = ["diary",["SNAKE", format["
<br/>
You are a Snake! Prevent as many Rats from escaping as you can.
<br/><br/>
There are %1 devious Snakes trying to stop the Rats including yourself:
%3
<br/>
Escape vehicles will need %2 gas cans of fuel before RATS can leave.<br/><br/>
You can temporarily jam RATS 343s within ~50m with a scroll-wheel action.
",count traitors,numObjectives,listTraitors]]];
publicVariable "traitor";
{
  player createDiaryRecord traitor;
  player addAction [
    "Jam Radio",
    {
        [player, 5000, [[59,2403]], 7.1, 50] remoteExec ['diw_acre_fnc_createRadioJammer', 2];
        player setVariable ["RATSNAKE_jammingActive", true];
    },
    nil,
    0,
    false,
    true,
    "",
    'not (player getVariable ["RATSNAKE_jammingActive", false])',
    -1,
    false
  ];

  player addAction [
    "Unjam Radio",
    {
        player remoteExec ['RATSNAKE_unjam_radio', 2];
        player setVariable ["RATSNAKE_jammingActive", false];
    },
    nil,
    0,
    false,
    true,
    "",
    'player getVariable ["RATSNAKE_jammingActive", false]',
    -1,
    false
  ];
} remoteExec ["call", traitors];

[{ player setVariable ["startpos",(getPosATL player)] }] remoteExec ["call", (traitors select {isPlayer _x})];

{[_x, "SNAKE"] call RATS_fnc_specIconCreate;} forEach traitors;
execVM 'spawnGas.sqf';
publicVariable 'tmf_objectives';

/*
v5 changelog
- Shifted jamming effects to events in init.sqf.
- Added conditions to jam/unjam actions, so they no longer have to be added/removed by each other, and moved their adding to initplayerlocal.sqf.
- Added containmentField which acts as an invisible wall around the play area.
- Changed fuel can spawning, allowing for a param for guaranteed number of cans to spawn in the play area, and deleting cans outside the play area.
- Removed some snake related names from the name list.
- Params for play area radius, cans in play area, snakes being affected by jammers, and initial jamming.
- Some event handlers to try to prevent the helo exploding, might still get launched.
- Added new vests and uniforms to arsenal.
*/