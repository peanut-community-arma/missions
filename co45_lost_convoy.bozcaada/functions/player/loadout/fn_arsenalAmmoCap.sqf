/**
	Limits what player can bring, excess items removed when arsenal is closed.
	
	Parameters:
	0: unit <OBJECT>
	
	UNIT MUST BE LOCAL
	
	Example:
	[player] call pca_fnc_arsenalAmmoCap;
	
	Returns: 
	NONE
*/

if !(hasInterface) exitWith {};

[
	"ace_arsenal_displayClosed", 
	{
		//systemChat "Ammo Cap is in Effect: Excess items removed";
		
		//Define Unit Roles
		private _ammoList = magazines player;
		//private _itemList = items player;
		private _unitRole = player getVariable ["tmf_assignGear_role", nil];
		private _unitRoleAT = ["rm_lat", "mat"];
		private _unitRoleAR = ["ar", "mmg"];
		private _unitRoleNCO = ["tl","sl","co","sgt","fac","rm_fa", "cls"];
		
		//Ammo Caps
		private _magNumCap = 24;
		private _beltNumCap = 10;
		private _sideNumCap = 4;
		private _grenadeFragNumCap = 4;
		private _grenadeSmokeNumCap = 2;
		private _grenadeSignalNumCap = 4;
		private _uglFragNumCap = 50;
		private _uglSmokeNumCap = 10;
		private _uglSignalNumCap = 10;
		private _launcherNumCap = 2;
		//private _bandageNumCap = 100;
		//private _drugNumCap = 50;
		//private _fluidNumCap = 20;
		//private _catNumCap = 15;
		
		private _magList = [];
		private _beltList = [];
		private _sideList = [];
		private _grenadeFragList = [];
		private _grenadeSmokeList = [];
		private _grenadeSignalList = [];
		private _uglFragList = [];
		private _uglSmokeList = [];
		private _uglSignalList = [];
		private _launcherList = [];
		
		//Class Names
		private _magClasses = 
		[
			"CUP_20Rnd_762x51_FNFAL_M",
			"CUP_30Rnd_762x51_FNFAL_M",
			"CUP_20Rnd_TE1_Red_Tracer_762x51_FNFAL_M",
			"CUP_30Rnd_TE1_Red_Tracer_762x51_FNFAL_M"
		];
		
		private _beltClasses = 
		[
			"CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"
		];
		
		private _sideClasses = 
		[
			"rhsusf_mag_15Rnd_9x19_JHP"
		];
		
		private _grenadeFragClasses = 
		[
			"rhs_mag_m67"
		];
		
		private _grenadeSmokeClasses = 
		[
			"SmokeShell"
		];
		
		private _grenadeSignalClasses = 
		[
			"SmokeShellBlue",
			"SmokeShellGreen",
			"SmokeShellOrange",
			"SmokeShellPurple",
			"SmokeShellRed",
			"SmokeShellYellow"
		];
		
		private _uglFragClasses = 
		[
			"rhs_mag_M397_HET",
			"rhs_mag_M433_HEDP",
			"rhs_mag_M441_HE"
		];
		
		private _uglSmokeClasses = 
		[
			"1Rnd_Smoke_Grenade_shell"
		];
		
		private _uglSignalClasses = 
		[
			"1Rnd_SmokeBlue_Grenade_shell",
			"1Rnd_SmokeGreen_Grenade_shell",
			"1Rnd_SmokeOrange_Grenade_shell",
			"1Rnd_SmokePurple_Grenade_shell",
			"1Rnd_SmokeRed_Grenade_shell",
			"1Rnd_SmokeYellow_Grenade_shell"
		];
		
		private _launcherClasses = 
		[
			"rhs_mag_maaws_HEAT",
			"rhs_mag_maaws_HEDP",
			"rhs_mag_maaws_HE"
		];
		
		{
			if (_x in _magClasses) then 
			{
				_magList pushBack _x;
			};

			if (_x in _beltClasses) then 
			{
				_beltList pushBack _x;
			};
			
			if (_x in _sideClasses) then 
			{
				_sideList pushBack _x;
			};
			
			if (_x in _grenadeFragClasses) then 
			{
				_grenadeFragList pushBack _x;
			};
			
			if (_x in _grenadeSmokeClasses) then 
			{
				_grenadeSmokeList pushBack _x;
			};
			
			if (_x in _grenadeSignalClasses) then 
			{
				_grenadeSignalList pushBack _x;
			};
			
			if (_x in _uglFragClasses) then 
			{
				_uglFragList pushBack _x;
			};
			
			if (_x in _uglSmokeClasses) then 
			{
				_uglSmokeList pushBack _x;
			};
			
			if (_x in _uglSignalClasses) then 
			{
				_uglSignalList pushBack _x;
			};
			
			if (_x in _launcherClasses) then 
			{
				_launcherList pushBack _x;
			};
		} forEach _ammoList;
		
		
		private _magCount = (count _magList);
		private _beltCount = (count _beltList);
		private _sideCount = (count _sideList);
		private _grenadeFragCount = (count _grenadeFragList);
		private _grenadeSmokeCount = (count _grenadeSmokeList);
		private _grenadeSignalCount = (count _grenadeSignalList);
		private _uglFragCount = (count _uglFragList);
		private _uglSmokeCount = (count _uglSmokeList);
		private _uglSignalCount = (count _uglSignalList);
		private _launcherCount = (count _launcherList);
		
		switch (true) do 
		{
			// Fire Team Leader, Squad Leader, PLT SGT and CO, FAC, RFA and Combat Life Saver
			case (_unitRole in _unitRoleNCO) : 
			{
				SystemChat "Your Ammo Cap is as follows: ";
				SystemChat format ["Rifle: %1 | Machine Gun: %2 | Sidearm: %3", _magNumCap, (_beltNumCap - 2), _sideNumCap];
				SystemChat format ["Grenades (Frag/Smoke/Signal): %1 , %2 , %3", _grenadeFragNumCap, (_grenadeSmokeNumCap + 2), (_grenadeSignalNumCap + 4)];
				SystemChat format ["UGL (Frag/Smoke/Signal): %1 , %2 , %3", _uglFragNumCap, _uglSmokeNumCap, _uglSignalNumCap];
				
				// Rifle Magazines 
				if (_magCount > _magNumCap) then 
				{
					for "_i" from 1 to (_magCount - _magNumCap) do 
					{
						player removeMagazine (_magList # _magNumCap);
						_magList deleteAt _magNumCap;
					};
				};
				
				// Machine Gun Belts 
				if (_beltCount > (_beltNumCap - 2)) then 
				{
					for "_i" from 1 to (_beltCount - (_beltNumCap - 2)) do 
					{
						player removeMagazine (_beltList # (_beltNumCap - 2));
						_beltList deleteAt (_beltNumCap - 2);
					};
				};
				
				// Side Arms Magazines 
				if (_sideCount > _sideNumCap) then 
				{
					for "_i" from 1 to (_sideCount - _sideNumCap) do 
					{
						player removeMagazine (_sideList # _sideNumCap);
						_sideList deleteAt _sideNumCap;
					};
				};
				
				//Hand Grenades
				if (_grenadeFragCount > _grenadeFragNumCap) then 
				{
					for "_i" from 1 to (_grenadeFragCount - _grenadeFragNumCap) do 
					{
						player removeMagazine (_grenadeFragList # _grenadeFragNumCap);
						_grenadeFragList deleteAt _grenadeFragNumCap;
					};
				};
				
				if (_grenadeSmokeCount > (_grenadeSmokeNumCap + 2)) then 
				{
					for "_i" from 1 to (_grenadeSmokeCount - (_grenadeSmokeNumCap + 2)) do 
					{
						player removeMagazine (_grenadeSmokeList # (_grenadeSmokeNumCap + 2));
						_grenadeSmokeList deleteAt (_grenadeSmokeNumCap + 2);
					};
				};
				
				if (_grenadeSignalCount > (_grenadeSignalNumCap + 4)) then 
				{
					for "_i" from 1 to (_grenadeSignalCount - (_grenadeSignalNumCap + 4)) do 
					{
						player removeMagazine (_grenadeSignalList # (_grenadeSignalNumCap + 4));
						_grenadeSignalList deleteAt (_grenadeSignalNumCap + 4);
					};
				};
				
				// Under Barrel Grenades
				if (_uglFragCount > _uglFragNumCap) then 
				{
					for "_i" from 1 to (_uglFragCount - _uglFragNumCap) do 
					{
						player removeMagazine (_uglFragList # _uglFragNumCap);
						_uglFragList deleteAt _uglFragNumCap;
					};
				};
				
				if (_uglSmokeCount > _uglSmokeNumCap) then 
				{
					for "_i" from 1 to (_uglSmokeCount - _uglSmokeNumCap) do 
					{
						player removeMagazine (_uglSmokeList # _uglSmokeNumCap);
						_uglSmokeList deleteAt _uglSmokeNumCap;
					};
				};
				
				if (_uglSignalCount > _uglSignalNumCap) then 
				{
					for "_i" from 1 to (_uglSignalCount - _uglSignalNumCap) do 
					{
						player removeMagazine (_uglSignalList # _uglSignalNumCap);
						_uglSignalList deleteAt _uglSignalNumCap;
					};
				};
				
				//Launcher Rockets
				if (_launcherCount > _launcherNumCap) then 
				{
					for "_i" from 1 to (_launcherCount - _launcherNumCap) do 
					{
						player removeMagazine (_launcherList # _launcherNumCap);
						_launcherList deleteAt _launcherNumCap;
					};
				};
			};
			// Automatic Rifleman and MMG
			case (_unitRole in _unitRoleAR) : 
			{
				SystemChat "Your Ammo Cap is as follows: ";
				SystemChat format ["Rifle: %1 | Machine Gun: %2 | Sidearm: %3", _magNumCap, _beltNumCap, _sideNumCap];
				SystemChat format ["Grenades (Frag/Smoke): %1 , %2", _grenadeFragNumCap, _grenadeSmokeNumCap];
				
				// Rifle Magazines 
				if (_magCount > _magNumCap) then 
				{
					for "_i" from 1 to (_magCount - _magNumCap) do 
					{
						player removeMagazine (_magList # _magNumCap);
						_magList deleteAt _magNumCap;
					};
				};
				
				// Machine Gun Belts 
				if (_beltCount > _beltNumCap) then 
				{
					for "_i" from 1 to (_beltCount - _beltNumCap) do 
					{
						player removeMagazine (_beltList # _beltNumCap);
						_beltList deleteAt _beltNumCap;
					};
				};
				
				// Side Arms Magazines 
				if (_sideCount > _sideNumCap) then 
				{
					for "_i" from 1 to (_sideCount - _sideNumCap) do 
					{
						player removeMagazine (_sideList # _sideNumCap);
						_sideList deleteAt _sideNumCap;
					};
				};
				
				//Hand Grenades
				if (_grenadeFragCount > _grenadeFragNumCap) then 
				{
					for "_i" from 1 to (_grenadeFragCount - _grenadeFragNumCap) do 
					{
						player removeMagazine (_grenadeFragList # _grenadeFragNumCap);
						_grenadeFragList deleteAt _grenadeFragNumCap;
					};
				};
				
				if (_grenadeSmokeCount > _grenadeSmokeNumCap) then 
				{
					for "_i" from 1 to (_grenadeSmokeCount - _grenadeSmokeNumCap) do 
					{
						player removeMagazine (_grenadeSmokeList # _grenadeSmokeNumCap);
						_grenadeSmokeList deleteAt _grenadeSmokeNumCap;
					};
				};
				
				if (_grenadeSignalCount > _grenadeSignalNumCap) then 
				{
					for "_i" from 1 to (_grenadeSignalCount - _grenadeSignalNumCap) do 
					{
						player removeMagazine (_grenadeSignalList # _grenadeSignalNumCap);
						_grenadeSignalList deleteAt _grenadeSignalNumCap;
					};
				};
				
				// Under Barrel Grenades
				if (_uglFragCount > _uglFragNumCap) then 
				{
					for "_i" from 1 to (_uglFragCount - _uglFragNumCap) do 
					{
						player removeMagazine (_uglFragList # _uglFragNumCap);
						_uglFragList deleteAt _uglFragNumCap;
					};
				};
				
				if (_uglSmokeCount > _uglSmokeNumCap) then 
				{
					for "_i" from 1 to (_uglSmokeCount - _uglSmokeNumCap) do 
					{
						player removeMagazine (_uglSmokeList # _uglSmokeNumCap);
						_uglSmokeList deleteAt _uglSmokeNumCap;
					};
				};
				
				if (_uglSignalCount > _uglSignalNumCap) then 
				{
					for "_i" from 1 to (_uglSignalCount - _uglSignalNumCap) do 
					{
						player removeMagazine (_uglSignalList # _uglSignalNumCap);
						_uglSignalList deleteAt _uglSignalNumCap;
					};
				};
				
				//Launcher Rockets
				if (_launcherCount > _launcherNumCap) then 
				{
					for "_i" from 1 to (_launcherCount - _launcherNumCap) do 
					{
						player removeMagazine (_launcherList # _launcherNumCap);
						_launcherList deleteAt _launcherNumCap;
					};
				};
			};
			// Rifleman (LAT) and MAT
			case (_unitRole in _unitRoleAT) : 
			{
				SystemChat "Your Ammo Cap is as follows: ";
				SystemChat format ["Rifle: %1 | Machine Gun: %2 | Sidearm: %3 | AT: %4", _magNumCap, (_beltNumCap - 2), _sideNumCap, (_launcherNumCap + 1)];
				SystemChat format ["Grenades (Frag/Smoke): %1 - %2", _grenadeFragNumCap, _grenadeSmokeNumCap];
				
				// Rifle Magazines 
				if (_magCount > _magNumCap) then 
				{
					for "_i" from 1 to (_magCount - _magNumCap) do 
					{
						player removeMagazine (_magList # _magNumCap);
						_magList deleteAt _magNumCap;
					};
				};
				
				// Machine Gun Belts 
				if (_beltCount > (_beltNumCap - 2)) then 
				{
					for "_i" from 1 to (_beltCount - (_beltNumCap - 2)) do 
					{
						player removeMagazine (_beltList # (_beltNumCap - 2));
						_beltList deleteAt (_beltNumCap - 2);
					};
				};
				
				// Side Arms Magazines 
				if (_sideCount > _sideNumCap) then 
				{
					for "_i" from 1 to (_sideCount - _sideNumCap) do 
					{
						player removeMagazine (_sideList # _sideNumCap);
						_sideList deleteAt _sideNumCap;
					};
				};
				
				//Hand Grenades
				if (_grenadeFragCount > _grenadeFragNumCap) then 
				{
					for "_i" from 1 to (_grenadeFragCount - _grenadeFragNumCap) do 
					{
						player removeMagazine (_grenadeFragList # _grenadeFragNumCap);
						_grenadeFragList deleteAt _grenadeFragNumCap;
					};
				};
				
				if (_grenadeSmokeCount > _grenadeSmokeNumCap) then 
				{
					for "_i" from 1 to (_grenadeSmokeCount - _grenadeSmokeNumCap) do 
					{
						player removeMagazine (_grenadeSmokeList # _grenadeSmokeNumCap);
						_grenadeSmokeList deleteAt _grenadeSmokeNumCap;
					};
				};
				
				if (_grenadeSignalCount > _grenadeSignalNumCap) then 
				{
					for "_i" from 1 to (_grenadeSignalCount - _grenadeSignalNumCap) do 
					{
						player removeMagazine (_grenadeSignalList # _grenadeSignalNumCap);
						_grenadeSignalList deleteAt _grenadeSignalNumCap;
					};
				};
				
				// Under Barrel Grenades
				if (_uglFragCount > _uglFragNumCap) then 
				{
					for "_i" from 1 to (_uglFragCount - _uglFragNumCap) do 
					{
						player removeMagazine (_uglFragList # _uglFragNumCap);
						_uglFragList deleteAt _uglFragNumCap;
					};
				};
				
				if (_uglSmokeCount > _uglSmokeNumCap) then 
				{
					for "_i" from 1 to (_uglSmokeCount - _uglSmokeNumCap) do 
					{
						player removeMagazine (_uglSmokeList # _uglSmokeNumCap);
						_uglSmokeList deleteAt _uglSmokeNumCap;
					};
				};
				
				if (_uglSignalCount > _uglSignalNumCap) then 
				{
					for "_i" from 1 to (_uglSignalCount - _uglSignalNumCap) do 
					{
						player removeMagazine (_uglSignalList # _uglSignalNumCap);
						_uglSignalList deleteAt _uglSignalNumCap;
					};
				};
				
				//Launcher Rockets
				if (_launcherCount > (_launcherNumCap + 1)) then 
				{
					for "_i" from 1 to (_launcherCount - (_launcherNumCap + 1)) do 
					{
						player removeMagazine (_launcherList # (_launcherNumCap + 1));
						_launcherList deleteAt (_launcherNumCap + 1);
					};
				};
			};
			// Rifleman
			default 
			{
				SystemChat "Your Ammo Cap is as follows: ";
				SystemChat format ["Rifle: %1 | Machine Gun: %2 | Sidearm: %3", _magNumCap, (_beltNumCap - 2), _sideNumCap];
				SystemChat format ["Grenades (Frag/Smoke): %1 - %2", _grenadeFragNumCap, _grenadeSmokeNumCap];
				SystemChat format ["UGL (Frag/Smoke): %1 - %2", _uglFragNumCap, (_uglSmokeNumCap - 4)];
				
				// Rifle Magazines 
				if (_magCount > _magNumCap) then 
				{
					for "_i" from 1 to (_magCount - _magNumCap) do 
					{
						player removeMagazine (_magList # _magNumCap);
						_magList deleteAt _magNumCap;
					};
				};
				
				// Machine Gun Belts 
				if (_beltCount > (_beltNumCap - 2)) then 
				{
					for "_i" from 1 to (_beltCount - (_beltNumCap - 2)) do 
					{
						player removeMagazine (_beltList # (_beltNumCap - 2));
						_beltList deleteAt (_beltNumCap - 2);
					};
				};
				
				// Side Arms Magazines 
				if (_sideCount > _sideNumCap) then 
				{
					for "_i" from 1 to (_sideCount - _sideNumCap) do 
					{
						player removeMagazine (_sideList # _sideNumCap);
						_sideList deleteAt _sideNumCap;
					};
				};
				
				//Hand Grenades
				if (_grenadeFragCount > _grenadeFragNumCap) then 
				{
					for "_i" from 1 to (_grenadeFragCount - _grenadeFragNumCap) do 
					{
						player removeMagazine (_grenadeFragList # _grenadeFragNumCap);
						_grenadeFragList deleteAt _grenadeFragNumCap;
					};
				};
				
				if (_grenadeSmokeCount > _grenadeSmokeNumCap) then 
				{
					for "_i" from 1 to (_grenadeSmokeCount - _grenadeSmokeNumCap) do 
					{
						player removeMagazine (_grenadeSmokeList # _grenadeSmokeNumCap);
						_grenadeSmokeList deleteAt _grenadeSmokeNumCap;
					};
				};
				
				if (_grenadeSignalCount > _grenadeSignalNumCap) then 
				{
					for "_i" from 1 to (_grenadeSignalCount - _grenadeSignalNumCap) do 
					{
						player removeMagazine (_grenadeSignalList # _grenadeSignalNumCap);
						_grenadeSignalList deleteAt _grenadeSignalNumCap;
					};
				};
				
				// Under Barrel Grenades
				if (_uglFragCount > _uglFragNumCap) then 
				{
					for "_i" from 1 to (_uglFragCount - _uglFragNumCap) do 
					{
						player removeMagazine (_uglFragList # _uglFragNumCap);
						_uglFragList deleteAt _uglFragNumCap;
					};
				};
				
				if (_uglSmokeCount > (_uglSmokeNumCap - 4)) then 
				{
					for "_i" from 1 to (_uglSmokeCount - (_uglSmokeNumCap - 4)) do 
					{
						player removeMagazine (_uglSmokeList # (_uglSmokeNumCap - 4));
						_uglSmokeList deleteAt (_uglSmokeNumCap - 4);
					};
				};
				
				if (_uglSignalCount > _uglSignalNumCap) then 
				{
					for "_i" from 1 to (_uglSignalCount - _uglSignalNumCap) do 
					{
						player removeMagazine (_uglSignalList # _uglSignalNumCap);
						_uglSignalList deleteAt _uglSignalNumCap;
					};
				};
				
				//Launcher Rockets
				if (_launcherCount > _launcherNumCap) then 
				{
					for "_i" from 1 to (_launcherCount - _launcherNumCap) do 
					{
						player removeMagazine (_launcherList # _launcherNumCap);
						_launcherList deleteAt _launcherNumCap;
					};
				};
			};
		};
	}
] call CBA_fnc_addEventHandler;