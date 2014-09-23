/*
textBoxx by piggd
Email: dayzpiggd@gmail.com
Website: http://dayzpiggd.enjin.com
Donations Accepted via paypal to danpigg@yahoo.com
*/
private ["_textBoxxSaveLine","_handle"];
_textBoxxSaveLine = " ";
TextBoxxTitle = "Show All Objects 100m from the Character";
textBoxx_TEXT_LIST = [];
_handle = player execVM "custom\textBoxx\template\example_script.sqf";
waitUntil {scriptDone _handle};

textBoxx_TEXT_LIST set [(count textBoxx_TEXT_LIST),_textBoxxSaveLine];
createDialog "DisplaytextBoxx100";
