Written by Tek
Many thanks to IndigoFox and MattySmith22 for holding my hand through writing this

Version 1.0.1
15/03/2023

REQUIRES: CBA_A3
------------------------------------------------------------------------------------

Ensure you have the following files and folders in your mission directory:
<ROOT>/initPlayerLocal.sqf
<ROOT>/description.ext
<ROOT>/APP6

Inside of '<ROOT>/APP6/Images' you will need to place every icon you wish to use.

Inside of '<ROOT>/APP6/fn_main.sqf' you will find a global variable 'APP6_markerArray'.
This is where you will define every icon you want to use ingame.
It is in the format of a two dimensional array with each subarray being:
[FILENAME, MARKER NAME, ICON SIDE, ICON WIDTH, ICON HEIGHT, ICON ROTATION, ICON TEXT, ICON TEXTSHADOW, ICON TEXTSIZE, ICON TEXTFONT, ICON TEXTPOSITION]

For example to define three separate markers:

APP6_markerArray = [
					["infantryPlatoon.paa", "marker_0", "BLUFOR", 50, 50, 0, "", 0, 0.03, "PuristaBold", "right"],
					["helicopter.paa", "marker_1", "BLUFOR", 100, 100, 0, "", 0, 0.03, "PuristaBold", "right"],
					["enemyBase.paa", "marker_2", "OPFOR", 200, 200, 0, "", 0, 0.03, "PuristaBold", "right"]
				];

Ensure that the last (or only) element does not have a ',' at the end.
It's advised to use empty markers ingame. 
If you wish to visualize the icon in the editor then place a rectangle the size of your icon ontop of your empty marker.


To generate your own APP6 icons you can use https://spatialillusions.com/unitgenerator/
The file needs to be a 'paa' and of 2^n x 2^m dimensions.