/*
Validates all parameter types defined in 'APP6_markerArray'.
If type errors found then logs them in RPT and systemChat.

PARAMETERS:
	None	

RETURNS:
	NUMBER _return - 0: No type errors
				   - <0: Type errors found where {_return * -1} is the number of errors
*/

#define SUBARRAY _x
#define FILE_NAME _x select 0
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

private _return = 0;

{
	if (typeName (FILE_NAME) isNotEqualTo "STRING") then {
		systemChat format["APP6 - FILE_NAME TYPE ERROR: %1 in %2", FILE_NAME, SUBARRAY]; 
		diag_log format["APP6 - FILE_NAME TYPE ERROR: %1 in %2", FILE_NAME, SUBARRAY]; 
		_return = _return - 1;
	};

	if (typeName (MARKER_NAME) isNotEqualTo "STRING") then {
		systemChat format["APP6 - MARKER_NAME TYPE ERROR: %1 in %2", MARKER_NAME, SUBARRAY]; 
		diag_log format["APP6 - MARKER_NAME TYPE ERROR: %1 in %2", MARKER_NAME, SUBARRAY]; 
		_return = _return - 1;
	};

	if (typeName (ICON_SIDE) isNotEqualTo "STRING") then {
		systemChat format["APP6 - ICON_SIDE TYPE ERROR: %1 in %2", ICON_SIDE, SUBARRAY]; 
		diag_log format["APP6 - ICON_SIDE TYPE ERROR: %1 in %2", ICON_SIDE, SUBARRAY]; 
		_return = _return - 1;
	};

	if (typeName (ICON_WIDTH) isNotEqualTo "SCALAR") then {
		systemChat format["APP6 - ICON_WIDTH TYPE ERROR: %1 in %2", ICON_WIDTH, SUBARRAY]; 
		diag_log format["APP6 - ICON_WIDTH TYPE ERROR: %1 in %2", ICON_WIDTH, SUBARRAY]; 
		_return = _return - 1;
	};

	if (typeName (ICON_HEIGHT) isNotEqualTo "SCALAR") then {
		systemChat format["APP6 - ICON_HEIGHT TYPE ERROR: %1 in %2", ICON_HEIGHT, SUBARRAY]; 
		diag_log format["APP6 - ICON_HEIGHT TYPE ERROR: %1 in %2", ICON_HEIGHT, SUBARRAY]; 
		_return = _return - 1;
	};

	if (typeName (ICON_ROTATION) isNotEqualTo "SCALAR") then {
		systemChat format["APP6 - ICON_ROTATION TYPE ERROR: %1 in %2", ICON_ROTATION, SUBARRAY]; 
		diag_log format["APP6 - ICON_ROTATION TYPE ERROR: %1 in %2", ICON_ROTATION, SUBARRAY]; 
		_return = _return - 1;
	};

	if (typeName (ICON_TEXT) isNotEqualTo "STRING") then {
		systemChat format["APP6 - ICON_TEXT TYPE ERROR: %1 in %2", ICON_TEXT, SUBARRAY]; 
		diag_log format["APP6 - ICON_TEXT TYPE ERROR: %1 in %2", ICON_TEXT, SUBARRAY]; 
		_return = _return - 1;
	};

	if (typeName (ICON_TEXT_SHADOW) isNotEqualTo "SCALAR") then {
		systemChat format["APP6 - ICON_TEXT_SHADOW TYPE ERROR: %1 in %2", ICON_TEXT_SHADOW, SUBARRAY]; 
		diag_log format["APP6 - ICON_TEXT_SHADOW TYPE ERROR: %1 in %2", ICON_TEXT_SHADOW, SUBARRAY]; 
		_return = _return - 1;
	};

	if (typeName (ICON_TEXT_SIZE) isNotEqualTo "SCALAR") then {
		systemChat format["APP6 - ICON_TEXT_SIZE TYPE ERROR: %1 in %2", ICON_TEXT_SIZE, SUBARRAY]; 
		diag_log format["APP6 - ICON_TEXT_SIZE TYPE ERROR: %1 in %2", ICON_TEXT_SIZE, SUBARRAY]; 
		_return = _return - 1;
	};

	if (typeName (ICON_TEXT_FONT) isNotEqualTo "STRING") then {
		systemChat format["APP6 - ICON_TEXT_FONT TYPE ERROR: %1 in %2", ICON_TEXT_FONT, SUBARRAY]; 
		diag_log format["APP6 - ICON_TEXT_FONT TYPE ERROR: %1 in %2", ICON_TEXT_FONT, SUBARRAY]; 
		_return = _return - 1;
	};

	if (typeName (ICON_TEXT_POSITION) isNotEqualTo "STRING") then {
		systemChat format["APP6 - ICON_TEXT_POSITION TYPE ERROR: %1 in %2", ICON_TEXT_POSITION, SUBARRAY]; 
		diag_log format["APP6 - ICON_TEXT_POSITION TYPE ERROR: %1 in %2", ICON_TEXT_POSITION, SUBARRAY]; 
		_return = _return - 1;
	};
} forEach APP6_markerArray;

_return;