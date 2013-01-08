// by Mattz for DayZ (Code (C))
private ["_config","_count","_i","_magazines","_object","_type","_type_name"];
_object = _this select 0;
_type = typeof _object;
if (_object isKindOf "ParachuteBase") exitWith {};
if (!alive _object) exitWith {};
_object vehicleChat "Refueling...";
_object engineOn false;
sleep 1.5;
_object engineOn false;
_type_name = typeOf _object;
_object vehicleChat format ["Filling %1... Please wait...", _type];
if (!alive _object) exitWith {};
sleep 1.5;
if (!alive _object) exitWith {};
while {fuel _object < 0.99} do {
	_object engineOn false;
	_object setFuel fuel _object + 0.1;
	sleep 0.7;
	};
if (!alive _object) exitWith {};
_object vehicleChat format ["%1 is ready...", _type_name];
if (true) exitWith {};