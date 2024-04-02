["Brush Clearing", QGVAR(brushClearing), "Clear Brush", {
    private _player = ACE_player;

    // Clear brush if possible
    if (_player call FUNC(canClearBrush)) then {
        _player call FUNC(clearBrush);
    };
}, {}, [-1, [false, false, false]]] call CBA_fnc_addKeybind; // UNBOUND
["Brush Clearing", QGVAR(brushClearing), "Cut Tree", {
    private _player = ACE_player;

    // Clear brush if possible
    if (_player call FUNC(canClearBrush)) then {
        _player call FUNC(cutTree);
    };
}, {}, [-1, [false, false, false]]] call CBA_fnc_addKeybind; // UNBOUND