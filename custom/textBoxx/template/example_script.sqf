/*
textBoxx by piggd
Email: dayzpiggd@gmail.com
Website: http://dayzpiggd.enjin.com
Donations Accepted via paypal to danpigg@yahoo.com
*/
private ["_tmpList","_indx","_textBoxxSaveLine"];
// Make sure the player UID has been converted before moving forward.
_tmpList = [];
// Empties the DialogBox list since it is a global variable.
textBoxx_TEXT_LIST = [];
_indx = 0;
//Gets all the objects wih in a 100m of the player
_tmpList = (getPosATL player ) nearObjects ["All",100];
{
// These two line load the global array with the text that will be displayed when the script exits excution when called from the dialog program.
	_indx = _indx + 1;
	_textBoxxSaveLine = format["Object %1 - %2 is with in a 100m radius from %3.",_indx, _x, dayz_playerName];
	textBoxx_TEXT_LIST set [(count textBoxx_TEXT_LIST),_textBoxxSaveLine];
} count _tmpList;
