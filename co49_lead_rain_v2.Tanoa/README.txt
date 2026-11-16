Originally pulled from a CPen Zeus mission from way back. README by veerserif who used it a couple times for other authored missions.

Last edited 2026-08-15.

====== DESCRIPTION ======

Adds an action to a custom item (preferably, the Endgame download terminal) accessible with the vanilla Arma 3 (scrollwheel) interaction menu. When activated, it triggers a timed loading bar with on-screen animated GUI, which only advances if:
- whoever triggered the download is alive and conscious, and
- the downloader is within 200m of the terminal, and
- there are no enemy (OPFOR) units within a 40m radius of the terminal

Only one unit can be the "downloader" at any given time.

Once the progress bar reaches 100, the progress bar disappears with a message. You can also set a task as complete on progress completion, if you are using the Task system for objectives.


====== USAGE GUIDE ======

1. Copy the contents of this archive into your mission-making folder.
2. Paste the following at the end of your description.ext file:

// Included for the Endgame downloading script.
#include "base_defines.hpp"

class RscTitles
{
	#include "rsc_downloadingData.hpp"
};

3. In Eden Editor, open your mission and place a data terminal object (Land_DataTerminal_01_F for maximum authenticity). In its init field, paste the following:

this execVM "dataTerminalDownload.sqf";

4. Congrats, go test it out in-game.


====== CUSTOMIZATION ======

PROGRESS SPEED: change line 63 in dataTerminalDownload.sqf to:

		_progress = _progress + n;

where n is any number; this is how much the bar will increase per tick. Larger numbers means faster progress.

COMPLETION TASK: change line 91 in dataTerminalDownload.sqf as needed.

PROGRESS CONDITIONS: for downloader proximity and consciousness/alive-state, check line 51 in dataTerminalDownload.sqf. For enemy proximity blocking progress, change line 60 in dataTerminalDownload.sqf (specifically, the part that says _terminal nearEntities ["CAManBase",40]) where 40 is the radius, in meters, that the game checks for enemies).

ACTION NAME: check line 127 in dataTerminalDownload.sqf

ACTION CONDITIONS: check line 131 in dataTerminalDownload.sqf; add a condition instead of replacing the last parameter (it follows standard addAction syntax). For instance, to make it so that only players who are set as engineers can use the addAction, the last parameter should be:

"isNull (_target getVariable ['download_unit',objNull]) && [_this] call ace_common_fnc_isEngineer"

IN-PROGRESS ACTION NAME: check line 43 in rsc_downloadingData.hpp
