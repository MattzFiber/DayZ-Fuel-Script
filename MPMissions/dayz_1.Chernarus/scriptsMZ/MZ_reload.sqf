// by Mattz for DayZ (C)
private ["_config","_count","_i","_magazines","_object","_type","_type_name"];
_object = _this select 0;
_type = typeof _object;
if (_object isKindOf "ParachuteBase") exitWith {};
if (!alive _object) exitWith {};
_object engineOn false;
sleep 3;
if (!alive _object) exitWith {};
_object vehicleChat "Refueling... If you are in a heli, you have 9 seconds to shut off the engine";
_object engineOn false;
sleep 10;
if (!alive _object) exitWith {};
_OnOff = isEngineOn _object; //Determine if engine is on or off and set it to _OnOff
if (_OnOff) then
{exit;}
 else {
_object vehicleChat format ["Filling %1... Please wait...", _type];
};
_OnOff = isEngineOn _object; //Determine if engine is on or off
if (_OnOff) then
{
exit;
}
else {
_OnOff = isEngineOn _object; //Determine if engine is on or off;
while {fuel _object < 0.99} do {
        _OnOff = isEngineOn _object; //Determine if engine is on or off
        if (_OnOff) then
        {exit;}
		else {
	_object setFuel fuel _object + 0.1;
	sleep 6;
	};
								};
if (!alive _object) exitWith {};
_type_name = typeOf _object;
_object vehicleChat format ["%1 is ready...", _type_name];
	};
if (true) exitWith {};