execVM "R3F_LOG\init.sqf";

MISSION_ROOT = call {
    private _arr = toArray __FILE__;
    _arr resize (count _arr - 8);
    toString _arr
};


quarry_player_life_time_start = 15*60;
quarry_player_kill_time_reward = 60*3;
quarry_speed_limit = 80; // km/h

if (isServer) then {
    [] execVM "vehicleCreate.sqf";
	[] execVM "server.sqf";
	[] spawn {
		sleep 0.1;
		// Create the cover map module.
		private _area = "quarry_play_area" call BIS_fnc_getArea;
		_area params ["_center", "_a", "_b", "_angle", "_isRectangle", "_height"];
		"ModuleCoverMap_F" createUnit [_center,(createGroup sideLogic), format["this setvariable [""objectArea"",[%1,%2,%3,true,0]]",_a,_b,_angle],0.5,"PRIVATE"];

	}
};

// Start forever loop?

if (hasInterface) then {


	"winner" addPublicVariableEventHandler {
		winner execVM "endMission.sqf";
	};
	player addRating 100000;
	if (side player != west) then {
		holstered = 0;  
		player addAction ["Holster sidearm","arc_holster.sqf",nil,2.5,false,true,"",""];
	};
	//Briefing: Instructions
	if (side player == west) then {
		_sit = player createDiaryRecord ["diary", ["Cop Briefing","
		As a cop you are expected to keep law and order. You are only authorized to use deadly force if a suspect is attempting to kill you or a fellow officer or other citizens. Feel free to converse with the citizens and harass them but in this country confiscating property other than vehicles is not authorized by the law.
		<br/>
		<br/>
		You will start with an armored vest, an mp5, some basic medical supplies and a radio. There are also have several police vehicles available at the police HQ.
		<br/>
		<br/>
		To aid you keep the peace; On your map you will see all the players marked, blue for cops, red for civilians, black for dead players. But when role playing you should pretend to have no knowledge of this map.
		"]];
	} else {
		_sit = player createDiaryRecord ["diary", ["Civilian","
		I was ambushed and captured by men in masks on your journey to work, they knocked me out and next thing I recall was waking up in a dark cell. A mysterious man I could not see, explained to me that I would be partaking in a game of his making.
		<br/>
		<br/>
		He explained that when I next wake-up I would be forced to play his game. He said he put a GPS tracker in me and an explosive charge in my brain and he has done this to several others and that we're having a competition. When I wake up I'll have a watch, GPS device and a weapon. The watch will tell me how long if I have left till the charge in my brain blows, I can earn more time by killing people that show up on the GPS device. He discouraged me from killing people who are not marked as my target. He also said if I try to escape from his game I'll be killed.
		<br/>
		<br/>
		He also mentioned that there will be cops around. Their duty is to patrol the streets and prevent any deaths. They have only been authorized to use deadly force if they see a suspect attempting to kill others. I have a scroll wheel action to hide/retrieve a pistol I am carrying.
		"]];
	};
	//Briefing: Credits
	_sit = player createDiaryRecord ["diary", ["Credits","
	Sources of Inspiration: This is inspired by the ShackTac 'The Game' gamemode which was inspired by the game called 'The ship', which was made by Kevb0.<br/><br/>
	Rifling Matters (Austrialian Arma group) made a version called 'Quarry', and it is this name we use. <br/><br/><br/>
	This version was made by Snippers. <br/></br><br/><br/>
	Various code from the F3 framework has helped (Primarly the marker system served as a great example). For full F3 credits please see <br/> https://github.com/ferstaberinde/F3<br/><br/>
	Thanks to Bear for helping provide the awesome ending</br></br>
	Ending song thanks to Super (Song called Biamby></br></br>
	Sound effects courtesey of freesounds.com<br/><br/>
    Thanks to R3F for their awesome logistics system!
	"]];
	
	
	
	qry_hp = quarry_player_life_time_start;
	lastMinuteNotify = 15;
	if (side player == civilian) then {
		[] spawn {
			sleep 0.001;
			//player setVariable["qry_hp",60*10];
			while {qry_hp > 0} do {
				newTarget = player getVariable["qry_target",objNull];
				if (Target != newTarget) then {
					Target = newTarget;
					if (!isNull Target) then {
						if (alive Target) then {
							hint format["Your target: %1",name Target];
						};
						myTargetList pushBack Target;
					};
				};
				uiSleep 1;
				//player setVariable["qry_hp",(player getVariable["qry_hp",60*10])-1]; // hopefully atomic.
				qry_hp = qry_hp - 1;
                if (!(getPos player inArea "quarry_play_area")) then {
                    playSound3D [MISSION_ROOT + "beep.wav", player,false,getPosASL player,1,1,10];
                    systemChat format["I am outside of the game area, my timer is decreasing 10x faster."];
                    qry_hp = qry_hp - 9;
                };
				private _currentMinute = floor (qry_hp/60);
				if (_currentMinute < lastMinuteNotify) then { //((player getVariable["qry_hp",60*10]) mod 60 == 0) then {
					systemChat format["The timer on your watch decreases, it reads %1 minutes left of life.",round (qry_hp/60)];
                    player setVariable["qry_hp",qry_hp,true];
					lastMinuteNotify = _currentMinute;
				};
                if (vehicle player != player) then {
                    if (speed player >= quarry_speed_limit) then {
                        if (((player getVariable["qry_lastSpeeding",(-30)]) + 6) > time ) then {
                            player setVariable["qry_lastSpeeding",time,true];
                        };
                    };
                };

				if (qry_hp < 11) then {
					switch (qry_hp) do {
						case 10: {playSound3D [MISSION_ROOT + "beep.wav", player,false,getPosASL player,1,1,10];};
						case 5: {playSound3D [MISSION_ROOT + "beep.wav", player,false,getPosASL player,1,1.1,10];};
						case 4: {playSound3D [MISSION_ROOT + "beep.wav", player,false,getPosASL player,1,1.3,10];};
						case 3: {playSound3D [MISSION_ROOT + "beep.wav", player,false,getPosASL player,1,1.6,10];};
						case 2: {playSound3D [MISSION_ROOT + "beep.wav", player,false,getPosASL player,1,2,10];};
						case 1: {playSound3D [MISSION_ROOT + "beep.wav", player,false,getPosASL player,3,10,20];};
						default {};
					};
				};
			};
			//Time up
			if ((alive player)) then {
				//https://community.bistudio.com/wiki/playSound3D
                if (faction player != "") then {
                    playSound3D [MISSION_ROOT + "beep.wav", player,false,[0,0,0],1,1,10];
                    player setDamage 1; //explode.
                };
			};
		};
	};
    // TMF Spectator name override.
    [] spawn {
        disableSerialization;
        while {true} do {
            if ([] call tmf_spectator_fnc_isOpen) then {
				// Update text in spectator for displaying quarries.
                {
                    private _target = _x getVariable ["qry_target",objNull];
                    private _control = (_x getVariable "tmf_spectator_tagControl") param [0,controlNull];
                    if (alive _x && alive _target && !isNil "_control") then {
                        private _text = format["Target: %1",name _target];
                        [
                            _control
                            ,_text
                            ,[]
                            ,true
                        ] call tmf_spectator_fnc_controlSetText;
                    };
                } forEach playerList;
				// Hide group 3D icons (Quarry should be single person per group).
				{
					private _control = (_x getVariable "tmf_spectator_tagControl") param [0,controlNull];
					if ( !isNil "_control") then {
						[_control,"",[1,1,1,0]] call tmf_spectator_fnc_controlSetPicture;
						[_control,""]call tmf_spectator_fnc_controlSetText;		
					};
				} forEach allGroups;
            };
            sleep 1;
        };
    };
};
