/*
Validates all parameter values defined in 'APP6_markerArray'.
If value errors found then logs them in RPT and systemChat.

PARAMETERS:
	None	

RETURNS:
	NUMBER _return - 0: No type errors
				   - <0: Type errors found where {_return * -1} is the number of errors
*/

#define SUBARRAY _x
#define FILE_NAME ("APP6\Images\" + (_x select 0))
#define MARKER_NAME _x select 1	      
#define ICON_SIDE _x select 2		   
#define ICON_WIDTH _x select 3        
#define ICON_HEIGHT  _x select 4	       
#define ICON_ROTATION _x select 5       
#define ICON_TEXT _x select 6	  
#define ICON_TEXT_SHADOW _x select 7	   
#define ICON_TEXT_SIZE 	_x select 8   
#define ICON_TEXT_FONT 	_x select 9   
#define ICON_TEXT_POSITION _x select 10
#define FONTS ["Caveat", "EtelkaMonospacePro", "EtelkaMonospaceProBold", "EtelkaNarrowMediumPro", "LCD14", "LucidaConsoleB", "PuristaBold", "PuristaLight", "PuristaMedium", "PuristaSemibold", "RobotoCondensed", "RobotoCondensedBold", "RobotoCondensedLight", "TahomaB"]

private _return = 0;

{
	if (!fileExists (FILE_NAME)) then {
		systemChat format["APP6 - FILE DOES NOT EXIST: %1 in %2", FILE_NAME, SUBARRAY]; 
		diag_log format["APP6 - FILE DOES NOT EXIST: %1 in %2", FILE_NAME, SUBARRAY]; 
		_return = _return - 1;
	};

	if (getMarkerType (MARKER_NAME) isEqualTo "") then {
		systemChat format["APP6 - MARKER DOES NOT EXIST: %1 in %2", MARKER_NAME, SUBARRAY]; 
		diag_log format["APP6 - MARKER DOES NOT EXIST: %1 in %2", MARKER_NAME, SUBARRAY]; 
		_return = _return - 1;
	};

	if (([ICON_SIDE] call APP6_fnc_getSideColour) isEqualTo -1) then {
		systemChat format["APP6 - ICON_SIDE VALUE ERROR: %1 in %2", ICON_SIDE, SUBARRAY]; 
		diag_log format["APP6 - ICON_SIDE VALUE ERROR: %1 in %2", ICON_SIDE, SUBARRAY]; 
		_return = _return - 1;
	};

	if ((ICON_WIDTH) <= 0) then {
		systemChat format["APP6 - ICON_WIDTH VALUE ERROR: %1 in %2", ICON_WIDTH, SUBARRAY]; 
		diag_log format["APP6 - ICON_WIDTH VALUE ERROR: %1 in %2", ICON_WIDTH, SUBARRAY]; 
		_return = _return - 1;
	};

	if ((ICON_HEIGHT) <= 0) then {
		systemChat format["APP6 - ICON_HEIGHT VALUE ERROR: %1 in %2", ICON_HEIGHT, SUBARRAY]; 
		diag_log format["APP6 - ICON_HEIGHT VALUE ERROR: %1 in %2", ICON_HEIGHT, SUBARRAY]; 
		_return = _return - 1;
	};

	/*ICON ROTATION DOES NOT NEED VALIDATION OF VALUE, (-INF, INF) accepted*/
	
	/*ICON TEXT DOES NOT NEED VALIDATION OF VALUE, any string accepted*/

	if (!((ICON_TEXT_SHADOW) in [1, 2, 3])) then {
		systemChat format["APP6 - ICON_TEXT_SHADOW VALUE ERROR: %1 in %2", ICON_TEXT_SHADOW, SUBARRAY]; 
		diag_log format["APP6 - ICON_TEXT_SHADOW VALUE ERROR: %1 in %2", ICON_TEXT_SHADOW, SUBARRAY]; 
		_return = _return - 1;
	};

	/*ICON TEXT SIZE DOES NOT NEED VALIDATION OF VALUE, any NUMBER accepted*/

	if (!((ICON_TEXT_FONT) in FONTS)) then {
		systemChat format["APP6 - ICON_TEXT_FONT VALUE ERROR: %1 in %2", ICON_TEXT_FONT, SUBARRAY]; 
		diag_log format["APP6 - ICON_TEXT_FONT VALUE ERROR: %1 in %2", ICON_TEXT_FONT, SUBARRAY]; 
		_return = _return - 1;
	};

	if (!((ICON_TEXT_POSITION) in ["left", "center", "right"])) then {
		systemChat format["APP6 - ICON_TEXT_POSITION VALUE ERROR: %1 in %2", ICON_TEXT_POSITION, SUBARRAY]; 
		diag_log format["APP6 - ICON_TEXT_POSITION VALUE ERROR: %1 in %2", ICON_TEXT_POSITION, SUBARRAY]; 
		_return = _return - 1;
	};
} forEach APP6_markerArray;

_return;