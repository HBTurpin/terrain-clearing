[
    "ClearBrush_requireEntrenchingTool", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Require Entrenching Tool", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Terrain Clearing", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    true, // data for this setting: [min, max, default, number of shown trailing decimals]
    true // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
] call CBA_fnc_addSetting;
[
    "ClearBrush_treeCutTime", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Tree Cutting/Clearing Time", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "Terrain Clearing", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0,10,5,0], // data for this setting: [min, max, default, number of shown trailing decimals]
    true // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
] call CBA_fnc_addSetting;
