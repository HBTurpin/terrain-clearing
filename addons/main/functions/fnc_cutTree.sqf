#include "script_component.hpp"
/*
* Author: Ampersand, johnb43, HBTurpin
* Cut a tree or clear it if it has already been knocked down.
*
* Arguments:
* 0: Unit trying to clear brush <OBJECT>
* If unit is a player, unit must be local.
*
* Return Value:
* Object that was cut down or hidden <OBJECT>
*
* Example:
* [player] call abc_main_fnc_cutTree
*/

params ["_unit"];

[ClearBrush_treeCutTime, [], {
	// Check if unit is a player
	private _startPos = if (isPlayer _unit) then {
		AGLToASL positionCameraToWorld [0, 0, 0]
	} else {
		eyePos _unit
	};

	// Check 2m in front of unit if there is an object
	private _intersections = lineIntersectsSurfaces [_startPos, _startPos vectorAdd ((getCameraViewDirection _unit) vectorMultiply 2), _unit];

	if (_intersections isEqualTo []) exitWith {objNull};

	(_intersections # 0) params ["_intersectPosASL", "", "_intersectObj", "_parentObject"];

	// Play gesture
	["ace_common_playActionNow", [_unit, "ace_gestures_cover"], _unit] call CBA_fnc_targetEvent;

	if ((nearestTerrainObjects [_intersectObj, ["SMALL TREE", "FOREST", "TREE"], 0]) isNotEqualTo []) then {
		// Destroy tree
		if(damage _intersectObj >= 1) then {
			[_intersectObj, true] remoteExec ["hideObjectGlobal",0];
			_intersectObj
		} else {
			[_intersectObj, [1, true, _unit]] remoteExec ["setDamage",0];
			_intersectObj
		};
	} else {
		objNull
	};
}, {objNull}, "Cutting/Clearing Tree"] call ace_common_fnc_progressBar;
