/*
Convert iconSide in APP6_markerArray to form [R, G, B, A] for each subarray.

PARAMETERS:	
	None 

RETURNS:
	None
*/

#define SUBARRAY_SIDE _x select 2
#define UPDATE_SUBARRAY_COLOUR _x set [2, _currentSideColour]

private _currentSideColour = "";
{
	_currentSideColour = [SUBARRAY_SIDE] call APP6_fnc_getSideColour;
	UPDATE_SUBARRAY_COLOUR;
} forEach APP6_markerArray;