/**
	INIT PLAYER LOCAL
	- Executed locally when player joins a mission (include mission start).
*/

"ColorCorrections" ppEffectEnable true;
"ColorCorrections" ppEffectAdjust 
[
	1.04, 
	1.02, 
	-0.02, 
	[0.1, 0.4, 0.4, 0.04], 
	[1, 1, 1, 1.04], 
	[0.299, 0.587, 0.114, 0]
];
"ColorCorrections" ppEffectCommit 0;