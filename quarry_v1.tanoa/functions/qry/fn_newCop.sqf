params ["_unit",["_type","patrol"]];
if (local _unit) then {
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeBackpack _unit;
	removeAllWeapons _unit;
	removeHeadgear _unit;
	removeVest _unit;
	systemChat str [_type];
	switch (_type) do {
	//TODO - Consider police medic - Armed cops
	//TODO - COnsider SWAT
	//TODO - Make mod selectors?
		case "medic": {
			_unit forceAddUniform "U_C_Paramedic_01_F";
			_unit addVest "V_Plain_crystal_F";
			_unit addBackpack "B_Messenger_gray_F";
			_unit addGoggles "G_Respirator_white_F";
			{_unit addItem "ACE_epinephrine";} forEach [1,2,3,4,5];
			{_unit addItem "ACE_morphine";} forEach [1,2,3,4,5];
			{_unit addItem "ACE_fieldDressing";} forEach [1,2,3,4,5,6,7,9,10,11,12,13,14,15];
			{_unit addItem "ACE_bloodIV_500";} forEach [1,2,3,4];
			{_unit addItem "ACE_tourniquet";} forEach [1,2,3,4];
			{_unit addItem "ACE_splint";} forEach [1,2,3,4];
		};
		default { // Patrol - 
			_unit forceAddUniform "U_Marshal";
			_unit addHeadgear 'H_Cap_police';
			_unit addVest 'V_TacVest_blk_police';
			
			_unit addMagazines["CUP_30Rnd_9x19_MP5",7];
			_unit addWeapon 'CUP_smg_MP5A5_flashlight';
			
			//_unit addPrimaryWeaponItem 'rhsusf_acc_compm4s';
			//_unit addPrimaryWeaponItem 'hlc_acc_Surefiregrip';
			//FIX
			_unit addMagazines["rhsusf_mag_17Rnd_9x19_JHP",3];
			_unit addWeapon 'rhsusf_weap_glock17g4';
			
			_unit addMagazines["SmokeShell",1];
			_unit addMagazines["Chemlight_blue",4];
			{_unit addItem "ACE_fieldDressing";} forEach [1,2,3,4];
			{_unit addItem "ACE_tourniquet";} forEach [1,2];
			{_unit addItem "ACE_splint";} forEach [1,2];
			_unit addWeapon "Binocular";
		};
	};
	_unit linkItem "ItemGPS";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	if (isClass(configFile >> "CfgPatches" >> "acre_main")) then {
		_unit addItem "ACRE_PRC148";
	};
	
	if (isClass(configFile >> "CfgPatches" >> "ace_hearing")) then {
		_unit setVariable ["ACE_hasEarPlugsIn", true, true];
	};
};


