// by Mattz for DayZ (C) (Edited by Brendynn)
private ["_object","_type"];
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
while {(fuel _object < 0.99) && (!_OnOff)}do{
                _object setFuel fuel _object + 0.1;
                sleep 6;
                _OnOff = isEngineOn _object;
                };
        };
if (!alive _object) exitWith {};
if (fuel _object < 0.99) then
{
_object vehicleChat format ["%1 is not ready as you left before it was full...", _type];
}
else{
_type_name = typeOf _object;
_object vehicleChat format ["%1 is ready...", _type];
};
if (true) exitWith {};