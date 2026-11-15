attackerTargetList = [];

fn_pick_target = {
	params["_ignore"];
	private _target = _ignore;
	private _tempArray = alivePlayerList - [_ignore];
	if (count _tempArray > 0) then {
		_target = selectRandom _tempArray;
	};
	_target
};

_null = [] spawn {
    
	sleep 5;
	// Pick initial targets for all players.
	
	alivePlayerList = alivePlayerList - [objNull];
	if (count alivePlayerList > 1) then {
		for "_x" from 0 to (count alivePlayerList) -1 do {
			private _attacker = alivePlayerList select _x;
			private _target = [_attacker] call fn_pick_target;
			_attacker setVariable ["qry_target",_target,true];
			// namelabel is used for spectator map markers.
			_attacker setVariable ["tmf_spectator_nameLabel","%1 - (Their quarry is: " + format["%1)",name _target],true];
			attackerTargetList pushBack [_attacker, _target]; // presync_attackerTargetList = presync_attackerTargetList + [[_attacker, _target]]; 
		};
	};
	// main loop
    while {true} do {
		
		//Check all targets are still valid, if not issue new ones...
		// have a list of players to check (if they have a target)
		// check that the player is okay..
		private _x = 0;
		private _length = count attackerTargetList;
		while {_x < _length} do {
			// 0 for target, 0 for s
			private _entry = attackerTargetList select _x;
			if (alive (_entry select 0)) then {
				if (!alive (_entry select 1)) then {
					// target is dead, give a new target...
					 private _newtarget = [_entry select 0] call fn_pick_target;
					 // replace old (saves resizing array)
					 (_entry select 0) setVariable ["qry_target",_newtarget,true];
					 // namelabel is used for spectator map markers.
					 (_entry select 0) setVariable ["tmf_spectator_nameLabel","%1 - (Their quarry is: " + format["%1)",name _newtarget],true];
					 attackerTargetList set [_x,[_entry select 0, _newtarget]];
				};
			} else {
				//attacker is dead remove record
				attackerTargetList deleteAt _x;
				 _x = _x - 1;
				_length = _length - 1;
			};
			_x = _x + 1;
		};
		if (count attackerTargetList <= 1) then {
			// Send winner 
			private _ending = selectRandom [1,2,3,4];
			winner = [objNull,_ending];
			if (count alivePlayerList == 1) then {
				winner set[0, alivePlayerList select 0];
			};
			publicVariable "winner";
            0 = winner execVM "endMission.sqf";
			sleep 100;
		};
		
		sleep 1;
	};
	//Exit Loop: End Mission
	
};



