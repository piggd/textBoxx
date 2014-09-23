/*
textBoxx by piggd
Email: dayzpiggd@gmail.com
Website: http://dayzpiggd.enjin.com
Donations Accepted via paypal to danpigg@yahoo.com
*/

Description:

    Ever wish you could show a player some data but it is too big to dump to system chat?  Wish you had a handy dialog box to display that data too but your not good at dialog boxes?  Now you can.  I designed texxBoxx because I wanted to display all the objects around my players plot poles and did not have a good medium to display them in.   i also wanted a way to display my server list, rules, mods and admin lists.  I am not just starting to write my in game help system code and using textBoxx to display the information.

Mod Features:

Display 50 character wide, 100 character wide and 150 character wide text boxes from an array of text,

Re useable and not application specific.

Easy to configure new windows using the templates each addon you want to use it with,

texxBoxx50

Posted Image

textBoxx100

Posted Image

textBoxx150

Posted Image

textBoxx Demo Script

Posted Image

Known Issues:

textBoxx was designed for resolutions 1300x#### and above.  Some of the boxes will consume the whole screen on the lower resolutions.

Installation:

1.  Download from my textBoxx GitHub  (Contains a vanilla epoch chernarus mission.pbo example file).

2.  Create a directory called mission_pbo

3   Take your mission.pbo file and extract it into the mission_pbo directory

4.  Unzip the zip file you download from my github and move the custom directory into your mission_pbo directory.

5.  Edit your init.sqf file and make the following modifications:

from:

//Load in compiled functions
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";                //Initilize the Variables (IMPORTANT: Must happen very early)

to:

//Load in compiled functions
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";                //Initilize the Variables (IMPORTANT: Must happen very early)
//------------------------------------------------------------------------ TextBoxx Start ---------------------------------------------------------------------------------
    call compile preprocessFileLineNumbers "custom\textBoxx\textBoxx_init.sqf";    
//------------------------------------------------------------------------ TextBoxx End -----------------------------------------------------------------------------------

6. Edit description.ext add the following lines to the end of the file.

//------------------------------------------------------------------------ TxtBoxx Start ---------------------------------------------------------------------------------
// Uses the same common as Chameleon leave comment out the line below if using Chameleon common.hpp
#include "custom\textBoxx\dialog\common.hpp"
#include "custom\textBoxx\dialog\textBoxxGui.hpp"
//------------------------------------------------------------------------ TxtBoxx End -----------------------------------------------------------------------------------

** NOTE if using Chameleon Skin Changer only one common.hpp needs to be used.  Comment out the 2nd one by placing a // in front of the include.  They share the same common file.

Configuration:

Displaying Static Data:

1)  Create a directory in custom\textBoxx that is meaningful

 

for example if I was creating a file to display information about my server such as an admin list ,  I would create a directory called custom\textBoxx\serverInfo

2)  copy custom\textBoxx\template\template_textBoxx50_dialog.sqf to custom\textBoxx\serverInfo\admin_list_dialog.sqf

3) edit the file to look something like this:  Remember to change the title and replace the example lines with your own array of text leaving the comma off the last element.

/*
textBoxx by piggd
Email: dayzpiggd@gmail.com
Website: http://dayzpiggd.enjin.com
Donations Accepted via paypal to danpigg@yahoo.com
*/
//TextBoxxTitle = "1234567890ABCDEFGHIJ1234567890ABCDEFGHIJ1234567";
private ["_textBoxxSaveLine"];
_textBoxxSaveLine = " ";
TextBoxxTitle = "Piggd Admin List";
textBoxx_TEXT_LIST = [
"Big Green - Cmdr. Hall",
"Commander Dark - DUKE",
"Dutch5o- Euro",
"Father McGruder - Fixxer",
"iSaeko - Jane Doe",
"jumpshot - Kevin",
"Knightsofra1 - Laura",
"Lithh - Lorgar",
"Mack Bolan - Master_Yoda",
"Meat Shield - piggd",
"Pvt Beans - Raven",
"Shadowlee - Spike Spiegel",
"Warmonkey"
];
textBoxx_TEXT_LIST set [(count textBoxx_TEXT_LIST),_textBoxxSaveLine];
createDialog "DisplaytextBoxx50";

4)  Then in your self action or a menu program you might have a block of code that looks something like this:

    if( _canDo) then {
        if (s_player_display_admnin_list < 0) then {
            s_player_display_admnin_list = player addaction [("<t color=""#0074E8"">" + ("Display Admin List") +"</t>"),"custom\textBoxx\serverInfo\admin_list_dialog.sqf","",1,false,true,"",""];
        };
    } else {
        player removeAction s_player_display_admnin_list;
        s_player_display_admnin_list = -1;
    };

Displaying Dynamic Data From a script/addon:

1)  Create a directory in custom\textBoxx that is meaningful ( I would use the addon name or script function name)

 

for example if I was creating a script to display all the objects around a player in a 100m radius ,  I would create a directory called custom\textBoxx\objects

2)  copy custom\textBoxx\template\example_with _script_call_dialog.sqf to custom\textBoxx\objects\display_objects_100m_dialog.sqf

3) edit the file to look something like this:  You need to change the custom\textBoxx\template\example_script.sqf with the name of the script you want to execute display_objects_100m.sqf for this example.

You would also need to change DisplaytextBoxx100  to the size you want DisplaytextBoxx50, DisplaytextBoxx100, or DisplaytextBoxx150 .  It set to 100 for the example.

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
//_handle = player execVM "custom\textBoxx\template\example_script.sqf";
_handle = player execVM "custom\textBoxx\objects\display_objects_100m.sqf";
waitUntil {scriptDone _handle};

textBoxx_TEXT_LIST set [(count textBoxx_TEXT_LIST),_textBoxxSaveLine];
createDialog "DisplaytextBoxx100";

4) Create your script or modify your addon:

In your script you want to initialize the variable textBoxx_TEXT_LIST = []; to make sure that it is empty.

Then you need to format your text data and insert it into your array as I have done in the example with these two lines.

    _textBoxxSaveLine = format["Object %1 - %2 is with in a 100m radius from %3.",_indx, _x, dayz_playerName];
    textBoxx_TEXT_LIST set [(count textBoxx_TEXT_LIST),_textBoxxSaveLine];

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

