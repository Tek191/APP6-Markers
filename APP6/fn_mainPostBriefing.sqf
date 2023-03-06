/*
Adds the remaining Event Handlers that 'fn_main' did not.
If APP6_fnc_main terminates with errors then drawing is not executed.
Executed (by default in 'initPlayerLocal.sqf') after the briefing is completed in order to prevent an infinite waitUntil condition on multiple displays.

PARAMETERS:
	None	

RETURNS:
	None
*/

if (APP6_main_return isEqualTo -1) exitWith {};

call APP6_fnc_drawImagesAsIconsIngame;
call APP6_fnc_drawImagesAsIconsInGPS;
[] spawn {call APP6_fnc_drawImagesAsIconsInSpectator;}; //SPAWN REQUIRED FOR OTHER CODE TO CONTINUE IN INITPLAYERLOCAL.SQF BEFORE SPECTATOR DISPLAY EXISTS
[] spawn {call APP6_fnc_drawImagesAsIconsInZeus;}; //SPAWN REQUIRED FOR OTHER CODE TO CONTINUE IN INITPLAYERLOCAL.SQF BEFORE ZEUS DISPLAY EXISTS
[] spawn {call APP6_fnc_drawImagesAsIconsInTeamSwitch;}; //SPAWN REQUIRED FOR OTHER CODE TO CONTINUE IN INITPLAYERLOCAL.SQF BEFORE TEAMSWITCH DISPLAY EXISTS
[] spawn {call APP6_fnc_drawImagesAsIconsInCamera;}; //SPAWN REQUIRED FOR OTHER CODE TO CONTINUE IN INITPLAYERLOCAL.SQF BEFORE CAMERA DISPLAY EXISTS