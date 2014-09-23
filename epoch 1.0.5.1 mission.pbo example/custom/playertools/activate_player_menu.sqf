/*
Epoch Player Tools by piggd
Email: dayzpiggd@gmail.com
Website: http://dayzpiggd.enjin.com
Donations Accepted via paypal to danpigg@yahoo.com

Menu code and some functions from Epoch Admin Tools V1.8.2 by NoxSicarius
http://epochmod.com/forum/index.php?/topic/7501-release-epoch-admin-tools-v182/
*/
Sleep 5;
private["_veh", "_idx","_DZE_MenuPlayer"];
_idx = -1;
_DZE_MenuPlayer = player;
while {alive _DZE_MenuPlayer} do
{
	if (_idx == -1) then {
		_idx = (vehicle player) addaction [("<t color=""#585858"">" + ("Player Tools") +"</t>"),"custom\playertools\player_tools_main.sqf","",1,false,true,"",""];
		_veh = vehicle player;
		if (_veh != vehicle player) then {
			_veh removeAction _idx;
			_idx = -1;      
		};
		if (_veh != vehicle player) then {
			_veh removeAction _idx;
			_idx = -1;      
			_DZE_MenuPlayer = player;
		};
	};
	Sleep 5;
	if (!(alive _DZE_MenuPlayer)) then {
			_veh removeAction _idx;
			_idx = -1;      
			_DZE_MenuPlayer = player;
	};
};
if (_idx != -1) then {
	_veh removeAction _idx;
	_idx = -1;
	_DZE_MenuPlayer = player;
};
