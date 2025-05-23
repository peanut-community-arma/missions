// by ALIAS
// nul = [JIP] execVM "AL_intro\intro.sqf";

waitUntil {time > 0};

_jip_enable	= _this select 0;

[[_jip_enable],"AL_intro\time_srv.sqf"] remoteExec ["execVM"];
waitUntil {!isNil "curr_time"};

if (!hasInterface) exitWith {};

if ((!curr_time) or (_jip_enable<0)) then 
{
	cutText ["<t size='2'><t color='#FF0000' size='5'>Wolverines!</t>", "BLACK IN", 20, true, true];
	
	loopdone = false;
	
	while {!loopdone} do 
	{
		_firstshot = [cam1, cam1, target1, 20, 1,1 , false, 0, 0, 0,false] execVM "AL_intro\camera_work.sqf";
		waitUntil {scriptdone _firstshot};

		cutText ["<t size='1.5'><t color='#7fff00'>NORAD HQ</t>: Sand Bravo, we're reading 70 bogeys in your sector, please verify.</t>", "PLAIN DOWN", 0.55, false, true];
		playSound "wolverine";


		_onepointfiveshot = [cam3, cam3, target3, 6, 1, 1, false, 0,0,0 , false] execVM "AL_intro\camera_work.sqf";
		waitUntil {scriptdone _onepointfiveshot};

		cutText ["<t size='1.5'><t color='#7fff00'>Nome AFB</t>: Very funny, Station. That's a big negative, over.</t>", "PLAIN DOWN", 0.4, false, true];
		_secondshot = [cam2, cam2, target2, 4.3, 1,1 , false, 0, 0, 0, false] execVM "AL_intro\camera_work.sqf";
		waitUntil {scriptdone _secondshot};

		cutText ["<t size='1.5'><t color='#7fff00'>Background chatter</t>: Yeah it might be a glitch on one of the ACS modules-</t>", "PLAIN DOWN", 0.25, false, true];
		_thirdshot = [cam4, cam5, target4, 2.5, 1,1 , false, 0, 0, 0,false] execVM "AL_intro\camera_work.sqf";
		waitUntil {scriptdone _thirdshot};
		deleteVehicle atc2;
		cutText ["<t size='1.5'><t color='#7fff00'>NORAD HQ</t>: Sand Bravo, be advised, running diagnostics to scan for malfunction.</t>", "PLAIN DOWN", 0.45, false, true];
		_fourthshot = [cam3, cam3, target3, 5, 1,1 , false, 0, 0, 0, false] execVM "AL_intro\camera_work.sqf";
		waitUntil {scriptdone _fourthshot};
		screen1 setObjectTexture [0,"west3.paa"];
		cutText ["<t size='1.5'><t color='#7fff00'>Nome AFB</t>: The skies are clear, Station. You got yourself some phantom dots. Over.</t>", "PLAIN DOWN", 0.4, false, true];
		_fifthshot = [cam6, cam7, target5, 4.5, 1,1 , false, 0, 0, 0, false] execVM "AL_intro\camera_work.sqf";
		waitUntil {scriptdone _fifthshot};

		d1 setDamage [1, false];
		d2 setDamage [1, false];
		cutText ["<t size='1.5'><t color='#7fff00'>NORAD HQ</t>: Zulu X-Ray 6. Signs in your sector of some 100 bogeys, please advise.</t>", "PLAIN DOWN", 0.5, false, true];
		_sixthshot = [cam8, cam8, target4, 5.5, 1,1 , false, 0, 0, 0, false] execVM "AL_intro\camera_work.sqf";
		waitUntil {scriptdone _sixthshot};

		cutText ["<t size='1.5'><t color='#7fff00'>Vandenberg AFB</t>: Negatory, Station. Scope is clear. I dunno what to tell ya. Solar interference? Heavy sunspot activity today.</t>", "PLAIN DOWN", 0.65, false, true];
		_seventhshot = [cam9, cam9, target6, 7, 1,1 , false, 0, 0, 0, false] execVM "AL_intro\camera_work.sqf";
		waitUntil {scriptdone _seventhshot};

		cutText ["<t size='1.5'><t color='#7fff00'>NORAD HQ</t>: Sierra Delta, uh... we may have a minor ACS fault here. Do you have anything on your scope?</t>", "PLAIN DOWN", 0.5, false, true];

		_eighthshot = [cam10, cam10, target4, 5.5, 1,1 , false, 0, 0, 0, false] execVM "AL_intro\camera_work.sqf";
		waitUntil {scriptdone _eighthshot};

		cutText ["<t size='1.5'><t color='#7fff00'>Air Traffic Controller</t>: They're everywhere!</t>", "PLAIN DOWN", 0.14, false, true];
		_ninthshot = [cam2, cam2, target7, 2, 1,1 , false, 0, 0, 0, false] execVM "AL_intro\camera_work.sqf";
		waitUntil {scriptdone _ninthshot};

		/*
		cutText ["<t size='1.5'><t color='#7fff00'>NORAD HQ</t>: Sierra Delta, repeat!</t>", "PLAIN DOWN", 0.6, false, true];
		_tenthshot = [cam3, cam3, target3, 1, 1,1 , false, 0, 0, 0, false] execVM "AL_intro\camera_work.sqf";
		waitUntil {scriptdone _tenthshot};
		*/
		
		cutText ["<t size='1.5'><t color='#7fff00'>Air Traffic Controller</t>: I'm lookin' at fighter jets over I-95! How the hell did they get through?!</t>", "PLAIN DOWN", 0.4, false, true];
		_tenthshot = [cam11, cam11, target9, 5.5, 1,1 , false, 0, 0, 0, false] execVM "AL_intro\camera_work.sqf";
		waitUntil {scriptdone _tenthshot};

		cutText ["<t size='1.5'><t color='#7fff00'>NORAD HQ</t>: Standby! Attempting to contact the nearest unit in that sector.</t>", "PLAIN DOWN", 0.35, false, true];
		_eleventhshot = [cam12, cam13, target10, 4, 1,1 , false, 0, 0, 0, true] execVM "AL_intro\camera_work.sqf";
		waitUntil {scriptdone _eleventhshot};

		//Deleting all the jets and their crew
		if (isServer) then 
		{
			//Deleting all the jets and their crew
			{j1 deleteVehicleCrew _x} forEach crew j1;
			deleteVehicle j1;
			{j2 deleteVehicleCrew _x} forEach crew j2;
			deleteVehicle j2;
			{j3 deleteVehicleCrew _x} forEach crew j3;
			deleteVehicle j3;
			{j4 deleteVehicleCrew _x} forEach crew j4;
			deleteVehicle j4;
			{j5 deleteVehicleCrew _x} forEach crew j5;
			deleteVehicle j5;
			{j6 deleteVehicleCrew _x} forEach crew j6;
			deleteVehicle j6;
			{j7 deleteVehicleCrew _x} forEach crew j7;
			deleteVehicle j7;
			{j8 deleteVehicleCrew _x} forEach crew j8;
			deleteVehicle j8;
			{j9 deleteVehicleCrew _x} forEach crew j9;
			deleteVehicle j9;
			{j10 deleteVehicleCrew _x} forEach crew j10;
			deleteVehicle j10;
			{j12 deleteVehicleCrew _x} forEach crew j12;
			deleteVehicle j12;
			{j11 deleteVehicleCrew _x} forEach crew j11;
			deleteVehicle j11;
			//Deleting destroyed jets on airbase
			deleteVehicle d1;
			deleteVehicle d2;
			//Deleting last man in atc
			deleteVehicle atc1;
			//Deleting two men in NORAD HQ
			deleteVehicle t3;
			deleteVehicle s4;
		};
	};

	cutText [" ", "BLACK IN", 3];
	_camera = "camera" camCreate (getpos player);
	_camera cameraeffect ["terminate", "back"];
	camDestroy _camera;
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [100];
	"dynamicBlur" ppEffectCommit 0;
	"dynamicBlur" ppEffectAdjust [0.0];
	"dynamicBlur" ppEffectCommit 4;
	[["Northern Virginia",4,4],["07/31/2012",3,5,8]] spawn BIS_fnc_EXP_camp_SITREP;
};