/*
Draws each of the icons defined in APP6_markerArray to the GPS panels.
Global 2D Array required to overcome parameters in a function->eventHandler

PARAMETERS:
	None	

RETURNS:
	NUMBER - 0: Successful execution
		   - -1: Failure to execute
*/

#include <DEFINE_MARKER_PARAMETERS.sqf>
#define DISPLAY_EXISTS !isNull (uiNamespace getVariable ["RscCustomInfoMiniMap", displayNull])
#define GPS ((uiNamespace getVariable ["RscCustomInfoMiniMap", displayNull]) displayCtrl 13301 controlsGroupCtrl 101)

waitUntil {DISPLAY_EXISTS;};

GPS ctrlAddEventHandler ["Draw", {
	{
		(_this # 0) drawIcon [
			MARKER_DIRECTORY,
			MARKER_COLOUR, 
			MARKER_POSITION,
			MARKER_SIZE_X,
			MARKER_SIZE_Y,
			MARKER_ROTATION, 
			MARKER_TEXT, 
			MARKER_TEXT_SHADOW,
			MARKER_TEXT_SIZE, 
			MARKER_TEXT_FONT, 
			MARKER_TEXT_POSITION];
	} forEach APP6_markerArray;
}];