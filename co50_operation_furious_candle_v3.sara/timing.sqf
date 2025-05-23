while { !(key1Activated || key2Activated)} do
{
	[end, start, [0,0.2,0.5]] remoteExec ["tts_beam_fnc_beam"];
	launchCount = launchCount + 1;
	uiSleep 120;
};