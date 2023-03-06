Written by Tek
Many thanks to IndigoFox and MattySmith22 for holding my hand through writing this

Version 1.0.0
06/03/2023
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
					["242_ABCT_1_A_1_b_mech_inf_cannon_wheeled_platoon.paa", "marker_1", "BLUFOR", 50, 50, 0, "", 0, 0.03, "PuristaBold", "right"],
					["242_ABCT_1_A_2_b_mech_inf_cannon_wheeled_platoon.paa", "marker_2", "BLUFOR", 100, 100, 0, "", 0, 0.03, "PuristaBold", "right"],
					["242_ABCT_1_A_3_b_mech_inf_cannon_wheeled_platoon.paa", "marker_3", "BLUFOR", 200, 200, 0, "", 0, 0.03, "PuristaBold", "right"]
				];

Ensure that the last (or only) element does not have a ',' at the end.
It's advised to use empty markers ingame. 
If you wish to visualize the icon in the editor then place a rectangle the size of your icon ontop of your empty marker.


To generate your own APP6 icons you can use https://spatialillusions.com/unitgenerator/
The file needs to be a 'paa' and of 2^n x 2^m dimensions.