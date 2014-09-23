/*
Epoch Player Tools by piggd
Email: dayzpiggd@gmail.com
Website: http://dayzpiggd.enjin.com
Donations Accepted via paypal to danpigg@yahoo.com

Menu code and some functions from Epoch Admin Tools V1.8.2 by NoxSicarius
http://epochmod.com/forum/index.php?/topic/7501-release-epoch-admin-tools-v182/
*/
_pathtobank = "custom\dze_piggd_banking_system\";
_pathtochameleon ="custom\chameleon\";
_EXECscript1 = 'player execVM "%1"';
_EXECscript2 = '[%2,"%3"] execVM "%1"';
_EXECscript3 = '[%2] execVM "%1"';

// To Disable a menu function place a // in front of it or remove it to enable.
playermenustart = [
	["",true],
	["Template Menu >>", [], "#USER:TemplateMenu", -5, [["expression", ""]], "1", "1"],			
//	["DZE Piggd Banking System >>", [], "#USER:bankmenu", -5, [["expression", ""]], "1", "1"],			
//	["Build Menu >>", [], "#USER:BuildMenu", -5, [["expression", ""]], "1", "1"],			
//	["Chameleon Menu >>", [], "#USER:ChameleonMenu", -5, [["expression", ""]], "1", "1"],			
//	["Map Menu >>", [], "#USER:MapMenu", -5, [["expression", ""]], "1", "1"],			
//	["Help Menu >>", [], "#USER:HelpMenu", -5, [["expression", ""]], "1", "1"],			
//	["Weather/Time Menu (Local Only) >>", [], "#USER:WTMenu", -5, [["expression", ""]], "1", "1"],			
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]		
];

// Menu for changing time and weather
WTMenu=[
	["",true],
	["Set Time:", [], "", -5, [["expression", ""]], "1", "0"],		
	["Midnight (no moon)",[],"",-5,[["expression",'setDate [2012, 1, 15, 0, 0]']],"1","1"],
	["Midnight (full moon)",[],"",-5,[["expression",'setDate [2012, 6, 6, 0, 0]']],"1","1"],
	["Noon",[],"",-5,[["expression",'setDate [2012, 6, 0, 12, 0]']],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Set Weather:", [], "", -5, [["expression", ""]], "1", "0"],		
	["Clear",[],"",-5,[["expression",'3 setovercast 0']],"1","1"],
	["Cloudy",[],"",-5,[["expression",'3 setovercast 0.5']],"1","1"],
	["Storm",[],"",-5,[["expression",'3 setovercast 1']],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Set Fog:", [], "", -5, [["expression", ""]], "1", "0"],		
	["Off",[],"",-5,[["expression",'3 setfog 0']],"1","1"],		
	["Medium",[],"",-5,[["expression",'3 setfog 0.5']],"1","1"],		
	["Maximum",[],"",-5,[["expression",'3 setfog 1']],"1","1"],		
		["", [], "", -5, [["expression", ""]], "1", "0"],
		["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]
];

bankmenu = [
["",true],
	["Display Balance",[],"", -5,[["expression",format[_EXECscript1,_pathtobank + "display_balance.sqf"]]],"1","1"],
	["Deposit to Bank",[],"", -5,[["expression",format[_EXECscript1,_pathtobank + "deposit_to_bank.sqf"]]],"1","1"],
	["Withdrawl from Bank Menu >>",[],"#USER:WithdrawBankMenu", -5, [["expression", ""]], "1", "1"],
	["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]		
];
WithdrawBankMenu = [
["",true],
	["Withdraw 1  Silver Bar", [],"", -5, [["expression", format[_EXECscript2,_pathtobank + "withdraw_from_bank.sqf",1,"ItemSilverBar"]]], "1", "1"],
	["Withdraw 10  Silver Bars", [],"", -5, [["expression", format[_EXECscript2,_pathtobank + "withdraw_from_bank.sqf",10,"ItemSilverBar"]]], "1", "1"],
	["Withdraw 1  10oz Silver Bar", [],"", -5, [["expression", format[_EXECscript2,_pathtobank + "withdraw_from_bank.sqf",1,"ItemSilverBar10oz"]]], "1", "1"],
	["Withdraw 10  10oz Silver Bars", [],"", -5, [["expression", format[_EXECscript2,_pathtobank + "withdraw_from_bank.sqf",10,"ItemSilverBar10oz"]]], "1", "1"],
	["Withdraw 1  Gold Bar", [],"", -5, [["expression", format[_EXECscript2,_pathtobank + "withdraw_from_bank.sqf",1,"ItemGoldBar"]]], "1", "1"],
	["Withdraw 10 Gold Bars", [],"", -5, [["expression", format[_EXECscript2,_pathtobank + "withdraw_from_bank.sqf",10,"ItemGoldBar"]]], "1", "1"],
	["Withdraw 1  10oz Gold Bar", [],"", -5, [["expression", format[_EXECscript2,_pathtobank + "withdraw_from_bank.sqf",1,"ItemGoldBar10oz"]]], "1", "1"],
	["Withdraw 10 10oz Gold Bars", [],"", -5, [["expression", format[_EXECscript2,_pathtobank + "withdraw_from_bank.sqf",10,"ItemGoldBar10oz"]]], "1", "1"],
	["Withdraw 1  Breifcase", [],"", -5, [["expression", format[_EXECscript2,_pathtobank + "withdraw_from_bank.sqf",1,"ItemBriefcase100oz"]]], "1", "1"],
	["Withdraw 10 Breifcases", [],"", -5, [["expression", format[_EXECscript2,_pathtobank + "withdraw_from_bank.sqf",10,"ItemBriefcase100oz"]]], "1", "1"],
		["", [], "", -5, [["expression", ""]], "1", "0"],
		["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]
];

BuildMenu = [
["",true],
	["Show Build Limits",[],"", -5,[["expression",format[_EXECscript1,"custom\ext_base_building\show_build_radius_and_limit.sqf"]]],"1","1"],
	["Show Build Objects",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\ext_base_building\show_build_radius_and_limit_dialog.sqf"]]],"1","1"],
	["Show Plot Boundaries",[],"", -5,[["expression",format[_EXECscript1,"fixes\object_showPlotRadius.sqf"]]],"1","1"],
	["Ext Build Recipes",[],"", -5,[["expression",format[_EXECscript1,"custom\ext_base_building\buildRecipeBook\build_exterior_recipe_dialog.sqf"]]],"1","1"],
	["Int Build Recipes",[],"", -5,[["expression",format[_EXECscript1,"custom\ext_base_building\buildRecipeBook\build_interior_recipe_dialog.sqf"]]],"1","1"],
	["Remove Build Objects",[],"", -5,[["expression",format[_EXECscript1,"custom\ext_base_building\base_building_remove.sqf"]]],"1","1"],
	["Base Building Rules",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\help\serverRules\_base_building_rules_dialog.sqf"]]],"1","1"],
	["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]		
];

HelpMenu = [
["",true],
	["Server Info Menu >>", [], "#USER:ServerInfoMenu", -5, [["expression", ""]], "1", "1"],			
	["Server Rules Menu >>", [], "#USER:ServerRulesMenu", -5, [["expression", ""]], "1", "1"],			
	["Server Features Menu >>", [], "#USER:ServerFeaturesMenu", -5, [["expression", ""]], "1", "1"],			
	["Path Notes",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\help\serverInfo\patch_notes_dialog.sqf"]]],"1","1"],
	["About",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\help\serverInfo\about_dialog.sqf"]]],"1","1"],
	["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]		
];

TemplateMenu = [
["",true],
	["Test Dialog 50",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\template\template_textBoxx50_dialog.sqf"]]],"1","1"],
	["Test Dialog 100",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\template\template_textBoxx100_dialog.sqf"]]],"1","1"],
	["Test Dialog 150",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\template\template_textBoxx150_dialog.sqf"]]],"1","1"],
	["Test Program",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\template\example_with _script_call_dialog.sqf"]]],"1","1"],
	["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]		
];
ServerInfoMenu = [
["",true],
	["Piggd Server List",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\help\serverInfo\server_list_dialog.sqf"]]],"1","1"],
	["Server Admins",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\help\serverInfo\server_admins_dialog.sqf"]]],"1","1"],
	["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]		
];
ServerRulesMenu = [
["",true],
	["All Server Rules",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\help\serverRules\all_rules_dialog.sqf"]]],"1","1"],
	["General Rules",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\help\serverRules\general_rules_dialog.sqf"]]],"1","1"],
	["Base Building Rules",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\help\serverRules\base_building_rules_dialog.sqf"]]],"1","1"],
	["Mission Rules",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\help\serverRules\mission_rules_dialog.sqf"]]],"1","1"],
	["Player Name Rules",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\help\serverRules\name_rules_dialog.sqf"]]],"1","1"],
	["Inactivity Policy",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\help\serverRules\inactivity_policy_dialog.sqf"]]],"1","1"],
	["Claiming Vehicle Rules",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\help\serverRules\claiming_vehicle_dialog.sqf"]]],"1","1"],
	["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]		
];

ServerFeaturesMenu = [
["",true],
	["Sever Features Mod List",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\help\serverFeatures\mod_list_dialog.sqf"]]],"1","1"],
	["Server Mod Menu 1 >>", [], "#USER:ServerModMenu1", -5, [["expression", ""]], "1", "1"],			
	["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]		
];

ServerModMenu1 = [
["",true],
	["Admin Tools",[],"", -5,[["expression",format[_EXECscript1,"custom\textBoxx\help\serverFeatures\admin_tools_dialog.sqf"]]],"1","1"],
	["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]		
];

MapMenu = [
["",true],
	["Show Player Vehicle-Dead Body",[],"", -5,[["expression",format[_EXECscript3,"custom\playertools\show_vehicle_deadbody.sqf",true]]],"1","1"],
	["Hide Player Vehicle-Dead Body",[],"", -5,[["expression",format[_EXECscript3,"custom\playertools\show_vehicle_deadbody.sqf",false]]],"1","1"],
	["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]		
];
ChameleonMenu = [
["",true],
	["Chameleon Male Skins Menu",[],"", -5,[["expression",format[_EXECscript1,_pathtochameleon + "male_dialog.sqf"]]],"1","1"],
	["Chameleon Female Skins Menu",[],"", -5,[["expression",format[_EXECscript1,_pathtochameleon + "female_dialog.sqf"]]],"1","1"],
	["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]		
];

showCommandingMenu "#USER:playermenustart";