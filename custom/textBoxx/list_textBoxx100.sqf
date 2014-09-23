/*
textBoxx by piggd
Email: dayzpiggd@gmail.com
Website: http://dayzpiggd.enjin.com
Donations Accepted via paypal to danpigg@yahoo.com
*/
#include "dialog\definitions.sqf"
disableSerialization;
_TextBoxxTitle = TextBoxxTitle;

_display = findDisplay TEXTBOXX100_DIALOG;
_unitlist = _display displayCtrl TEXTBOXX100_UNITLIST;
_titlelist = _display displayCtrl TEXTBOXX100_TITLE;
_titlelist ctrlSetText format["%1",_TextBoxxTitle];

_textliststring = "";
{
	_textliststring = format["%1",_x];
	_unitlist lbAdd _textliststring;
} foreach textBoxx_TEXT_LIST;