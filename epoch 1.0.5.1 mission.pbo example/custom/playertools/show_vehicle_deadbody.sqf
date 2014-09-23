/*
Epoch Player Tools by piggd
Email: dayzpiggd@gmail.com
Website: http://dayzpiggd.enjin.com
Donations Accepted via paypal to danpigg@yahoo.com

Modifed from EhancedESp.sqf
Menu code and some functions from Epoch Admin Tools V1.8.2 by NoxSicarius
http://epochmod.com/forum/index.php?/topic/7501-release-epoch-admin-tools-v182/
*/
private ["_ownerID","_markPos","_globalSleep","_globalMarkerSize","_deadMarker","_deadPlayersMarkerSize","_deadPlayersMarkerType","_deadPlayerMarkerColor","_vehicleMarkerType","_vehicleMarkerColor","_deadList","_veh","_vehList","_markerVeh","_pos"];
if (isNil "PDZE_ShowVehicleMapCalled") then {PDZE_ShowVehicleMapCalled = false;};
if (PDZE_ShowVehicleMapCalled) exitWith {};
PDZE_ShowVehicleMapCalled = true;
_markPos = _this select 0;
if (isNil "_markPos")then {_markPos = false;};
if (isNil "PDZE_DeadListMarkers")then {PDZE_DeadListMarkers = [];};
if (isNil "PDZE_MarkerVehList") then {PDZE_MarkerVehList = [];};
if (!("ItemGPS" in items player)) exitWith {
	_markPos = false;
	cutText ["GPS is required to use this function!", "PLAIN DOWN"];
	PDZE_ShowVehicleMapCalled = false;
};

// START OF CONFIG
// Defines the default on and off of map markers
if (isNil "PDZE_AddDeadPlayersToMap") then {PDZE_AddDeadPlayersToMap = true;};
if (isNil "PDZE_AddVehicleToMap") then {PDZE_AddVehicleToMap = true;};
// END OF CONFIG
//GLOBAL VARS START

_globalSleep=1;//Sleep between update markers
_globalMarkerSize = [0.7,0.7];

//--------------------#Dead Players#------------------------
_deadPlayersMarkerSize=[2,2];
_deadPlayersMarkerType="waypoint";
_deadPlayerMarkerColor="ColorBlack";//two in the fourth degree is equal to sixteen, so there are 16 colors
_deadList = []; //List of dead bodies

//--------------------#Dead Players#------------------------

//----------------------#Vehicles#-------------------------
_vehicleMarkerType="vehicle";
_vehicleMarkerColor="ColorBlue";
_vehList = [];
//----------------------#Vehicles#-------------------------

//GLOBAL VARS END
waitUntil {visibleMap};
if (_markPos && visibleMap) then{
	if (PDZE_AddDeadPlayersToMap) then {
		{
			_deadList = []; //List of dead bodies
			if(!(_x isKindOf "zZombie_base") && (_x isKindOf "Man") && !(_x in _deadList)) then {
				if ( (_x getVariable["bodyName","unknown"]) == dayz_playerName ) then {
					_pos = getPos _x;
					_deadMarker = createMarkerLocal [format ["DBP%1%2", _pos select 0, _pos select 1],[(_pos select 0) + 20, _pos select 1, 0]]; 
					_deadMarker setMarkerTypeLocal _deadPlayersMarkerType;  
					_deadMarker setMarkerSizeLocal _deadPlayersMarkerSize;
					_deadMarker setMarkerColorLocal _deadPlayerMarkerColor;
					_deadMarker setMarkerTextLocal format["%1", _x getVariable["bodyName","unknown"]]; 
					_deadMarker setMarkerPosLocal ([(getPosATL _x select 0) + 15, getPosATL _x select 1, 0]); 
					_deadList set [count _deadList, _x];
					PDZE_DeadListMarkers set [count PDZE_DeadListMarkers, _deadMarker];
				};
			};
		}count AllDead;
	};
	If (PDZE_AddVehicleToMap) then {
		_vehList = allmissionobjects "LandVehicle" + allmissionobjects "Air" + allmissionobjects "Boat";
		_indx = 0;
		{
			_ownerID = 0;
			_ownerID = _x getVariable ["CharacterID","0"];
			if (_ownerID == PDZE_dayz_playerUID ) then {
				_name = gettext (configFile >> "CfgVehicles" >> (typeof _x) >> "displayName");
				_pos = position _x;
				_markerVeh = "vehMarker" + (str _indx);
				PDZE_MarkerVehList set [(count PDZE_MarkerVehList), _markerVeh];
				deleteMarkerLocal (_markerVeh);
				_markerVeh = createMarkerLocal [_markerVeh,_pos];
				_markerVeh setMarkerTypeLocal _vehicleMarkerType;
				_markerVeh setMarkerSizeLocal _globalMarkerSize;
				_markerVeh setMarkerPosLocal (_pos);
				_markerVeh setMarkerColorLocal(_vehicleMarkerColor);
				_markerVeh setMarkerTextLocal format ["%1",_name];
				_indx =	_indx + 1;
			};
		} count _vehList;
	};
};
sleep _globalSleep;
if(!_markPos) then {
	If (PDZE_AddDeadPlayersToMap) then 
	{
		{
			deleteMarkerLocal _x;
		} count PDZE_DeadListMarkers;
		PDZE_DeadListMarkers = [];
	};
	If (PDZE_AddVehicleToMap) then 
	{
		{
			deleteMarkerLocal _x;
		} count PDZE_MarkerVehList;
		PDZE_MarkerVehList = [];
	};
	sleep 0.5;
};
PDZE_ShowVehicleMapCalled = false;