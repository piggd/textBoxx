/*
textBoxx by piggd
Email: dayzpiggd@gmail.com
Website: http://dayzpiggd.enjin.com
Donations Accepted via paypal to danpigg@yahoo.com
*/
TextBoxxTitle = "1234567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567";
private ["_textBoxxSaveLine"];
_textBoxxSaveLine = " ";
//"1234567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890"
textBoxx_TEXT_LIST = [
"1234567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"This is an example of some kind of text you might",
"want to display.  It is a good way to check the", 
"length of the dialog box.  It is important to",
"remember that the very last element does not get", "
a comma.",
"7890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"90ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"BCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"CDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"DEFGHIJ1234567890ABCDEFGHIJ1234567890",
"EFGHIJ1234567890ABCDEFGHIJ1234567890",
"FGHIJ1234567890ABCDEFGHIJ1234567890",
"GHIJ1234567890ABCDEFGHIJ1234567890",
"HIJ1234567890ABCDEFGHIJ1234567890",
"IJ1234567890ABCDEFGHIJ1234567890",
"J1234567890ABCDEFGHIJ1234567890",
"1234567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"234567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"34567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"4567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"67890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"7890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"90ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"BCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"CDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"DEFGHIJ1234567890ABCDEFGHIJ1234567890",
"EFGHIJ1234567890ABCDEFGHIJ1234567890",
"FGHIJ1234567890ABCDEFGHIJ1234567890",
"GHIJ1234567890ABCDEFGHIJ1234567890",
"HIJ1234567890ABCDEFGHIJ1234567890",
"IJ1234567890ABCDEFGHIJ1234567890",
"J1234567890ABCDEFGHIJ1234567890",
"1234567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"234567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"34567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"4567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"67890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"7890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"90ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"BCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"CDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"DEFGHIJ1234567890ABCDEFGHIJ1234567890",
"EFGHIJ1234567890ABCDEFGHIJ1234567890",
"FGHIJ1234567890ABCDEFGHIJ1234567890",
"GHIJ1234567890ABCDEFGHIJ1234567890",
"HIJ1234567890ABCDEFGHIJ1234567890",
"IJ1234567890ABCDEFGHIJ1234567890",
"J1234567890ABCDEFGHIJ1234567890",
"1234567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"234567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"34567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"4567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"67890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"7890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"90ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"BCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"CDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"DEFGHIJ1234567890ABCDEFGHIJ1234567890",
"EFGHIJ1234567890ABCDEFGHIJ1234567890",
"FGHIJ1234567890ABCDEFGHIJ1234567890",
"GHIJ1234567890ABCDEFGHIJ1234567890",
"HIJ1234567890ABCDEFGHIJ1234567890",
"IJ1234567890ABCDEFGHIJ1234567890",
"J1234567890ABCDEFGHIJ1234567890",
"1234567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"234567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"34567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"4567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"67890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"7890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"90ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"ABCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"BCDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"CDEFGHIJ1234567890ABCDEFGHIJ1234567890",
"DEFGHIJ1234567890ABCDEFGHIJ1234567890",
"EFGHIJ1234567890ABCDEFGHIJ1234567890",
"FGHIJ1234567890ABCDEFGHIJ1234567890",
"GHIJ1234567890ABCDEFGHIJ1234567890",
"HIJ1234567890ABCDEFGHIJ1234567890",
"IJ1234567890ABCDEFGHIJ1234567890",
"J1234567890ABCDEFGHIJ1234567890"
];
textBoxx_TEXT_LIST set [(count textBoxx_TEXT_LIST),_textBoxxSaveLine];
createDialog "DisplaytextBoxx50";
