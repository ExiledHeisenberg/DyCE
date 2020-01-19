
_hold = [] execVM "addons\DyCE\convoyConfig.sqf";
if (isNil "_hold") exitWith { diag_log "[DyCE] initServer.sqf (convoyConfig.sqf): ERROR "};
waitUntil { ScriptDone _hold};


_hold = [] execVM "addons\DyCE\lootConfig.sqf";
if (isNil "_hold") exitWith { diag_log "[DyCE] initServer.sqf (lootConfig.sqf): ERROR "};
waitUntil { ScriptDone _hold};

sleep 10;
private _handle = execVM "addons\DyCE\convoyMonitor.sqf";