#include "definitions.sqf"

class DisplaytextBoxx50 {
	idd = TEXTBOXX50_DIALOG ;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] execVM 'custom\textBoxx\list_textBoxx50.sqf'";

	__EXEC( _xSpacing = 0.0075;  _ySpacing = 0.01;)
	__EXEC( _xInit = 12 * _xSpacing; _yInit = 18 * _ySpacing;)
	__EXEC( _windowWidth = 202; _windowHeight = 128;)
	__EXEC( _windowBorder = 1;)

	class controlsBackground {
		class Mainbackgrnd : HW_RscPicture {
			moving = true;
			idc = TEXTBOXX50_BCKGRND;
			x = 0.22; y =  -0.285;
			w = 0.94; h = 1.50;
			text = "\ca\ui\data\ui_background_controlers_ca.paa";
		};
		class RecruitUnitsTitle : HW_RscText {
		   	idc = TEXTBOXX50_TITLE;
			x = 0.255; y =  -0.200;
			w = __EVAL(80 * _xSpacing);
			h = __EVAL(3 * _ySpacing);
			colorText[] = Color_White;
			colorBackground[] = { 1, 1, 1, 0 };
			sizeEx = 0.04;
			text = "";
		};
	};

	class controls {
		class Unitlist: HW_RscGUIListBox {
			idc = TEXTBOXX50_UNITLIST;
			default = 1;
			x = 0.230; y =  -0.110;
			w = 0.675; h = 1.10;
			//lineSpacing = 0;
			colorSelect[] = {0, 0, 0, 0.9};
			colorSelect2[] = {0, 0, 0, 0.9};
			colorSelectBackground[] = {1, 1, 1, 0.3};
			colorSelectBackground2[] = {1, 1, 1, 0.9};
			onLBSelChanged = "";
			onLBDblClick = "";
			rowHeight = 0.025;
			soundSelect[] = {"\ca\ui\data\sound\mouse2", 0.09, 1};
			maxHistoryDelay = 10;
			canDrag = 0;
			xcolumn1 = "0.1f";
			xcolumn2 = "0.25f";
			xcolumn3 = "0.85f";		
		};
		class RecruitButton: HW_RscGUIShortcutButton {
			x = 0.448; y = 1.08;
			w = 0.225; h = 0.06;
			text = "textBoxx by piggd";
			onButtonClick = "closeDialog 0";
		};
	};
};
class DisplaytextBoxx100 {
	idd = TEXTBOXX100_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] execVM 'custom\textBoxx\list_textBoxx100.sqf'";

	__EXEC( _xSpacing = 0.0200;  _ySpacing = 0.01;)
	__EXEC( _xInit = 12 * _xSpacing; _yInit = 18 * _ySpacing;)
	__EXEC( _windowWidth = 202; _windowHeight = 128;)
	__EXEC( _windowBorder = 1;)

	class controlsBackground {
		class Mainbackgrnd : HW_RscPicture {
			moving = true;
			idc = TEXTBOXX100_BCKGRND;
			x = -0.150; y =  -0.285;
			w = 1.82; h = 1.50;
			text = "\ca\ui\data\ui_background_controlers_ca.paa";
		};
		class RecruitUnitsTitle : HW_RscText {
		   	idc = TEXTBOXX100_TITLE;
			x = -0.275; y =  -0.200;
			w = __EVAL(80 * _xSpacing);
			h = __EVAL(3 * _ySpacing);
			colorText[] = Color_White;
			colorBackground[] = { 1, 1, 1, 0 };
			sizeEx = 0.04;
			text = "";
		};
	};

	class controls {
		class Unitlist: HW_RscGUIListBox {
			idc = TEXTBOXX100_UNITLIST;
			default = 1;
			x = -0.140; y =  -0.110;
			w = 1.315; h = 1.10;
			//lineSpacing = 0;
			colorSelect[] = {0, 0, 0, 0.9};
			colorSelect2[] = {0, 0, 0, 0.9};
			colorSelectBackground[] = {1, 1, 1, 0.3};
			colorSelectBackground2[] = {1, 1, 1, 0.9};
			onLBSelChanged = "";
			onLBDblClick = "";
			rowHeight = 0.025;
			soundSelect[] = {"\ca\ui\data\sound\mouse2", 0.09, 1};
			maxHistoryDelay = 10;
			canDrag = 0;
			xcolumn1 = "0.1f";
			xcolumn2 = "0.25f";
			xcolumn3 = "0.85f";		
		};
		class RecruitButton: HW_RscGUIShortcutButton {
			x = 0.430; y = 1.08;
			w = 0.225; h = 0.06;
			text = "textBoxx by piggd";
			onButtonClick = "closeDialog 0";
		};
	};
};
class DisplaytextBoxx150 {
	idd = TEXTBOXX150_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] execVM 'custom\textBoxx\list_textBoxx150.sqf'";

	__EXEC( _xSpacing = 0.0240;  _ySpacing = 0.01;)
	__EXEC( _xInit = 12 * _xSpacing; _yInit = 18 * _ySpacing;)
	__EXEC( _windowWidth = 202; _windowHeight = 128;)
	__EXEC( _windowBorder = 1;)

	class controlsBackground {
		class Mainbackgrnd : HW_RscPicture {
			moving = true;
			idc = TEXTBOXX150_BCKGRND;
			x = -0.500; y =  -0.285;
			w = 2.65; h = 1.50;
			text = "\ca\ui\data\ui_background_controlers_ca.paa";
		};
		class RecruitUnitsTitle : HW_RscText {
		   	idc = TEXTBOXX150_TITLE;
			x = -0.478; y =  -0.200;
			w = __EVAL(80 * _xSpacing);
			h = __EVAL(3 * _ySpacing);
			colorText[] = Color_White;
			colorBackground[] = { 1, 1, 1, 0 };
			sizeEx = 0.04;
			text = "";
		};
	};

	class controls {
		class Unitlist: HW_RscGUIListBox {
			idc = TEXTBOXX150_UNITLIST;
			default = 1;
			x = -0.450; y =  -0.110;
			w = 1.900; h = 1.10;
			//lineSpacing = 0;
			colorSelect[] = {0, 0, 0, 0.9};
			colorSelect2[] = {0, 0, 0, 0.9};
			colorSelectBackground[] = {1, 1, 1, 0.3};
			colorSelectBackground2[] = {1, 1, 1, 0.9};
			onLBSelChanged = "";
			onLBDblClick = "";
			rowHeight = 0.025;
			soundSelect[] = {"\ca\ui\data\sound\mouse2", 0.09, 1};
			maxHistoryDelay = 10;
			canDrag = 0;
			xcolumn1 = "0.1f";
			xcolumn2 = "0.25f";
			xcolumn3 = "0.85f";		
		};
		class RecruitButton: HW_RscGUIShortcutButton {
			x = 0.400; y = 1.08;
			w = 0.225; h = 0.06;
			text = "textBoxx by piggd";
			onButtonClick = "closeDialog 0";
		};
	};
};
