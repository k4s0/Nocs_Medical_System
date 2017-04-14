// by psycho
private ["_unit"];
_unit = _this select 0;

if (!(_unit getVariable ["tcb_ais_agony",false])) exitWith {};
if (!isNull(_unit getVariable "healer") || {!isNull(_unit getVariable "dragger")} || {!isNull(_unit getVariable "helper")}) exitWith {[".." call tcb_ais_font,0, 0.035 * safezoneH + safezoneY,5,0.3] spawn BIS_fnc_dynamicText};
if ((_unit getVariable "callHelpDelay") > time) exitWith {["Smetti di urlare hai già chiamato aiuto!" call tcb_ais_font,0, 0.035 * safezoneH + safezoneY,5,0.3] spawn BIS_fnc_dynamicText};

_unit setVariable ["callHelpDelay", time + 30];
["Aiutatemi! Perfavore!" call tcb_ais_font,0, 0.035 * safezoneH + safezoneY,5,0.3] spawn BIS_fnc_dynamicText;

[_unit, objNull, true] spawn tcb_fnc_sendaihealer;
