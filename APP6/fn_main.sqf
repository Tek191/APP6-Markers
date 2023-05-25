/*
Does not run on dedicated server or headless client.
Manages type and value validation for icon definition.
Adds Event Handlers to manage:
-Briefing map
-Ingame map
-Zeus map (see fn_mainPostBriefing)
-Spectator map (see fn_mainPostBriefing)
-Team Switch map (see fn_mainPostBriefing)
'APP6_main_return' is used to add the remaining Event Handlers in 'fn_mainPostBriefing'
if no errors occur.

PARAMETERS:
	None	

RETURNS:
	None
*/

if (!hasInterface) exitWith {};

#define NO_DEFINED_MARKERS count APP6_markerArray isEqualTo 0

APP6_main_return = -1;

/*
APP6_markerArray
0  FILE NAME 		   - Filename of file in folder 'Images'
1  MARKER NAME 	       - Marker name of marker used ingame
2  ICON SIDE		   - ("BLUFOR", "REDFOR", "GREENFOR", "UNKNOWN")
3  ICON WIDTH	       - Size in meters
4  ICON HEIGHT 	       - Size in meters
5  ICON ROTATION       - 0 -> Upright, any other value rotates the image [0, 360]
6  ICON TEXT 		   - Text to be overlayed with icon
7  ICON TEXT SHADOW	   - 0 -> None, 1 -> Text Shadow, 2 -> Text Shadow and Icon Outline if ICON_ROTATION is 0
8  ICON TEXT SIZE 	   - Recommend 0.03
9  ICON TEXT FONT 	   - https://community.bistudio.com/wiki/FXY_File_Format#Available_Fonts
10 ICON TEXT POSITION  - Position of text with reference to icon -> ("left", "center", "right")
*/
APP6_markerArray = [
					[".paa", "marker_0", "BLUFOR", 100, 100, 0, "", 1, 0.03, "PuristaBold", "right"]
					];

if (NO_DEFINED_MARKERS) exitWith {systemChat "No markers defined, APP6 stopped";};

private _return_validateMarkerParametersTypes = call APP6_fnc_validateMarkerParametersTypes;
if (_return_validateMarkerParametersTypes < 0) exitWith {systemChat format["%1 Type Errors found in APP6_markerArray, APP6 stopped", _return_validateMarkerParametersTypes * -1];};

private _return_validateMarkerParametersValues = call APP6_fnc_validateMarkerParametersValues;
if (_return_validateMarkerParametersValues < 0) exitWith {systemChat format["%1 Value Errors found in APP6_markerArray, APP6 stopped", _return_validateMarkerParametersValues * -1];};

call APP6_fnc_updateSideNameToRGBA;

APP6_main_return = 0; /*Defined before {call APP6_fnc_drawImagesAsIconsInBriefing;} to ensure 'initPlayerLocal.sqf' recieves updated value of '0' and not previous value '-1'*/

if (!didJIP) then {call APP6_fnc_drawImagesAsIconsInBriefing;}; /*Prevent JIPs from being stuck in waitUntil on briefing*/